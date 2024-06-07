CREATE TABLE akun_admin (
    id_akunadmin         VARCHAR(5) NOT NULL,
    username             VARCHAR(20) NOT NULL,
    kata_sandi           VARCHAR(15) NOT NULL,
    homepage_id_homepage INTEGER NOT NULL
);

ALTER TABLE akun_admin ADD CONSTRAINT akun_admin_pk PRIMARY KEY ( id_akunadmin );

CREATE TABLE booking_hotel (
    tanggal_datang             DATE NOT NULL,
    tanggal_keluar             DATE NOT NULL,
    status                     INTEGER NOT NULL,
    paket_kamar_paket_kamar_id INTEGER NOT NULL,
    user_user_id               INTEGER NOT NULL --fk
);


CREATE TABLE detail_transaksi (
    transaksi_transaksi_id   INTEGER NOT NULL,
    wishlist_wishlist_id     INTEGER NOT NULL,
    pengunjung_pengunjung_id INTEGER NOT NULL
);

CREATE TABLE detail_wisata (
    wisata_id_wisata                     VARCHAR(10) NOT NULL, 
    fasilitas_wisata_fasilitas_wisata_id INTEGER NOT NULL
);



CREATE TABLE faq (
    pertanyaan           TEXT NOT NULL,
    jawaban              TEXT NOT NULL,
    homepage_id_homepage INTEGER NOT NULL,
    faq_id               SERIAL NOT NULL
);


ALTER TABLE faq ADD CONSTRAINT faq_pk PRIMARY KEY ( faq_id );

CREATE TABLE fasilitas_wisata (
    nama_fasilitas      TEXT NOT NULL,
    fasilitas_wisata_id SERIAL NOT NULL
);

ALTER TABLE fasilitas_wisata ADD CONSTRAINT fasilitas_wisata_pk PRIMARY KEY ( fasilitas_wisata_id );

CREATE TABLE homepage (
    id_homepage   INTEGER NOT NULL,
    nama_homepage VARCHAR(30) NOT NULL
);


ALTER TABLE homepage ADD CONSTRAINT homepage_pk PRIMARY KEY ( id_homepage );

CREATE TABLE image_slider (
    image_slider         BYTEA NOT NULL,
    homepage_id_homepage INTEGER NOT NULL,
    image_slider_id      SERIAL NOT NULL
);



ALTER TABLE image_slider ADD CONSTRAINT image_slider_pk PRIMARY KEY ( image_slider_id );

CREATE TABLE jabatan (
    id_jabatan   VARCHAR(10) NOT NULL,
    nama_jabatan VARCHAR(35) NOT NULL
);

ALTER TABLE jabatan ADD CONSTRAINT jabatan_pk PRIMARY KEY ( id_jabatan );

CREATE TABLE jenis_kamar (
    id_jeniskamar   VARCHAR(5) NOT NULL,
    nama_jeniskamar VARCHAR(20) NOT NULL,
    foto            BYTEA NOT NULL
);

ALTER TABLE jenis_kamar ADD CONSTRAINT jenis_kamar_pk PRIMARY KEY ( id_jeniskamar );

CREATE TABLE "Kritik_&_Saran" (
    kritik              TEXT,
    saran               TEXT,
    "Kritik_&_Saran_ID" SERIAL NOT NULL,
    user_user_id        INTEGER NOT NULL
);

ALTER TABLE "Kritik_&_Saran" ADD CONSTRAINT "Kritik_&_Saran_PK" PRIMARY KEY ( "Kritik_&_Saran_ID" );

CREATE TABLE membership (
    nama_membership VARCHAR(30) NOT NULL,
    membership_id   INTEGER NOT NULL
);

ALTER TABLE membership ADD CONSTRAINT membership_pk PRIMARY KEY ( membership_id );

CREATE TABLE newsletter (
    judul                TEXT NOT NULL,
    tanggal              DATE NOT NULL,
    link_berita          TEXT NOT NULL,
    homepage_id_homepage INTEGER NOT NULL,
    deskripsi            TEXT,
    newsletter_id        SERIAL NOT NULL,
    foto                 BYTEA NOT NULL
);


ALTER TABLE newsletter ADD CONSTRAINT newsletter_pk PRIMARY KEY ( newsletter_id );

CREATE TABLE nomor_darurat (
    nomor_telepon        VARCHAR(14) NOT NULL,
    nama_kontak          VARCHAR(20) NOT NULL,
    homepage_id_homepage INTEGER NOT NULL,
    nomor_darurat_id     SERIAL NOT NULL
);


ALTER TABLE nomor_darurat ADD CONSTRAINT nomor_darurat_pk PRIMARY KEY ( nomor_darurat_id );

CREATE TABLE paket_kamar (
    nomor_kamar               VARCHAR(5) NOT NULL,
    harga_paket               NUMERIC NOT NULL,
    deskripsi_paket           TEXT NOT NULL,
    status                    INTEGER NOT NULL,
    jenis_kamar_id_jeniskamar VARCHAR(5) NOT NULL,
    paket_kamar_id            SERIAL NOT NULL
);

ALTER TABLE paket_kamar ADD CONSTRAINT paket_kamar_pk PRIMARY KEY ( paket_kamar_id );

CREATE TABLE paket_makanan (
    id_paketmakanan   VARCHAR(10) NOT NULL,
    nama_paketmakanan VARCHAR(20) NOT NULL,
    harga             NUMERIC NOT NULL,
    deskripsi_paket   TEXT NOT NULL,
    wisata_id_wisata  VARCHAR(10) NOT NULL
);

ALTER TABLE paket_makanan ADD CONSTRAINT paket_makanan_pk PRIMARY KEY ( id_paketmakanan );

CREATE TABLE pengunjung (
    nama_pengunjung   VARCHAR(70) NOT NULL,
    tanggal_reservasi DATE NOT NULL,
    domisili          VARCHAR(25) NOT NULL,
    pengunjung_id     SERIAL NOT NULL,
    community_mode    VARCHAR(15) NOT NULL
);

ALTER TABLE pengunjung ADD CONSTRAINT pengunjung_pk PRIMARY KEY ( pengunjung_id );

CREATE TABLE penilaian (
    review             TEXT NOT NULL,
    rating_tempat      INTEGER NOT NULL,
    wisata_id_wisata   VARCHAR(10) NOT NULL,
    penilaian_id       SERIAL NOT NULL,
    foto               BYTEA,
    user_user_id       INTEGER NOT NULL
);

ALTER TABLE penilaian ADD CONSTRAINT penilaian_pk PRIMARY KEY ( penilaian_id );

CREATE TABLE staff (
    nama_staff         VARCHAR(70) NOT NULL,
    nomor_telepon      VARCHAR(14) NOT NULL,
    email              VARCHAR(50) NOT NULL,
    domisili           VARCHAR(30) NOT NULL,
    hire_date          DATE NOT NULL,
    tanggal_lahir      DATE NOT NULL,
    jabatan_id_jabatan VARCHAR(10) NOT NULL,
    staff_id           SERIAL NOT NULL
);

ALTER TABLE staff ADD CONSTRAINT staff_pk PRIMARY KEY ( staff_id );

ALTER TABLE staff ADD CONSTRAINT staff_nomor_telepon_un UNIQUE ( nomor_telepon );

CREATE TABLE tiket (
    nama_tiket       VARCHAR(50) NOT NULL,
    harga_tiket      NUMERIC NOT NULL,
    wisata_id_wisata VARCHAR(10) NOT NULL,
    tiket_id         SERIAL NOT NULL
);

ALTER TABLE tiket ADD CONSTRAINT tiket_pk PRIMARY KEY ( tiket_id );

CREATE TABLE transaksi (
    tgl_transaksi      DATE NOT NULL,
    kuantitas          INTEGER NOT NULL,
    transaksi_id       SERIAL NOT NULL,
    voucher_voucher_id INTEGER NOT NULL,
    user_user_id       INTEGER NOT NULL
);

ALTER TABLE transaksi ADD CONSTRAINT transaksi_pk PRIMARY KEY ( transaksi_id );

CREATE TABLE umkm (
    nama_umkm        VARCHAR(30) NOT NULL,
    deskripsi        TEXT NOT NULL,
    foto_header      BYTEA NOT NULL,
    foto_produk      BYTEA NOT NULL,
    lokasi           TEXT NOT NULL,
    wisata_id_wisata VARCHAR(10) NOT NULL,
    umkm_id          SERIAL NOT NULL
);

ALTER TABLE umkm ADD CONSTRAINT umkm_pk PRIMARY KEY ( umkm_id );

CREATE TABLE "User" (
    nama_lengkap             VARCHAR(70) NOT NULL,
    email                    VARCHAR(50) NOT NULL,
    kata_sandi               VARCHAR(15) NOT NULL,
    nomor_telepon            VARCHAR(14) NOT NULL,
    kota                     VARCHAR(25) NOT NULL,
    provinsi                 VARCHAR(25) NOT NULL,
    poin                     INTEGER NOT NULL,
    status                   INTEGER NOT NULL,
	foto_profil              BYTEA,
    user_id                  SERIAL NOT NULL,
    membership_membership_id INTEGER NOT NULL
);

ALTER TABLE "User" ADD CONSTRAINT user_pk PRIMARY KEY ( user_id );

CREATE TABLE voucher (
    deskripsi            TEXT NOT NULL,
    homepage_id_homepage INTEGER NOT NULL,
    harga_voucher        NUMERIC NOT NULL,
    voucher_id           SERIAL NOT NULL,
    gambar               BYTEA NOT NULL
);


ALTER TABLE voucher ADD CONSTRAINT voucher_pk PRIMARY KEY ( voucher_id );

CREATE TABLE wisata (
    id_wisata        VARCHAR(10) NOT NULL,
    nama_wisata      VARCHAR(50) NOT NULL,
    deskripsi_wisata TEXT NOT NULL,
    alamat_wisata    TEXT NOT NULL,
    foto_wisata      BYTEA NOT NULL
);

ALTER TABLE wisata ADD CONSTRAINT wisata_pk PRIMARY KEY ( id_wisata );

CREATE TABLE wishlist (
    wishlist_id    SERIAL NOT NULL,
    tiket_tiket_id INTEGER NOT NULL
);

ALTER TABLE wishlist ADD CONSTRAINT wishlist_pk PRIMARY KEY ( wishlist_id );

ALTER TABLE akun_admin
    ADD CONSTRAINT akun_admin_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE booking_hotel
    ADD CONSTRAINT booking_hotel_paket_kamar_fk FOREIGN KEY ( paket_kamar_paket_kamar_id )
        REFERENCES paket_kamar ( paket_kamar_id );

ALTER TABLE booking_hotel
    ADD CONSTRAINT booking_hotel_user_fk FOREIGN KEY ( user_user_id )
        REFERENCES "User" ( user_id );

ALTER TABLE detail_transaksi
    ADD CONSTRAINT detail_transaksi_pengunjung_fk FOREIGN KEY ( pengunjung_pengunjung_id )
        REFERENCES pengunjung ( pengunjung_id );

ALTER TABLE detail_transaksi
    ADD CONSTRAINT detail_transaksi_transaksi_fk FOREIGN KEY ( transaksi_transaksi_id )
        REFERENCES transaksi ( transaksi_id );

ALTER TABLE detail_transaksi
    ADD CONSTRAINT detail_transaksi_wishlist_fk FOREIGN KEY ( wishlist_wishlist_id )
        REFERENCES wishlist ( wishlist_id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE detail_wisata
    ADD CONSTRAINT detail_wisata_fasilitas_wisata_fk FOREIGN KEY ( fasilitas_wisata_fasilitas_wisata_id )
        REFERENCES fasilitas_wisata ( fasilitas_wisata_id );

ALTER TABLE detail_wisata
    ADD CONSTRAINT detail_wisata_wisata_fk FOREIGN KEY ( wisata_id_wisata )
        REFERENCES wisata ( id_wisata );

ALTER TABLE faq
    ADD CONSTRAINT faq_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE image_slider
    ADD CONSTRAINT image_slider_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE "Kritik_&_Saran"
    ADD CONSTRAINT "Kritik_&_Saran_User_FK" FOREIGN KEY ( user_user_id )
        REFERENCES "User" ( user_id );

ALTER TABLE newsletter
    ADD CONSTRAINT newsletter_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE nomor_darurat
    ADD CONSTRAINT nomor_darurat_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE paket_kamar
    ADD CONSTRAINT paket_kamar_jenis_kamar_fk FOREIGN KEY ( jenis_kamar_id_jeniskamar )
        REFERENCES jenis_kamar ( id_jeniskamar );

ALTER TABLE paket_makanan
    ADD CONSTRAINT paket_makanan_wisata_fk FOREIGN KEY ( wisata_id_wisata )
        REFERENCES wisata ( id_wisata );

ALTER TABLE penilaian
    ADD CONSTRAINT penilaian_user_fk FOREIGN KEY ( user_user_id )
        REFERENCES "User" ( user_id );

ALTER TABLE penilaian
    ADD CONSTRAINT penilaian_wisata_fk FOREIGN KEY ( wisata_id_wisata )
        REFERENCES wisata ( id_wisata );

ALTER TABLE staff
    ADD CONSTRAINT staff_jabatan_fk FOREIGN KEY ( jabatan_id_jabatan )
        REFERENCES jabatan ( id_jabatan );

ALTER TABLE tiket
    ADD CONSTRAINT tiket_wisata_fk FOREIGN KEY ( wisata_id_wisata )
        REFERENCES wisata ( id_wisata );

ALTER TABLE transaksi
    ADD CONSTRAINT transaksi_user_fk FOREIGN KEY ( user_user_id )
        REFERENCES "User" ( user_id );

ALTER TABLE transaksi
    ADD CONSTRAINT transaksi_voucher_fk FOREIGN KEY ( voucher_voucher_id )
        REFERENCES voucher ( voucher_id );

ALTER TABLE umkm
    ADD CONSTRAINT umkm_wisata_fk FOREIGN KEY ( wisata_id_wisata )
        REFERENCES wisata ( id_wisata );

ALTER TABLE "User"
    ADD CONSTRAINT user_membership_fk FOREIGN KEY ( membership_membership_id )
        REFERENCES membership ( membership_id );

ALTER TABLE voucher
    ADD CONSTRAINT voucher_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE wishlist
    ADD CONSTRAINT wishlist_tiket_fk FOREIGN KEY ( tiket_tiket_id )
        REFERENCES tiket ( tiket_id );

ALTER TABLE "User"
ALTER COLUMN foto_profil SET DEFAULT ' ';

-- insert value

INSERT INTO public.membership(
	nama_membership, membership_id)
	VALUES  ('Membership Aktif', 1),
	('Membership TIdak Aktif', 0);

INSERT INTO public."User"(
	nama_lengkap, email, kata_sandi, nomor_telepon, kota, provinsi, poin, status, foto_profil, user_id, membership_membership_id)
	VALUES  ('Rayhan Sidabutar','sdbtrrey@gmail.com', 'sdbtrey22', '082121221122', 'Parapat', 'Sumatera Utara', 0, 1, ' ', 1, 1),
	   ('Ruth Rajagukguk', 'ruthhhh@gmail.com', 'rajagkruth', '081212212112', 'Medan', 'Sumatera Utara', 1, 1, ' ', 2, 1),
	   ('Soke Bahtera', 'sokebahtera@gmail.com', 'soke456', '081298345906', 'Jember', 'Jawa Timur', 1, 1, '', 3, 0);


INSERT INTO public.pengunjung(
	nama_pengunjung, tanggal_reservasi, domisili, pengunjung_id, community_mode)
	VALUES ('Rayhan Sidabutar', '2023-05-01', 'Lumajang', 1, 'Aktif '),
	('Ruth Rajagukguk', '2023-02-14', 'Banyuwangi', 2, 'Tidak Aktif '),
	('Rahajeng Sukma Maulia', '2023-05-16', 'Denpasar', 3, 'Aktif ');

INSERT INTO public.jenis_kamar(
	id_jeniskamar, nama_jeniskamar, foto)
	VALUES ('SR01', 'Suite Room', ' '), 
	('MT01', 'Melati I', ' '),
	('MT02', 'Melati II', ' '),
	('MT02B', 'Melati IIDB', ' '),
	('MT03', 'Melati IV', ' '),
	('DL01', 'Dahlia I', ' '),
	('DL02', 'Dahlia II', ' '),
	('DL02B', 'Dahlia IIDB', ' '),
	('MR01', 'Mawar I', ' '),
	('MR02', 'Mawar II', ' '),
	('MR02B', 'Mawar IIDB', ' ');


INSERT INTO public.paket_kamar(
	nomor_kamar, harga_paket, deskripsi_paket, status, jenis_kamar_id_jeniskamar, paket_kamar_id)
	VALUES ('01', 1635000, 'Fasilitas: kapasitas 6 orang, 3 kamar, single bed, kamar mandi, air panas, ruang tamu, dapur, kulkas, garasi', 1, 'SR01', 1),
	   ('01', 445000, 'Fasilitas: kapasitas 2 orang, single bed, televisi, wifi, kamar mandi, air panas, teras kamar', 0, 'MT01', 2),
	   ('01', 385000, 'Fasilitas: kapasitas 2 orang, single bed, televisi, wifi, kamar mandi, air panas, teras kamar', 1, 'MT02', 3),
	   ('02', 385000, 'Fasilitas: kapasitas 2 orang, single bed, televisi, wifi, kamar mandi, air panas, teras kamar', 1, 'MT02', 4),
	   ('03', 385000, 'Fasilitas: kapasitas 2 orang, single bed, televisi, wifi, kamar mandi, air panas, teras kamar', 1, 'MT02', 5);


INSERT INTO public.booking_hotel(
	tanggal_datang, tanggal_keluar, status, paket_kamar_paket_kamar_id, user_user_id)
	VALUES ('2023-06-03', '2023-06-05', 1,'01', 1),
	('2023-06-09', '2023-06-10', 1,'02', 2),
	('2023-06-11', '2023-06-12', 1,'03', 1);

INSERT INTO public."Kritik_&_Saran"(
	kritik, saran, "Kritik_&_Saran_ID", user_user_id)
	VALUES ('Terkadang, kolam renang menjadi terlalu penuh sehingga sulit untuk berenang atau menikmati fasilitas dengan nyaman', 'Manajemen kolam renang perlu diperhatikan lagi mengenai pengaturan kapasitas pengunjung dengan lebih baik', 1, 1),
		   ('Tempat beristirahat yang tidak memadai', 'lebih banyak lagi tempat untuk beristirahat para pengunjung atau bisa juga sediakan fasilitas penitipan barang yang aman dan terawat dengan baik.', 2, 2),
		   ('Sediakan papan peringatan yang jelas dan lengkap untuk menginformasikan kondisi air, kedalaman kolam, dan potensi bahaya lainnya', 'Tingkatkan pengawasan untuk menjaga ketertiban dan mencegah perilaku yang merusak', 3, 3),
		   ('Beberapa fasilitas toilet dan kamar mandi di sekitar kolam pantai mungkin kurang memadai', 'Lakukan perbaikan dan pemeliharaan rutin terhadap fasilitas toilet dan kamar mandi', 4, 2),
		   ('Terdapat sampah yang berserakan di sekitar tempat wisata, seperti plastik, botol, dan kemasan makanan', 'menyediakan tempat sampah yang cukup dan memperkuat kesadaran pengunjung tentang pentingnya menjaga kebersihan. Sediakan petugas kebersihan yang melakukan pembersihan secara teratur untuk menjaga keindahan alam dan kebersihan tempat wisata', 5, 3);

INSERT INTO public.wisata(
	id_wisata, nama_wisata, deskripsi_wisata, alamat_wisata, foto_wisata)
	VALUES ('A01','Rembangan','Selamat datang di Wisata Rembangan Jember !
		    Wisata Rembangan juga memiliki pesona alam, seperti perkebunan teh yang hijau dan pepohonan yang rindang. Pengunjung dapat menjelajahi area ini dengan berjalan kaki atau menggunakan sepeda. Nikmati udara segar, hiruk pikuk alam, dan keindahan panorama alam yang menghamparkan pemandangan yang memukau.Wisata Rembangan juga menawarkan fasilitas rekreasi dan tempat peristirahatan, seperti area piknik, tempat duduk, dan warung makanan. Pengunjung dapat bersantai sambil menikmati suasana alam yang tenang dan menikmati hidangan lokal yang lezat.Jadi, bagi pecinta alam dan keindahan alam yang damai, Wisata Rembangan di Jember adalah tempat yang tepat untuk dikunjungi. Dengan keindahan alamnya yang mempesona, tempat ini menawarkan pengalaman wisata yang tak terlupakan bagi para pengunjungnya.',
		   'WMCR+H5G, Darungan, Kemuning Lor, Kec. Arjasa, Kabupaten Jember, Jawa Timur (68191)',' '),
	   	   ('A02', 'Watu Ulo', 'Selamat datang di Wisata Watu Ulo Jember !
		   Pantai Watu Ulo terkenal karena batu karang besar yang menjulang tinggi di tengah laut, menyerupai kepala ular yang membentang di atas permukaan air. "Watu Ulo" sendiri dalam bahasa Jawa berarti batu ular. Pantai Watu Ulo menawarkan pemandangan yang memukau dengan paduan pasir putih, air laut yang biru, dan batu karang yang spektakuler. Para pengunjung dapat menikmati panorama alam yang indah, mengambil foto-foto yang menakjubkan, atau sekadar bersantai di tepi pantai.',
		   'Sumberrejo, Kec. Ambulu, Kabupaten Jember, Jawa Timur (68172)',' '),
		   ('A03', 'Patemon', 'Selamat datang di Wisata Patemon Jember !
		   Pemandian Patemon Tanggul menjadi salah satu destinasi wisata ramah anak dan keluarga di Jember yang recomended untuk anda explore. Liburan bersama keluarga di akhir pekan memang menyenangkan, apalagi dengan menikmati keseruan berwisata. Ketika anda berwisata di Jember, cobalah explore destinasi terbaiknya bersama keluarga untuk liburan tak terlupakan.',
		   'Tanggul, Kabupaten Jember, Jawa Timur (68155)',' '),
		   ('A04', 'Kebon Agung', 'Selamat datang di Wisata Kebon Agung Jember ! Kolam Renang Kebon Agung Jember merupakan salah satu kolam renang yang ada di Jember dengan tiket masuk yang lumayan murah. Objek wisata Pemandian Kebon Agung ini memiliki beberapa kolam renang yang sangat nyaman serta aman untuk para pengunjung. Di sana terdapat dua buah kolam renang yang sumber mata airnya berasal dari sumber air Watu Remuk.',
		   'RMPH+V77, Gebang Taman, Kb. Agung, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131',' ');


INSERT INTO public.paket_makanan(
	id_paketmakanan, nama_paketmakanan, harga, deskripsi_paket, wisata_id_wisata)
	VALUES ('C1', 'Ceria 1', 33000, 'Menu: Nasi putih, Sup kimlo, Ayam goreng, Telur dadar, Mie goreng, Es buah/Cocktail, Air mineral', 'A01'),
		   ('C2', 'Ceria 2', 33000, 'Menu: Nasi putih, Capjay special, Kebuk goreng, Telur goreng utuh, Mie goreng, Es buah/Cocktail, Air mineral', 'A01'),
		   ('C3', 'Ceria 3', 33000, 'Menu: Nasi putih, Sup sayur spesial, Ikan goreng tepung, Telur bumbu bali, Cah sayur sawi, Es buah/Cocktail, Air mineral', 'A01');


INSERT INTO public.umkm(
	nama_umkm, deskripsi, foto_header, foto_produk, lokasi, wisata_id_wisata, umkm_id)
	VALUES  ('Cafe Buah Naga Rembangan','Agrowisata Rembangan terkenal dengan hamparan tanaman buah naga yang ditanam di lahan seluas lima hektar. Buah naga di kebun ini dikelola oleh Dinas Pertanian Jember dengan sistem pertanian organik tanpa bahan kimia. Jadi, tidak perlu khawatir soal kualitas buahnya.', ' ', ' ', 'Rembangan,Kabupaten Jember, Jawa Timur','A01',1),
			('Rembangan Dairy Farm','Rembangan Dairy Farm ini merupakan salah satu peternakan Argoindustri yang terkenal di daerah Rembangan. Peternakan ini menghasilkan produk susu perah asli. Rembangan Dairy Farm ini juga dapat digunakan sebagai pilihan wisata edukasi keluarga. Karena wisata ini juga menyediakan beberapa wahana yang disukai anak-anak', ' ', ' ', 'WMCR+H5G, Darungan, Kemuning Lor, Kec. Arjasa, Kabupaten Jember, Jawa Timur (68191)','A01',2);


INSERT INTO public.tiket(
	nama_tiket, harga_tiket, wisata_id_wisata, tiket_id)
	VALUES ( 'Tiket Rembangan', 10000, 'A01', 1),
	( 'Tiket Patemon', 15000, 'A02', 2),
	('Tiket Watu Ulo', 10000, 'A03', 3);

INSERT INTO public.fasilitas_wisata(
	nama_fasilitas, fasilitas_wisata_id)
	VALUES ('Parkir',1),
		   ('Warung makan',2),
		   ('Musholla',3),
		   ('Toilet',4),
		   ('Area Bermain',5);


INSERT INTO public.detail_wisata(
	wisata_id_wisata, fasilitas_wisata_fasilitas_wisata_id)
	VALUES ('A01',1),
		   ('A01',2),
		   ('A01',3),
		   ('A02',1),
		   ('A02',3);

INSERT INTO public.wishlist(
	wishlist_id, tiket_tiket_id)
	VALUES ('1', 1),
	('2', 2),
	('3', 3);


INSERT INTO public.homepage(id_homepage, nama_homepage)
VALUES ('1', 'Homepage Awal'),
	('2', 'Homepage UMKM'),
	('3', 'Homepage Penginapan'),
	('4', 'Homepage Wisata'),
	('5', 'Homepage User');

INSERT INTO public.newsletter(
	judul, tanggal, link_berita, homepage_id_homepage, deskripsi, newsletter_id, foto)
	VALUES ('Wisata Rembangan Jember Dilengkapi dengan Restoran, Hotel, dan Taman Bermain', '2023-06-3', 'https://yoursay.suara.com/ulasan/2022/05/11/075013/wisata-rembangan-jember-dilengkapi-dengan-restoran-hotel-dan-taman-bermain', '1', 'Khusus liburan hari raya tahun ini, Wisata Rembangan bebas karcis. Pemerintah Kabupaten Jember pada liburan hari raya tahun ini menggratiskan tiket masuk ke empat tempat wisata, salah satunya Pantai Papuma, Pantai Watu Ulo dan Wisata Rembangan. Dalam selebaran yang disebar, bebas karcis ke empat tempat wisata ini berlaku hingga tanggal 18 Mei 2022', '1', ' '),
	('Warga Jember Tolak Hotel Wisata Rembangan Jadi Pusat Karantina Covid-19', '2020-03-31', 'https://regional.kompas.com/read/2020/03/31/16130311/warga-jember-tolak-hotel-wisata-rembangan-jadi-pusat-karantina-covid-19', '1',  'JEMBER, KOMPAS.com – Warga Desa Kemuning Lor, Kecamatan Arjasa, Jember, memasang spanduk penolakan hotel wisata rembangan menjadi pusat karantina Covid-19, Senin (30/3/2020) malam. Warga khawatir tertular penyakit tersebut. Sebab, air yang digunakan untuk kebutuhan sehari-hari berasal dari wisata rembangan', 2, ' '),
	('Ada Menara Sampai Camping Ground di Wisata Baru Rembangan', '2023-02-5', 'https://radarjember.jawapos.com/berita-jember/05/02/2023/ada-menara-sampai-camping-ground-di-wisata-baru-rembangan/', '1', 'JEMBER, RADARJEMBER.ID – Meski wisata Agrokita masih dalam tahap percobaan pembukaan, tetapi wisata ini sudah banyak dikunjungi.  Baik wisatawan lokal maupun luar Jember. Fasilitas penunjang yang disediakan menjadi daya tariknya', 3, ' ');


INSERT INTO public.nomor_darurat(
	nomor_telepon, nama_kontak, homepage_id_homepage)
	VALUES ( '081232728242', 'Pak Yasin',1),
('110', 'Polisi',1),
('113','Pemadam Kebakaran',1);


INSERT INTO public.akun_admin(
	id_akunadmin, username, kata_sandi, homepage_id_homepage)
	VALUES ('ADM01', 'admin', 'admin', 1);


INSERT INTO public.faq(
	pertanyaan, jawaban, homepage_id_homepage, faq_id)
	VALUES ('Apakah diperbolehkan membawa makanan dan minuman dari luar','Membawa makanan dan minuman dari luar diperbolehkan selama tidak membuang sampah sembarangan. TETAP MENJAGA KEBERSIHAN',1,1),
		   ('Dimanakah pemesanan tiket wisata dapat dilakukan?','Selain di lokasi wisata, pemesanan tiket wisata dapat dilakukan melalui aplikasi resmi JT-Apps.',1,2),
		   ('Kapan tiket wisata dapat di pesan?','Anda dapat melakukan pemesanan tiket wisata mulai H-30 menit atau saat ingin memasuki tempat wisata dengan batas waktu pembayaran yang telah ditentukan.',1,3),
		   ('Apakah saya perlu melakukan proses check-in?','Ya perlu, anda dapat melakukan Check-In di Lokasi wisata. Jika anda melakukan pembelian tiket wisata di JT-Apps, anda dapat menggunakan fitur pemesanan yang tersedia di aplikasi JT-Apps.',1,4),
		   ('Berapa lamakah batas waktu pembayaran?','Anda hanya dapat melakukan pembayaran saat di lokasi wisata.',1, 5),
		   ('Bagaimana cara membatakan pesanan?','Loket Dilakukan di loket wisata yang melayani pembatalan tiket; Mengisi dan menandatangani formulir pembatalan yang telah di sediakan; Membawa Identitas asli; Aplikasi JT-Apps Anda dapat melakukan pembatalan tiket sebelum h-2 pemesanan',1,6);


INSERT INTO public.image_slider(
	image_slider, homepage_id_homepage, image_slider_id)
	VALUES (' ', 1, 1);


INSERT INTO public.voucher(
	deskripsi, homepage_id_homepage, harga_voucher, voucher_id, gambar)
	VALUES ('Rembangan Gift', 1 , '10000', 1, ' '),
	('Patemon Gift', 1, '5000', 2, ' '),
	('Watu Ulo Gift', 1, '7000', 3, ' '),
	('Kebon Agung Gift',1, '5000', 4, ' ');


INSERT INTO public.transaksi(
	tgl_transaksi, kuantitas, transaksi_id, voucher_voucher_id, user_user_id)
	VALUES ('2023-06-12', 3, 1, 2, 1),
	('2023-06-12', 4, 2, 1, 2);


INSERT INTO public.detail_transaksi(
	transaksi_transaksi_id, wishlist_wishlist_id, pengunjung_pengunjung_id)
	VALUES (1, 2, 1),
	       (2, 1, 2);


INSERT INTO public.penilaian(
	review, rating_tempat, wisata_id_wisata, penilaian_id, foto, user_user_id)
	VALUES ('Wisata Rembangan saat ini sudah lebih menarik. Pemandangannya tetap indah,udaranya masih sejuk,masih dengan deretan cemara yang sudah ada sejak dulu. Ditambah lagi beberapa spot untuk berfoto. Kolam renang lebih bersih dan rapi.',5,'A01',1, ' ',1),
		   ('Ombaknya lebih besar daripada di papuma, ikonnya batu yang berbentuk ular tidak dapat terlihat karena ombak yang lumayan besar akhirnya nggak boleh foto di atas batu itu. Pantainya bagus tapi agak kotor. Tiket masuknya lebih murah daripada papuma',4,'A02',2,' ',2),
		   ('Tersedia 4 kolam dengan berbagai kedalaman. Ada yang cocok untuk balita sampai dengan yang pro renang (kedalaman 4m). Air kolam seger,tidak berbau kaporit. HTM RP.7500,- (dewasa) dan RP5.000,-(anak-anak)',4,'A03',3,' ',3), 
		   ('Pemandian multi generasi, dan masih berlanjut sampai generasi sekarang. Tarif hanya naik sedikit saja. Anak 7.500 dan dewasa 10.000, Semoga masih eksis untuk generasi berikutnya.',4,'A04',4, ' ', 1);


INSERT INTO public.jabatan(
	id_jabatan, nama_jabatan)
	VALUES ('CEO01', 'CEO'),
	('ADM02', 'Admin'),
	('CFO03', 'CFO');


INSERT INTO public.staff(
	nama_staff, nomor_telepon, email, domisili, hire_date, tanggal_lahir, jabatan_id_jabatan, staff_id)
	VALUES ('Kartika Indah',  '081331611825', 'kartikaindah2003@gmail.com', 'Halmahera', '2019-12-10', '2003-11-08', 'ADM02', 1),
	( 'Irfan M Zein',  '08522087572', 'zeinganteng@gmail.com', 'Sumbersari', '2010-08-11', '2004-12-02', 'CFO03', 2),
	('Bashori', '086526372683', 'bashorigg@gmail.com', 'Tegal Boto', '2015-01-29', '1990-11-05', 'CEO01', 3);


