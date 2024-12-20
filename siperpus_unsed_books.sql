SELECT b.id, b.judul
FROM buku b
LEFT JOIN peminjaman p ON b.id = p.buku_id
WHERE p.buku_id IS NULL;


