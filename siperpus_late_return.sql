SELECT u.id, u.nama, SUM(p.denda) AS total_denda
FROM user u
JOIN peminjaman p ON u.id = p.anggota_id
WHERE p.tanggal_kembali > p.tanggal_batas_kembali
GROUP BY u.id, u.nama;