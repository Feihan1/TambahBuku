INSERT INTO kategori (id, nama)
VALUES
(1, 'Fiksi'),
(2, 'Non-Fiksi'),
(3, 'Teknologi'),
(4, 'Sains'),
(5, 'Sejarah');


INSERT INTO user (id, nama, alamat, no_ktp, no_hp, email, tanggal_terdaftar)
VALUES
(1, 'Andi Wijaya', 'Jl. Merdeka No. 123, Jakarta', '1234567890123456', '081234567890', 'andi.wijaya@email.com', '2024-01-01'),
(2, 'Budi Santoso', 'Jl. Sudirman No. 456, Bandung', '9876543210987654', '081298765432', 'budi.santoso@email.com', '2024-01-02'),
(3, 'Citra Lestari', 'Jl. Diponegoro No. 789, Surabaya', '5678901234567890', '082134567890', 'citra.lestari@email.com', '2024-01-03'),
(4, 'Dewi Kartika', 'Jl. Ahmad Yani No. 101, Medan', '2345678901234567', '083145678901', 'dewi.kartika@email.com', '2024-01-04'),
(5, 'Eko Prasetyo', 'Jl. Gatot Subroto No. 202, Yogyakarta', '6789012345678901', '084156789012', 'eko.prasetyo@email.com', '2024-01-05');


INSERT INTO buku (id, judul, pengarang, penerbit, isbn, tahun_terbit, jumlah_tersedia, kategori_id)
VALUES
(1, 'Cerita dari Masa Depan', 'John Doe', 'Penerbit Fiksi', '9781234567890', 2020, 5, 1), 
(2, 'Sejarah Dunia Modern', 'Jane Smith', 'Media Sejarah', '9789876543210', 2021, 4, 5), 
(3, 'Panduan Lengkap MySQL', 'Alice Brown', 'Teknologi Publishing', '9785678901234', 2019, 3, 3), 
(4, 'Eksperimen Sains Sederhana', 'Robert Martin', 'Penerbit Sains', '9783456789012', 2022, 2, 4), 
(5, 'HTML dan CSS untuk Pemula', 'Emily White', 'Tekno Web', '9782345678901', 2020, 6, 3), 
(6, 'Teori Evolusi Modern', 'David Johnson', 'Sains Nusantara', '9788765432109', 2018, 1, 4), 
(7, 'Cybersecurity Essentials', 'Mark Lee', 'IT Security Press', '9784567890123', 2021, 2, 3), 
(8, 'Revolusi Industri 4.0', 'Sophia Taylor', 'Inovasi Non-Fiksi', '9786789012345', 2023, 3, 2), 
(9, 'ReactJS untuk Pemula', 'William Garcia', 'Web Development Press', '9788901234567', 2022, 4, 3), 
(10, 'Kisah Kerajaan Kuno', 'Linda Wilson', 'Sejarah Kita', '9780987654321', 2021, 5, 5); 


INSERT INTO peminjaman (id, anggota_id, buku_id, tanggal_pinjam, tanggal_batas_kembali, tanggal_kembali, denda)
VALUES
-- User 1
(1, 1, 1, '2024-12-01', '2024-12-15', '2024-12-10', 0),
(2, 1, 2, '2024-12-01', '2024-12-15', '2024-12-13', 0),
(3, 1, 3, '2024-12-01', '2024-12-15', '2024-12-14', 0),

-- User 2
(4, 2, 4, '2024-12-02', '2024-12-16', '2024-12-12', 0),
(5, 2, 5, '2024-12-02', '2024-12-16', '2024-12-15', 0),
(6, 2, 6, '2024-12-02', '2024-12-16', '2024-12-16', 0),

-- User 3
(7, 3, 7, '2024-12-03', '2024-12-17', '2024-12-22', 5000), -- Terlambat 5 hari
(8, 3, 8, '2024-12-03', '2024-12-17', '2024-12-15', 0),
(9, 3, 9, '2024-12-03', '2024-12-17', '2024-12-16', 0);
