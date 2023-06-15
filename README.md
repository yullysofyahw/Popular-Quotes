# Daily Scraping Popular Quotes

## :memo: Deskripsi

<div align="justify">
Quote merupakan sekelompok kata atau tulisan pendek yang diambil dari sebuah buku, drama, pidato, dan lain-lain dan diulang karena menarik atau berguna. Quote biasanya diberi tanda kutip (“...”). Biasanya dicantumkan sumber untuk menunjukkan asal kalimat dari sumber lain atau mengkredit si penulis atau pencetus asli.
</div>
<div align="justify">
</div>
<div align="justify">
Web yang discraping pada project ini adalah https://www.goodreads.com/quotes. Web ini menyajikan quote populer berbahasa inggris dari beberapa tokoh terkenal. Web ini terdiri dari 100 halaman dengan total 3000 quote populer. Sraping akan dilakukan setiap hari pada jam 09.00 AM.
</div>


## :blue_book: Dokumen

Berikut ini contoh dokumen yang sudah tersimpan pada MongoDB Atlas :

```
{
"_id":{"$oid":"648b4c11dfcff883be081951"},
"isiquote":"A room without books is like a body without a soul.",
"penulis":"Marcus Tullius Cicero",
"like":"131083"
}
```

Dokumen terdiri dari isi quote, penulis quote dan jumlah like yang diperoleh quote tersebut.

## :camera_flash: Visualisasi

## :computer: Pengembang

<div align="justify">
Yully Sofyah Waode
</div>

<div align="justify">
G1501222056
</div>

<div align="justify">
STA 22
</div>
