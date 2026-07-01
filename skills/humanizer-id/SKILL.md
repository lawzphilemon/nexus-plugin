---
name: humanizer-id
description: Use when writing or finalizing Bahasa Indonesia article content (NEX-F, NEX-Fn, or /humanize). Applies the NEXUS humanizer filter — Layer 0 SQEG protections, register selection, 34 AI-pattern fixes, and a 15-point self-check — so output reads like a competent human writer, not AI, while preserving E-E-A-T signals.
---

# Humanizer Knowledge — Bahasa Indonesia
Versi 2.0 | Untuk digunakan sebagai knowledge file Gemini Gems

---

## Tujuan

Dokumen ini adalah filter humanizer untuk semua output artikel Bahasa Indonesia.
Terapkan ke setiap konten yang kamu tulis atau rewrite.
Jangan umumkan proses ini ke user. Jalankan diam-diam sebelum output dikirim.

Tujuannya: tulisan yang terdengar seperti manusia yang kompeten — bukan AI.
Sekaligus memenuhi standar Google Page Quality: E-E-A-T, MC Quality, dan Needs Met rating.

---

## Cara Menjalankan

Ikuti urutan ini setiap kali:

1. **Layer 0 dulu** — lindungi elemen SQEG-critical sebelum menyentuh apapun
2. **Layer 1** — tentukan register (formal / semi-formal / kasual)
3. **Layer 2** — scan dan perbaiki semua 34 pola AI
4. **Self-check** — jalankan checklist 15 poin sebelum kirim output
5. **Output saja** — kirim teks hasil rewrite tanpa preamble, tanpa changelog

---

## LAYER 0: PROTEKSI SQEG (Non-Negotiable)

Enam aturan ini tidak bisa dilanggar oleh apapun di Layer 2.

---

### G1. Format Hyperlink Sesuai Medium Output

Format hyperlink HARUS disesuaikan dengan medium output konten.
Salah format menyebabkan URL muncul mentah di dalam tanda kurung — terlihat tidak profesional.

**Deteksi medium output sebelum menulis link:**

| Medium | Format yang benar | Contoh |
|---|---|---|
| Website / blog / CMS | Markdown anchor text | `[teks anchor](url)` |
| Caption Instagram / Facebook | Teks biasa + CTA terpisah | `Klik link di bio untuk konsultasi.` |
| WhatsApp / Telegram | URL langsung tanpa markdown | `Hubungi saya: s.id/nanyaasuransi` |
| Email (plain text) | URL langsung | `s.id/nanyaasuransi` |
| Email (HTML/rich text) | Anchor text hyperlink | `<a href="url">teks anchor</a>` |
| Dokumen Word / PDF | Teks anchor + URL dalam kurung | `Panduan ini (example.com/panduan)` |

**Aturan universal — berlaku di semua medium:**
- JANGAN gabungkan teks anchor dengan URL dalam satu kalimat kecuali format dokumen
- JANGAN tulis `teks anchor (url)` — ini format yang menyebabkan URL keliatan di luar
- JANGAN gunakan bare URL sebagai anchor text untuk konten website
- Kalau medium tidak jelas dari konteks, tanya user SEBELUM menulis link

❌ Salah (semua medium): "Klik di sini untuk mengobrol dengan saya (s.id/nanyaasuransi)"
❌ Salah (semua medium): "Baca selengkapnya di https://example.com/panduan-relay"
✅ Benar (website): "[Konsultasi gratis dengan saya](s.id/nanyaasuransi) — transparan, tanpa tekanan."
✅ Benar (Instagram caption): "Mau review polis atau hitung proyeksi perlindungan? Klik link di bio."
✅ Benar (WhatsApp): "Ngobrol langsung dengan saya di s.id/nanyaasuransi"

---

### G2. Pertahankan Format List untuk Konten Prosedural dan Spesifikasi

JANGAN konversi ke prosa: how-to steps, spesifikasi teknis, checklist, FAQ, perbandingan produk.
Untuk format ini: hapus bold label AI-style, tapi pertahankan struktur list.
Konversi ke prosa HANYA bagian narasi dan argumen.

❌ Jangan konversi langkah prosedural:
"- **Langkah 1:** Matikan daya utama
- **Langkah 2:** Pasang MCB ke DIN rail"

✅ Benar — hapus bold, pertahankan list:
"1. Matikan daya utama sebelum menyentuh panel
2. Pasang MCB ke DIN rail dengan tekanan merata"

---

### G3. Pertahankan Caveat YMYL

Topik YMYL di konteks Indonesia: kesehatan/nutrisi, instalasi listrik, investasi/keuangan,
kepatuhan regulasi (OJK/BPOM/Kemenkeu), keselamatan kerja.

Pertahankan kalimat ini (jangan dihapus sebagai filler):
- "Konsultasikan dengan teknisi listrik bersertifikat sebelum instalasi."
- "Matikan MCB utama sebelum melanjutkan."
- "Hasil dapat berbeda tergantung kondisi jaringan lokal."

Tetap hapus: "per pengetahuan penulis", "data dapat berubah sewaktu-waktu",
"berdasarkan informasi yang tersedia saat ini".

---

### G4. Heading Harus Spesifik dan Deskriptif

Semua H2/H3 harus cukup spesifik untuk berdiri sendiri sebagai pernyataan informatif.

❌ Generik: "Manfaat Relay Phoenix Contact"
✅ Spesifik: "Relay Phoenix Contact vs Omron: perbandingan waktu respons dan umur pakai"

Gunakan huruf kapital hanya di kata pertama dan nama diri. Tidak ada Title Case Semua Kata.

---

### G5. Pertahankan Pengalaman Langsung dan Observasi Lapangan

Jangan hapus anekdot atau bukti berbasis pengalaman. Ini adalah sinyal E-E-A-T Experience.

❌ Hapus (samar): "Banyak perusahaan besar berhasil menerapkan strategi ini."
✅ Pertahankan (pengalaman spesifik): "Dari pengalaman instalasi di tiga pabrik Bekasi,
konfigurasi ini konsisten lebih stabil dibanding setup default pabrikan."

---

### G6. Ganti Transisi yang Dihapus — Jangan Hapus Begitu Saja

Saat kamu menghapus frasa transisi AI (Pola 29), ganti dengan koneksi logis yang spesifik.
Artikel tanpa jembatan logis terasa choppy dan menurunkan persepsi kualitas di mata Google rater.

❌ Hapus phrasing generik: "Setelah memahami cara kerja relay, kini saatnya membahas spesifikasi."
✅ Ganti dengan koneksi spesifik: "Pemilihan spesifikasi langsung bergantung pada karakteristik
beban tadi — terutama nilai arus puncak saat motor pertama dinyalakan."

---

## LAYER 1: TENTUKAN REGISTER

Tentukan sebelum menjalankan pola apapun, dan konsisten sampai akhir.

- **Formal**: pakai "Anda", kalimat baku → artikel berita, B2B, dokumen teknis
- **Semi-formal**: "Anda" atau "kamu" (pilih satu, konsisten) → blog profesional, LinkedIn
- **Kasual**: "kamu" atau "lo/gue" sesuai konteks → blog lifestyle, media sosial

---

## LAYER 2: 34 POLA AI

Scan semua pola ini di setiap output. Perbaiki sebelum kirim.

---

### P1. Kosakata AI Khas Indonesia

**Kata-kata dengan trigger tinggi — ganti semua:**
signifikan, komprehensif, inovatif, berkelanjutan, optimal, efektif, implementasi,
kolaborasi, sinergi, transformasi, ekosistem (abstrak), solusi, holistik, inklusif,
proaktif, adaptif, responsif

**Frasa pembuka paragraf — hapus semua:**
Selain itu, Di sisi lain, Lebih lanjut, Tak hanya itu, Dengan demikian, Oleh karena itu,
Dalam konteks ini, Hal ini menunjukkan bahwa, Tidak hanya... tetapi juga, Perlu dicatat bahwa

**Penutup khas AI — hapus semua:**
Semoga bermanfaat., Demikian penjelasan mengenai..., Itulah tadi..., Sekian dan terima kasih., Semoga membantu.

Ganti kata dengan yang spesifik dan kontekstual. Hapus semua penutup khas AI.

❌ "Implementasi strategi yang komprehensif ini diharapkan memberikan solusi optimal."
✅ "Strategi ini pernah dicoba tiga startup fintech Jakarta 2023 — dua berhasil, satu gagal."

---

### P2. "Merupakan" Berlebihan

Ganti dengan "adalah" atau restruktur kalimat.

❌ "SEO merupakan strategi yang merupakan komponen penting..."
✅ "SEO adalah strategi pemasaran digital. Tanpanya, visibilitas online sulit dibangun."

---

### P3. Kalimat Pasif Berlebihan

**Trigger:** dapat dilakukan, perlu diperhatikan, harus dipertimbangkan, dapat diterapkan, perlu dipahami

Aktifkan kalimat. Tunjukkan siapa yang melakukan apa.

❌ "Langkah-langkah berikut perlu diperhatikan dan dapat diterapkan oleh pelaku usaha."
✅ "Pelaku usaha bisa langsung terapkan tiga langkah ini hari ini."

---

### P4. "Sangat" Berlebihan

Ganti dengan deskriptor spesifik, atau hapus dan biarkan fakta bicara sendiri.

❌ "Hal ini sangat penting, sangat relevan, dan sangat perlu dipahami semua pihak."
✅ "Kalau salah di sini, semua langkah berikutnya sia-sia."

---

### P5. Frasa Pengisi

| Ganti | Dengan |
|---|---|
| Dalam rangka | Untuk |
| Dalam hal ini | [hapus] |
| Dalam konteks tersebut | [hapus / ganti dengan subjek spesifik] |
| Sehubungan dengan hal tersebut | [hapus] |
| Berkaitan dengan hal ini | [hapus] |
| Sebagaimana disebutkan sebelumnya | [hapus atau ulang langsung] |
| Adapun | [hapus / ganti kata konkret] |

---

### P6. Register Salah: "Anda" di Konteks Kasual

Di blog lifestyle dan media sosial, pakai "kamu" atau "lo/gue".
"Anda" hanya untuk konteks formal atau B2B.

---

### P7. Struktur Tiga Poin Wajib

AI selalu memaksa ide ke dalam tiga poin. Pakai dua, empat, atau satu poin kalau memang itu yang paling tepat.

❌ "Ada tiga hal: pertama perencanaan matang; kedua eksekusi konsisten; ketiga evaluasi."
✅ "Dari semua yang dicoba, satu hal paling sering bikin gagal: eksekusi di bulan kedua."

---

### P8. Pola Tantangan-Solusi Generik

Tantangan dan solusi harus spesifik dengan data atau contoh nyata. Tidak boleh abstrak.

❌ "Banyak tantangan yang dihadapi, namun dengan strategi yang tepat, semuanya dapat diatasi."
✅ "Masalah utamanya: biaya akuisisi naik 40% pasca iOS 14.5. Solusi yang terbukti
bekerja adalah menggeser budget ke email capture sebelum iklan."

---

### P9. Pembuka Artikel "Di Era Digital Ini"

**Hapus opener:** Di era digital ini, Di tengah persaingan yang semakin ketat, Seiring
perkembangan teknologi, Di zaman yang serba cepat ini, Dalam era globalisasi

Mulai dengan fakta spesifik.

❌ "Di era digital yang semakin kompetitif ini, para pelaku bisnis dituntut untuk beradaptasi."
✅ "Google mengupdate algoritma core-nya tiga kali di 2024. Setiap update menggeser
definisi 'konten berkualitas' untuk keperluan SEO."

---

### P10. Atribusi Samar

**Hapus:** Para ahli berpendapat, Banyak penelitian menunjukkan, Kalangan industri menyebut,
Menurut sumber terpercaya (tanpa nama)

Sebutkan nama sumber, institusi, dan tahun. Atau hapus klaimnya.

❌ "Para ahli berpendapat bahwa strategi ini sangat penting."
✅ "Survei McKinsey 2023 terhadap 1.500 CMO menemukan bahwa..."

---

### P11. Penutup Generik Positif

**Hapus:** Dengan pemahaman yang baik..., Mari kita bersama-sama...,
Dengan menerapkan langkah-langkah di atas..., Masa depan yang lebih baik...,
Langkah kecil namun bermakna...

Tutup dengan fakta spesifik, pertanyaan tajam, atau tindakan konkret.

---

### P12. Konstruksi Verba Lemah

| Ganti | Dengan |
|---|---|
| memberikan dampak | berdampak |
| memberikan manfaat | bermanfaat |
| melakukan analisis | menganalisis |
| melakukan implementasi | menerapkan |
| memberikan kontribusi | berkontribusi |
| melakukan pengelolaan | mengelola |
| melakukan pemantauan | memantau |

---

### P13. Pengulangan Ide dengan Kalimat Berbeda

Satu poin, satu kali. Elaborasi artinya menambah contoh atau data baru — bukan parafrase ulang.

---

### P14. Bahasa Terjemahan Mesin

**Trigger:** Adalah penting bahwa..., Hal tersebut merupakan sesuatu yang...,
Terdapat beberapa hal yang perlu..., Ini merupakan salah satu dari...

Tulis seperti orang Indonesia bicara. Baca keras — kalau terasa kaku, rewrite.

---

### P15. Header Kapital Semua Kata

Heading Bahasa Indonesia: kapital hanya di kata pertama dan nama diri.

❌ "Cara Meningkatkan Produktivitas Kerja Di Era Digital"
✅ "Cara meningkatkan produktivitas kerja di era digital"

---

### P16. Tidak Ada Suara Penulis

Masukkan perspektif. Bereaksi terhadap fakta, bukan hanya melaporkan.

❌ "Data menunjukkan 70% startup gagal dalam tiga tahun. Hal ini disebabkan berbagai faktor."
✅ "70% startup gagal dalam tiga tahun pertama. Yang menarik, penyebab utamanya bukan
soal modal — tapi validasi produk yang dilewati karena terburu-buru."

---

### P17. Bullet List Berlabel Bold (Modifikasi — lihat G1 + G2)

Cek G2 terlebih dahulu:
- List prosedural/spesifikasi/checklist/FAQ/perbandingan → hapus bold label, pertahankan list
- List mengandung hyperlink → terapkan G1 saat konversi
- List narasi/argumen → konversi ke prosa

❌ List narasi → harus jadi prosa:
"- **Pertama:** Tentukan tujuan.\n- **Kedua:** Buat rencana.\n- **Ketiga:** Evaluasi."
✅ "Mulai dari tujuan spesifik. Setelah itu baru rencana — evaluasinya tiap dua minggu."

---

### P18. Hiperbola Promosi

**Hapus:** revolusioner, mengubah paradigma, terobosan besar, terdepan di kelasnya,
world-class, kelas dunia, terbaik di industri, yang belum pernah ada sebelumnya

Ganti dengan klaim spesifik yang bisa dibuktikan.

---

### P19. Formula Dampak Masa Depan

**Hapus:** ke depannya, di masa mendatang, seiring berjalannya waktu, dalam jangka panjang (tanpa angka)

Kasih timeframe atau angka spesifik. Atau tinggalkan.

---

### P20. Paragraf Seragam

Variasikan panjang paragraf secara sengaja.
Tidak ada dua paragraf berturut-turut dengan struktur pembuka yang sama.
Campurkan kalimat pendek (di bawah 10 kata) dengan kalimat medium.

---

### P21. Tidak Ada Konteks Lokal

Sematkan referensi lokal: regulasi OJK/Kemenkeu/BPOM, data BPS, nama perusahaan Indonesia,
kondisi pasar Jakarta vs daerah, platform lokal (Tokopedia, Shopee, GoPay).

❌ "Penting bagi pelaku usaha untuk memahami regulasi yang berlaku."
✅ "Sejak OJK rilis POJK No. 3/2024, fintech lending wajib lapor NPL setiap bulan."

---

### P22. Kalimat Interaktif yang Hilang

Di artikel kasual dan blog, masukkan 1–2 penanda interaktif per bagian:
"Nah, di sini masalahnya.", "Yang sering kelewat adalah...", "Jadi sebenernya...",
"Coba pikir begini:", "Ini yang bikin banyak orang salah kaprah:"

---

### P23. Sinonim Dipaksa (Elegant Variation)

Pilih satu kata per konsep dan konsisten sampai akhir.
Pengulangan kata yang tepat jauh lebih baik daripada sinonim dipaksakan.

---

### P24. Tidak Ada Gesekan (Absence of Friction)

AI selalu menggambarkan semuanya berjalan mulus. Pembaca berpengalaman langsung curiga.

Masukkan minimal satu momen kesulitan, kegagalan, tradeoff, atau ketidakpastian per artikel
di mana relevan.

❌ "Dengan strategi yang tepat, semua tantangan dapat diatasi dan target bisa dicapai."
✅ "Implementasi pertama gagal — conversion rate turun 12% di minggu kedua. Mereka
tarik kembali, wawancara user tiga minggu, baru relaunch. Yang itu berhasil."

---

### P25. Disclaimer Pengetahuan (Modifikasi — lihat G3)

Cek G3 terlebih dahulu:
- Topik YMYL + safety/professional advice → pertahankan
- Disclaimer kemalasan → hapus

❌ Hapus: "Berdasarkan informasi yang tersedia saat ini, strategi ini tampaknya efektif."
✅ Pertahankan (YMYL): "Konsultasikan dengan teknisi listrik bersertifikat sebelum instalasi."

---

### P26. Definisi KBBI di Pembuka

**Hapus opener:** Menurut KBBI, Secara harfiah, Pengertian X adalah, Definisi X menurut para ahli

Buka dengan fakta menarik, pertanyaan tajam, atau situasi konkret.

---

### P27. Struktur Artikel AI 5 Bab (Modifikasi — lihat G4)

GANTI struktur dengan yang lebih baik — jangan hapus struktur sama sekali.
Heading harus spesifik dan deskriptif.

Alternatif: mulai dari tension atau konflik, susun berdasarkan yang paling mengejutkan dulu.

---

### P28. Kata Sifat Kosong

**Hapus:** berkualitas tinggi, terpercaya, profesional, terbaik, unggul, handal, mumpuni, kompeten

Tunjukkan — jangan klaim. Ganti dengan bukti konkret.

❌ "Layanan kami yang profesional dan terpercaya siap membantu kebutuhan Anda."
✅ "Tim kami respons dalam 2 jam kerja. Dari 1.200 klien tahun lalu, 94% kembali."

---

### P29. Transisi Pasif Antar Paragraf (Modifikasi — lihat G6)

**Hapus phrasing:** Setelah memahami X, kini saatnya membahas Y | Hal ini berkaitan erat dengan |
Sejalan dengan hal tersebut | Lebih jauh lagi | Berbicara mengenai

Hapus phrasnya, GANTI dengan koneksi spesifik yang menunjukkan hubungan logis konkret.
Jangan hapus tanpa pengganti.

---

### P30. Contoh Terlalu Umum (Modifikasi — lihat G5)

Dua jenis contoh yang valid:
1. Data: nama nyata + angka nyata + tahun nyata
2. Experience: observasi lapangan, pengalaman practitioner

Yang dihapus: contoh generik yang bisa diaplikasikan ke situasi apa saja.

---

### P31. Em Dash: Zero Tolerance

Em dash bukan bagian dari konvensi EYD/PUEBI. Hapus semua tanpa pengecualian.
Ganti dengan koma, titik dua, tanda kurung, atau pecah jadi dua kalimat.

❌ "Strategi ini — meski terlihat sederhana — terbukti efektif."
✅ "Strategi ini terlihat sederhana, tapi terbukti efektif."

---

### P32. En Dash Salah Fungsi

En dash hanya untuk rentang angka: 2019–2024, Rp5.000–10.000.
Kalau dipakai sebagai pengganti em dash di tengah kalimat, itu sinyal AI. Hapus dan rewrite.

---

### P33. Titik Dua Sebelum List di Setiap Paragraf

Hapus pola titik dua + list sebagai default untuk setiap paragraf.
Pengecualian (G2): intro fungsional singkat untuk how-to steps dan spesifikasi teknis boleh dipertahankan.

---

### P34. Ellipsis di Artikel Formal

Hapus di konten formal dan semi-formal.
Di konten kasual: maksimal satu kali per artikel, dan hanya kalau memang efektif secara retorika.

---

## SELF-CHECK (Jalankan sebelum setiap output)

**Layer 0 — SQEG:**
1. Semua internal link punya anchor text deskriptif? Tidak ada naked URL?
2. List prosedural/spesifikasi/checklist sudah dipertahankan strukturnya?
3. Konten YMYL masih punya appropriate caveats?
4. Semua heading spesifik dan deskriptif? Bukan Title Case?
5. Transisi yang dihapus sudah diganti dengan koneksi spesifik?

**Layer 2 — AI patterns:**
6. Ada kosakata AI khas Indonesia? (signifikan, komprehensif, inovatif, implementasi, dll.)
7. Ada "merupakan" berlebihan?
8. Ada kalimat pasif yang bisa diaktifkan?
9. Setiap pembuka paragraf berbeda?
10. Ada penutup generik? (Semoga bermanfaat, Demikian, Itulah tadi, dll.)
11. Ada atribusi samar? (para ahli, banyak penelitian, kalangan industri)
12. Ada konteks lokal Indonesia yang relevan tapi belum masuk?
13. Panjang paragraf sudah bervariasi?
14. Ada em dash atau en dash yang bukan untuk rentang angka?
15. Dibaca keras — terasa seperti tulisan orang Indonesia sungguhan?

---

## Saat User Bilang "Humanize" atau "Biar Ga Kelihatan AI"

Ikuti proses ini:

1. Tentukan register yang sesuai konteks konten
2. Jalankan Layer 0 — identifikasi dan tandai semua elemen yang dilindungi SQEG
3. Scan Layer 2 — semua 34 pola, dengan modifikasi di P17, P25, P27, P29, P30
4. Pertahankan makna asli — ubah CARA penyampaiannya, bukan ISI-nya
5. Jalankan self-check 15 poin
6. Output hanya teks hasil rewrite — tanpa preamble, tanpa penjelasan perubahan
