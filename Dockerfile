FROM python:3.12.4

# ติดตั้ง Cloud SQL Proxy
ADD https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 /cloud_sql_proxy
RUN chmod +x /cloud_sql_proxy

# คัดลอกไฟล์ requirements และโค้ดโปรเจกต์
COPY ./requirements.txt /requirements.txt
COPY ./careconnect /careconnect

# ตั้งค่า working directory
WORKDIR /careconnect

# สร้าง virtual environment และติดตั้ง dependencies
RUN python -m venv /py && \
    /py/bin/pip install -r /requirements.txt && \
    adduser --disabled-password --no-create-home django-user

# ตั้งค่า PATH
ENV PATH="/py/bin:$PATH"

# เปลี่ยนเป็นผู้ใช้ที่ไม่ใช่ root
USER django-user

# รัน Cloud SQL Proxy และ Django
# รัน Cloud SQL Proxy, migrate และ Django
CMD /cloud_sql_proxy -instances="polished-scope-431703-b4:us-central1:careconnect-db=tcp:5432" & \
    sleep 5 && \ 
    python manage.py migrate && \
    python manage.py runserver 0.0.0.0:$PORT


