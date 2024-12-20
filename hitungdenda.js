class Buku {
    constructor(judul, penulis) {
      this.judul = judul;
      this.penulis = penulis;
    }
  }
  
  function konversiTanggal(tanggalStr) {
    const parts = tanggalStr.split("-");
    return new Date(parts[2], parts[1] - 1, parts[0]);
  }
  
  function hitungDenda(tanggalKembali, tanggalPinjam, daftarBuku, batasMaxPinjaman, dendaHarian) {
    const tglKembali = konversiTanggal(tanggalKembali);
    const tglPinjam = konversiTanggal(tanggalPinjam);
  

    tglKembali.setHours(0, 0, 0, 0);
    tglPinjam.setHours(0, 0, 0, 0);
  
    const selisihHari = (tglKembali - tglPinjam) / (1000 * 3600 * 24)+1;
  
    let hasilDenda = [];
    let totalDenda = 0;
  
    daftarBuku.forEach((buku) => {
      let keterlambatan = 0;
  
      if (selisihHari > batasMaxPinjaman) {
        keterlambatan = selisihHari - batasMaxPinjaman;
      }
  
      const denda = keterlambatan > 0 ? keterlambatan * dendaHarian : 0;
      hasilDenda.push({ buku: buku.judul, keterlambatan, denda });
  
      totalDenda += denda;
    });
  
    return { hasilDenda, totalDenda };
  }
  
  function ambilInput() {
    const tanggalPinjam = prompt("Masukkan tanggal pinjam (format: DD-MM-YYYY):");
    const tanggalKembali = prompt("Masukkan tanggal kembali (format: DD-MM-YYYY):");
    const jumlahBuku = parseInt(prompt("Berapa banyak buku yang dipinjam?"));
    const batasMaxPinjaman = 14;
    const dendaHarian = 1000;
  
    let daftarBuku = [];
    for (let i = 0; i < jumlahBuku; i++) {
      const judul = prompt(`Masukkan judul buku ke-${i + 1}:`);
      const penulis = prompt(`Masukkan penulis buku ke-${i + 1}:`);
      daftarBuku.push(new Buku(judul, penulis));
    }
  
    const { hasilDenda, totalDenda } = hitungDenda(tanggalKembali, tanggalPinjam, daftarBuku, batasMaxPinjaman, dendaHarian);
  
    console.log("Denda per buku yang harus dibayar:");
    hasilDenda.forEach((item) => {
      if (item.keterlambatan > 0) {
        console.log(`Buku: ${item.buku}, Keterlambatan: ${item.keterlambatan} hari, Denda: Rp ${item.denda}`);
      } else {
        console.log(`Buku: ${item.buku}, Tidak Ada Denda`);
      }
    });
  
    console.log(`Total Denda: Rp ${totalDenda}`);
  }
  
  ambilInput();