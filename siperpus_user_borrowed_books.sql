SELECT u.id, u.nama, GROUP_CONCAT(b.judul ORDER BY b.id) AS daftar_buku
FROM user u
JOIN peminjaman p ON u.id = p.anggota_id
JOIN buku b ON p.buku_id = b.id
GROUP BY u.id, u.nama;
