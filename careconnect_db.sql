--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-10-13 16:47:28 +07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3740 (class 0 OID 19805)
-- Dependencies: 222
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_group (id, name) VALUES (3, 'patient');
INSERT INTO public.auth_group (id, name) VALUES (2, 'doctor');
INSERT INTO public.auth_group (id, name) VALUES (1, 'admin');


--
-- TOC entry 3742 (class 0 OID 19813)
-- Dependencies: 224
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3738 (class 0 OID 19799)
-- Dependencies: 220
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3744 (class 0 OID 19819)
-- Dependencies: 226
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$870000$8stfdutr19bTVVOc42UVdC$/Vt+WrYha97XHgw9+tFj/dP/dGCYnM7fjNJyhMUQzxs=', NULL, false, 'Eliander', '', '', '', false, true, '2024-10-13 16:01:14.226398+07');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (3, 'pbkdf2_sha256$870000$A9JeZNkCjL8IYcX5neHpSp$QGpQPAl5hjq1RL8R23YSbnoV9y2x5bvaLuoutkYrsN4=', NULL, false, 'Serena', '', '', '', false, true, '2024-10-13 16:01:43.849325+07');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (4, 'pbkdf2_sha256$870000$kmqEnPzMEWBAA8J6tOW1Xr$BkoYK3kU9KV3jQ7tb4Yq2wuR0qJ4JP9mlw0BgdynDvk=', NULL, false, 'Kairos', '', '', '', false, true, '2024-10-13 16:02:05.837826+07');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (5, 'pbkdf2_sha256$870000$ghmRgdxTvkWKe62m8Zzdwm$nfMwHRGL6rCXbbDk2egu3nYAZMVUZsTJx9tY+6+R/vw=', NULL, false, 'Zephyr', '', '', '', false, true, '2024-10-13 16:02:33.575175+07');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (7, 'pbkdf2_sha256$870000$0GuZa8EfyRFCvfosiRMgeb$jUVfdQHcTU3ouqglyVbursoSe6UJEG0tjEaCAEuS6YI=', NULL, false, 'Darius', '', '', '', false, true, '2024-10-13 16:12:12.846863+07');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (8, 'pbkdf2_sha256$870000$lk3DlKE8tWI4KwFdgvt41Y$vRSIYcWKDcSv+UnzCGVJY4cbRgimYE4sIJz6yyz6ntc=', NULL, false, 'Lysander', '', '', '', false, true, '2024-10-13 16:12:57.707824+07');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (9, 'pbkdf2_sha256$870000$OiJxvW3aJ4Tp0Z57vfWxaa$ZR8nhYcq0UYd8UkGmnDdHD0k6nuQAv6/1aiUu/Ys0MA=', NULL, false, 'Alex', '', '', '', false, true, '2024-10-13 16:13:57.731375+07');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (10, 'pbkdf2_sha256$870000$K41vaZSoLCIqkIJHT3epPM$kmNC8/nB1JfRidgsKj1pfG9TTZCmfggzS55OYYA5wIM=', '2024-10-13 16:39:30.446383+07', false, 'Jeena', '', '', '', false, true, '2024-10-13 16:18:18.447447+07');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (6, 'pbkdf2_sha256$870000$1ulqID1yzHpwCJvaZ50m3a$F/s36j7d41or1pHZR7JBb2bcf6Gw+AM38yXJmqH1eU4=', '2024-10-13 16:39:45.985257+07', false, 'Drakrit', '', '', '', false, true, '2024-10-13 16:03:17.805183+07');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (11, 'pbkdf2_sha256$870000$q4isKjYBmsvZXB9mXueYxa$dCrOmISmSX7CbUsznRvChGCPy5PAvWd2zYFetpYDkLs=', '2024-10-13 16:42:58.815912+07', true, 'Tanggy', '', '', '', true, true, '2024-10-13 16:42:01.731977+07');


--
-- TOC entry 3746 (class 0 OID 19827)
-- Dependencies: 228
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (1, 2, 2);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (2, 3, 2);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (3, 4, 2);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (4, 5, 2);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (5, 6, 2);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (6, 7, 3);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (7, 8, 3);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (8, 9, 3);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (9, 10, 3);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (10, 11, 1);


--
-- TOC entry 3748 (class 0 OID 19833)
-- Dependencies: 230
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3750 (class 0 OID 19891)
-- Dependencies: 232
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3736 (class 0 OID 19791)
-- Dependencies: 218
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 3734 (class 0 OID 19783)
-- Dependencies: 216
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3757 (class 0 OID 19953)
-- Dependencies: 239
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('vdkq2z0yfrh48gokznn4jwlrfgn6a222', '.eJxVjEEOgjAQRe_StWk6A7bFpXvO0Mx0BosaSCisjHdXEha6_e-9_zKJtrWkreqSRjEXA2BOvyNTfui0E7nTdJttnqd1Gdnuij1otf0s-rwe7t9BoVq-tWL01DqMwHQmbgUhMwyuRdWA4hWDCx4i5aFhJkEflTvQrgkuojTm_QEKRzgc:1szv7q:FbJxs0P1NcAVF1ZtuAaSdP3U0w6lbWz3ge7XDkHBfhc', '2024-10-27 16:42:58.839964+07');


--
-- TOC entry 3752 (class 0 OID 19920)
-- Dependencies: 234
-- Data for Name: doctor_doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.doctor_doctor (id, first_name, last_name, gender, hire_date, contact_number, account_id) VALUES (1, 'Eliander', 'Cruz', 'M', '2024-10-12', '0952513965', 2);
INSERT INTO public.doctor_doctor (id, first_name, last_name, gender, hire_date, contact_number, account_id) VALUES (2, 'Serena', 'Dawn', 'F', '2024-10-10', '0989849089', 3);
INSERT INTO public.doctor_doctor (id, first_name, last_name, gender, hire_date, contact_number, account_id) VALUES (3, 'Kairos', 'Vale', 'LGBT', '2024-10-11', '0869587645', 4);
INSERT INTO public.doctor_doctor (id, first_name, last_name, gender, hire_date, contact_number, account_id) VALUES (4, 'Zephyr', 'Gray', 'F', '2024-10-12', '0981127654', 5);
INSERT INTO public.doctor_doctor (id, first_name, last_name, gender, hire_date, contact_number, account_id) VALUES (5, 'Drakrit', 'North', 'M', '2024-10-03', '0978543458', 6);


--
-- TOC entry 3754 (class 0 OID 19933)
-- Dependencies: 236
-- Data for Name: medicine_medicine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (1, 'Paracinol', 100, 'Paracinol is used to relieve pain and reduce fever.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (2, 'Ibuprox', 50, 'Ibuprox is an anti-inflammatory drug used to treat pain and swelling.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (3, 'Amoxymax', 200, 'Amoxymax is an antibiotic used for bacterial infections.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (4, 'Cetamol', 150, 'Cetamol is commonly used for headache and fever relief.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (5, 'Dexofen', 80, 'Dexofen is used to treat moderate pain and inflammation.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (6, 'Aspirion', 60, 'Aspirion is an aspirin used to reduce fever and pain.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (7, 'Metronid', 120, 'Metronid is an antibiotic to treat bacterial and parasitic infections.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (8, 'Naprofast', 75, 'Naprofast is a pain reliever for muscle aches and arthritis.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (9, 'Azithroz', 90, 'Azithroz is a broad-spectrum antibiotic for bacterial infections.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (10, 'Floxacinol', 110, 'Floxacinol is used to treat infections of the respiratory tract.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (11, 'Claritop', 130, 'Claritop is an antibiotic used for skin infections.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (12, 'Zolipax', 40, 'Zolipax is used to treat insomnia and anxiety disorders.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (13, 'Pantinex', 95, 'Pantinex is used to treat acid reflux and stomach ulcers.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (14, 'Loratix', 85, 'Loratix is an antihistamine used for allergy relief.');
INSERT INTO public.medicine_medicine (id, name, quantity, detail) VALUES (15, 'Ranitax', 70, 'Ranitax is used to reduce stomach acid and treat ulcers.');


--
-- TOC entry 3756 (class 0 OID 19941)
-- Dependencies: 238
-- Data for Name: patient_patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.patient_patient (id, first_name, last_name, id_number, gender, contact_number, status, account_id) VALUES (1, 'Darius', 'North', '1200587677836', 'M', '0986785678', 'I', 7);
INSERT INTO public.patient_patient (id, first_name, last_name, id_number, gender, contact_number, status, account_id) VALUES (2, 'Lysander', 'Blake', '1187647588767', 'F', '0987886744', 'P', 8);
INSERT INTO public.patient_patient (id, first_name, last_name, id_number, gender, contact_number, status, account_id) VALUES (3, 'Alex', 'Parker', '1198787674333', 'F', '0989849089', 'F', 9);
INSERT INTO public.patient_patient (id, first_name, last_name, id_number, gender, contact_number, status, account_id) VALUES (4, 'Jeena', 'Kerdkaew', '1100201717830', 'F', '0952513965', 'I', 10);


--
-- TOC entry 3759 (class 0 OID 19963)
-- Dependencies: 241
-- Data for Name: treatment_appointment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.treatment_appointment (id, date, "time", detail, created_at, doctor_id, patient_id) VALUES (1, '2024-10-30', '10:00:00', 'Purpose of Visit: Routine Check-up / Follow-up Consultation', '2024-10-13 16:23:27.651116+07', 5, 4);
INSERT INTO public.treatment_appointment (id, date, "time", detail, created_at, doctor_id, patient_id) VALUES (2, '2024-10-11', '11:00:00', 'Purpose of Visit: Annual Physical Examination', '2024-10-13 16:25:58.953633+07', 5, 4);


--
-- TOC entry 3761 (class 0 OID 19971)
-- Dependencies: 243
-- Data for Name: treatment_patientmedicine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.treatment_patientmedicine (id, quantity, take_per_dose, time_to_take, detail, notification, created_at, doctor_id, medicine_id, patient_id) VALUES (1, 2, 1, 'PC_BID', 'Used to relieve pain, reduce inflammation, and lower fever.', true, '2024-10-13 16:19:21.064322+07', 5, 2, 4);
INSERT INTO public.treatment_patientmedicine (id, quantity, take_per_dose, time_to_take, detail, notification, created_at, doctor_id, medicine_id, patient_id) VALUES (2, 1, 1, 'HS', 'Used medication for relieving pain and reducing fever.', true, '2024-10-13 16:19:21.077463+07', 5, 4, 4);
INSERT INTO public.treatment_patientmedicine (id, quantity, take_per_dose, time_to_take, detail, notification, created_at, doctor_id, medicine_id, patient_id) VALUES (3, 3, 1, 'PC_TID', 'Taken for headaches, muscle pain, back pain, toothaches, and fever from colds or flu.', true, '2024-10-13 16:22:49.671859+07', 5, 1, 4);
INSERT INTO public.treatment_patientmedicine (id, quantity, take_per_dose, time_to_take, detail, notification, created_at, doctor_id, medicine_id, patient_id) VALUES (5, 1, 1, 'HS', '-', false, '2024-10-13 16:25:58.943653+07', 5, 8, 4);
INSERT INTO public.treatment_patientmedicine (id, quantity, take_per_dose, time_to_take, detail, notification, created_at, doctor_id, medicine_id, patient_id) VALUES (4, 3, 1, 'AC_TID', 'Taken for headaches, muscle pain, back pain, toothaches, and fever from colds or flu.', false, '2024-10-13 16:23:27.642182+07', 5, 1, 4);


--
-- TOC entry 3763 (class 0 OID 19979)
-- Dependencies: 245
-- Data for Name: treatment_treatment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3769 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3770 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3771 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- TOC entry 3772 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 9, true);


--
-- TOC entry 3773 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);


--
-- TOC entry 3774 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3775 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3776 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- TOC entry 3777 (class 0 OID 0)
-- Dependencies: 215
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- TOC entry 3778 (class 0 OID 0)
-- Dependencies: 233
-- Name: doctor_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctor_doctor_id_seq', 5, true);


--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 235
-- Name: medicine_medicine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medicine_medicine_id_seq', 15, true);


--
-- TOC entry 3780 (class 0 OID 0)
-- Dependencies: 237
-- Name: patient_patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patient_patient_id_seq', 4, true);


--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 240
-- Name: treatment_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatment_appointment_id_seq', 2, true);


--
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 242
-- Name: treatment_patientmedicine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatment_patientmedicine_id_seq', 5, true);


--
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 244
-- Name: treatment_treatment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatment_treatment_id_seq', 1, false);


-- Completed on 2024-10-13 16:47:29 +07

--
-- PostgreSQL database dump complete
--

