from django.db import models
from doctor.models import Doctor
from patient.models import Patient
from medicine.models import Medicine

from datetime import datetime, time


# Create your models here.
class Treatment(models.Model):
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    detail = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

class PatientMedicine(models.Model):
    class TimeToTake(models.TextChoices):
        AC_TID = "AC_TID", "Ante Cibum Three Times a Day"   # เช้า กลางวัน เย็น (ก่อนกินข้าว)
        PC_TID = "PC TID", "Post Cibum Three Times a Day"   # เช้า กลางวัน เย็น (หลังกินข้าว)
        AC_BID = "AC BID", "Ante Cibum Twice a Day"         # เช้า เย็น (ก่อนกินข้าว)
        PC_BID = "PC BID", "Post Cibum Twice a Day"         # เช้า เย็น (หลังกินข้าว)
        AC_Noon = "AC Noon", "Ante Cibum at Noon"           # กลางวัน (ก่อนกินข้าว)
        PC_Noon = "PC Noon", "Post Cibum at Noon"           # กลางวัน (หลังกินข้าว)
        HS = "HS", "Hora Somni"                             # ก่อนนอน

    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    medicine = models.ForeignKey(Medicine, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    take_per_dose = models.IntegerField()
    time_to_take = models.CharField(
        max_length=10,
        choices=TimeToTake.choices,
        default=TimeToTake.AC_TID  # Set a default value if desired
    )
    detail = models.TextField(null=True, blank=True)
    notification = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)

    def highlight(self):
        """Dynamically check if the current time is near the time to take this medicine."""
        now = datetime.now().time()

        # Define time ranges for morning, noon, evening, and night
        morning_start = time(6, 0)
        morning_end = time(9, 0)
        noon_start = time(11, 0)
        noon_end = time(14, 0)
        evening_start = time(17, 0)
        evening_end = time(20, 0)
        night_start = time(21, 0)
        night_end = time(23, 59)

        # Determine the highlight logic based on the time to take
        if self.time_to_take in ['AC_TID', 'PC_TID', 'AC_BID', 'PC_BID']:  # Morning or evening
            return morning_start <= now <= morning_end or evening_start <= now <= evening_end
        elif self.time_to_take in ['AC_Noon', 'PC_Noon']:  # Noon
            return noon_start <= now <= noon_end
        elif self.time_to_take == 'HS':  # Before bedtime (9 PM - midnight)
            return night_start <= now <= night_end
        return False

class Appointment(models.Model):
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    date = models.DateField()
    time = models.TimeField()
    detail = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
