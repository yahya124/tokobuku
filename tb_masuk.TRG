TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER masuk_kendaraan AFTER INSERT ON tb_masuk\n FOR EACH ROW BEGIN\n UPDATE tb_lahan\n SET sisa_parkir = sisa_parkir - NEW.jumlah_kendaraan\n WHERE\n id_lahan = NEW.id_lahan;\n END'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci'
created=157240646839
