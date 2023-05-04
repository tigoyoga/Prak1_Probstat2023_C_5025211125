# Prak1_Probstat2023_C_5025211125

Praktikum Modul 1
| | |
|-|-|
| Nama | Tigo S Yoga |
| NRP | 5025211125 |
| Kelas | Probstat C |


## No 1
Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488. Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran, maka:

a.) Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.

**Penyelesaian** :
- Pendistribusian banyak bayi laki-laki dapat dihitung menggunakan distribusi binomial, karena kasus ini menghitung jumlah kejadian suatu peristiwa dalam sejumlah percobaan berulang dengan hasil yang hanya bisa berupa dua kemungkinan (laki-laki atau perempuan), dengan probabilitas keberhasilan (bayi laki-laki) yang sudah diketahui dan tetap dalam setiap percobaan.

```r
n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung pendistribusian banyak laki-laki dengan fungsi dbinom(), lalu dimasukkan ke variabel probs
# Parameter pertama yaitu 0 sampai n karena kita menghitung probabilitas dari 0 hingga 10 bayi laki-laki
probs <- dbinom(0:n, n, p)

# Menampilkan grafik histogram dengan fungsi barplot()
bp <- barplot(probs, names.arg = 0:n, xlab = "Jumlah Bayi Laki-laki", ylab = "Probabilitas", col = "blue")

# Menambahkan teks berupa nilai pada masing-masing bar
text(bp, probs, labels = round(probs, 3), pos = 3, cex = 0.8, col = "black")
```

![image](https://user-images.githubusercontent.com/88433109/235826754-6acc6c50-29e3-4ff8-bd01-3a8172605bf4.png)


b.) Berapa probabilitas bahwa tepat tiga bayi diantaranya berjenis kelamin laki-laki?

**Penyelesaian** :
- Probabilitas bahwa tepat tiga bayi diantaranya berjenis kelamin laki-laki dapat dihitung dengan menggunakan distribusi binomial.

```r
n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung  probabilitas bahwa tepat tiga bayi diantaranya berjenis kelamin laki-laki dengan fungsi dbinom()
# Parameter pertama yaitu 3, karena ingin mencari probabilitas bahwa tepat 3 bayi diantara 10 kelahiran adalah laki-laki. 
dbinom(3, n, p)
```

![image](https://user-images.githubusercontent.com/88433109/235827543-6e361b7f-23b2-4242-a6d2-feee81f743ef.png)
- Probabilitas bahwa tepat 3 bayi diantara 10 kelahiran berjenis kelamin laki-laki yaitu 0.1286265

c.) Berapa probabilitas bahwa kurang dari tiga bayi diantaranya berjenis kelamin laki-laki?

**Penyelesaian** :
-  Probabilitas bahwa kurang dari tiga bayi diantaranya berjenis kelamin laki-laki dapat dihitung dengan menggunakan distribusi kumulatif binomial, karena digunakan untuk menghitung probabilitas kumulatif dari variabel acak diskrit dengan distribusi binomial.

```r
n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung probabilitas bahwa kurang dari tiga bayi diantaranya berjenis kelamin laki-laki dengan fungsi pbinom()
# Parameter pertama yaitu 2 karena merupakan jumlah keberhasilan (kelahiran bayi laki-laki) maksimal yang memenuhi syarat (kurang dari 3 bayi)
pbinom(2, n, p)
```

![image](https://user-images.githubusercontent.com/88433109/235828579-bdf0e70e-2730-4f19-887d-7ff637370789.png)

- Probabilitas bahwa kurang dari 3 bayi diantara 10 kelahiran berjenis kelamin laki-laki yaitu 0.0636442

d.) Berapa probabilitas bahwa tiga atau lebih bayi diantaranya berjenis kelamin laki-laki?

**Penyelesaian** : 
- Probabilitas bahwa tiga atau lebih bayi diantaranya berjenis kelamin laki-laki dapat dihitung dengan menggunakan probabilitas kejadian lawan (dalam hal ini, kurang dari tiga bayi laki-laki) dan menguranginya dari 1.

```r
n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung probabilitas bahwa tiga atau lebih bayi diantaranya berjenis kelamin laki-laki dengan fungsi pbinom()
# Kita dapat menghitung probabilitas ini dengan mengurangi probabilitas bahwa kurang dari tiga bayi diantaranya berjenis kelamin laki-laki dari 1.
1 - pbinom(2, n, p)
```

![image](https://user-images.githubusercontent.com/88433109/235829802-61d35a32-c145-4d19-b3c8-90ede9eb7f3f.png)
- Probabilitas bahwa 3 atau lebih bayi diantara 10 kelahiran berjenis kelamin laki-laki yaitu 0.9363558

e.) Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?

**Penyelesaian** :
- Nilai harapan (mean) adalah ukuran sentral atau karakteristik pusat dari distribusi data, yang menunjukkan rata-rata dari data tersebut.
Simpangan baku (standard deviation) adalah ukuran penyebaran atau variabilitas dari distribusi data. Semakin tinggi nilai simpangan baku, semakin besar variasi atau keragaman data dari nilai rata-ratanya. 
- Nilai Harapan: $E(X) = n * p$
- Simpangan Baku: $SD(X) = \sqrt{n * p * (1 - p)}$

```r
n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung nilai harapan
E <- n * p
E

# Menghitung simpangan baku
sd <- sqrt(n * p * (1 - p))
sd
```

![image](https://user-images.githubusercontent.com/88433109/235830808-ce4c767c-1f0e-46ee-8b2b-6a23b1bf327d.png)
- Nilai harapannya yaitu 4.88 dan Simpangan bakunya yaitu 1.580683

f.) Gambarkan histogram pendistribusian banyak bayi laki-laki.

**Penyelesaian** : 
- Untuk menggambar histogram pendistribusian, kita dapat menggunakan fungsi barplot().

```r
n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung pendistribusian banyak laki-laki dengan fungsi dbinom(), lalu dimasukkan ke variabel probs
# Parameter pertama yaitu 0 sampai n karena kita menghitung probabilitas dari 0 hingga 10 bayi laki-laki
probs <- dbinom(0:n, n, p)

# Menampilkan grafik histogram dengan fungsi barplot()
bp <- barplot(probs, names.arg = 0:n, xlab = "Jumlah Bayi Laki-laki", ylab = "Probabilitas", col = "blue")

# Menambahkan teks berupa nilai pada masing-masing bar
text(bp, probs, labels = round(probs, 3), pos = 3, cex = 0.8, col = "black")
```

![image](https://user-images.githubusercontent.com/88433109/235826754-6acc6c50-29e3-4ff8-bd01-3a8172605bf4.png)


## No 2
Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan adalah 1,8.

a.) Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.

**Penyelesaian** :
- Pendistribusian banyak kematian karena kanker tulang dapat dihitung dengan menggunakan distribusi Poisson karena kematian ini terjadi secara acak dan frekuensi kematiannya dapat dihitung dalam waktu yang ditentukan. Distribusi ini merupakan distribusi probabilitas untuk menghitung banyak kejadian langka dalam interval waktu tertentu. 

```r
lambda <- 1.8

# menghitung pendistribusian banyak kematian karena kanker tulang dengan menggunakan fungsi dpois().
probs <- dpois(0:10, lambda)

# Menampilkan grafik histogram dengan fungsi barplot()
bp <- barplot(probs, names.arg = 0:n, xlab = "Banyak Kematian karena Kanker Tulang", ylab = "Probabilitas", col = "blue")

# Menambahkan teks berupa nilai pada masing-masing bar
text(bp, probs, labels = round(probs, 3), pos = 3, cex = 0.8, col = "black")
```

![image](https://user-images.githubusercontent.com/88433109/236260157-2f8b970d-f0e2-4806-972b-66c581c2859f.png)

b.) Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.

**Penyelesaian** :
- Untuk menentukan apakah 4 kematian akibat kanker tulang di kalangan pekerja pabrik ban adalah peristiwa yang tidak biasa, kita dapat menghitung probabilitasnya berdasarkan distribusi Poisson yang telah dipilih. Untuk menentukan apakah peristiwa tersebut biasa atau tidak, kita dapat membandingkan probabilitas terjadinya peristiwa tersebut dengan sebuah batasan yang disebut sebagai alpha level atau tingkat signifikansi. Jika probabilitas terjadinya peristiwa tersebut lebih rendah dari alpha level, maka kita dapat menyimpulkan bahwa peristiwa tersebut cukup tidak biasa atau jarang terjadi.

```r
# Parameter distribusi Poisson
lambda <- 1.8

# Nilai yang dicari
x <- 4

# Alpha level
alpha <- 0.05

# Hitung batas atas probabilitas
upper <- qpois(1 - alpha/2, lambda)

# Hitung batas bawah probabilitas
lower <- qpois(alpha/2, lambda)

# Hitung probabilitas distribusi Poisson pada nilai x
prob <- dpois(x, lambda)

# Tampilkan hasil probabilitas, batas atas, dan batas bawah
cat("Probabilitas: ", prob, "\n")
cat("Batas atas: ", upper, "\n")
cat("Batas bawah: ", lower, "\n")

# Mengecek apakah peristiwa tersebut tidak biasa atau jarang
if(x > upper | x < lower) {
  cat("Peristiwa tersebut tidak biasa atau jarang.")
} else {
  cat("Peristiwa tersebut biasa atau umum terjadi.")
}
```
![2b](https://user-images.githubusercontent.com/88433109/236265977-4a63b581-868b-4d20-9762-7d1699f8ee7f.JPG)
- Probabilitasnya yaitu 0.07230173. Dengan Alpha level 0.05, didapat batas atas 5 dan batas bawah 0. Peristiwa tersebut biasa atau umum terjadi.

c.) Berapa peluang paling banyak 4 kematian akibat kanker tulang?

**Penyelesaian** :
 -  Untuk menghitung berapa peluang paling banyak 4 kematian akibat kanker tulang, kita perlu menggunakan fungsi distribusi kumulatif. Fungsi distribusi kumulatif untuk distribusi Poisson adalah ppois(), yang menghitung peluang variabel acak Poisson X ≤ k dengan parameter λ.
 
 ```r
# Parameter distribusi Poisson
lambda <- 1.8

# Nilai yang dicari
x <- 4

# Menghitung peluang paling banyak kematian akibat kanker tulang dengan fungsi ppois()
ppois(x, lambda)
 ```
 
 ![image](https://user-images.githubusercontent.com/88433109/236265502-adeea479-d11b-47cf-8aa8-d32b3e4b12cd.png)
 - Probabilitas paling banyak 4 kematian akibat kanker tulang dalam 20 tahun kedepan yaitu 0.9635933.

d.) Berapa peluang lebih dari 4 kematian akibat kanker tulang?

**Penyelesaian** :
- Probabilitas lebih dari 4 kematian akibat kanker tulang dapat dihitung dengan menggunakan probabilitas kejadian lawan (dalam hal ini, paling banyak 4 kematian) dan menguranginya dari 1.

```r
# Parameter distribusi Poisson
lambda <- 1.8

# Nilai yang dicari
x <- 4

# Menghitung peluang lebih dari 4 kematian akibat kanker tulang dengan fungsi ppois() dan menguranginya dari 1
1 - ppois(x, lambda)
```

![image](https://user-images.githubusercontent.com/88433109/236267463-2c20e530-f1cf-41e1-a96a-d058f3dfee0a.png)
- Probabilitas lebih dari 4 kematian akibat kanker tulang dalam 20 tahun kedepan yaitu 0.03640666.

e.) Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?

**Penyelesaian** :
- Nilai harapan (mean) adalah ukuran sentral atau karakteristik pusat dari distribusi data, yang menunjukkan rata-rata dari data tersebut.
Simpangan baku (standard deviation) adalah ukuran penyebaran atau variabilitas dari distribusi data. Semakin tinggi nilai simpangan baku, semakin besar variasi atau keragaman data dari nilai rata-ratanya. 
- Nilai Harapan: $E(X) = λ$
- Simpangan Baku: $SD(X) = \sqrt{λ}$

![image](https://user-images.githubusercontent.com/88433109/236269343-d81d8305-78b3-4a40-a693-a44020f86e53.png)
- Nilai harapannya yaitu 1.8 dan Standar deviasinya yaitu 1.341641.

f.) Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.

**Penyelesaian** :
- Untuk menggambar histogram, kita dapat menggunakan fungsi barplot().

```r
# Parameter distribusi Poisson
lambda <- 1.8

# menghitung pendistribusian banyak kematian karena kanker tulang dengan menggunakan fungsi dpois().
probs <- dpois(0:10, lambda)

# Menampilkan grafik histogram dengan fungsi barplot()
bp <- barplot(probs, names.arg = 0:n, xlab = "Banyak Kematian karena Kanker Tulang", ylab = "Probabilitas", col = "blue")

# Menambahkan teks berupa nilai pada masing-masing bar
text(bp, probs, labels = round(probs, 3), pos = 3, cex = 0.8, col = "black")
```

![image](https://user-images.githubusercontent.com/88433109/236260157-2f8b970d-f0e2-4806-972b-66c581c2859f.png)

g.) Gunakan simulasi untuk memeriksa hasil sebelumnya.

**Penyelesaian** : 
- Untuk memodelkan simulasi kita menggunakan fungsi rpois dengan parameter lambda dan jumlah simulasi yaitu 100000.

```r
# Parameter distribusi Poisson
lambda <- 1.8

# Jumlah simulasi
n_sim <- 100000

# Fungsi  yang digunakan untuk mengatur "seed" pada generator angka acak agar menghasilkan urutan bilangan acak yang sama pada saat simulasi
set.seed(123)

# Mensimulasikan banyaknya kematian akibat kanker tulang untuk seluruh pekerja di pabrik ban dengan fungsi rpois()
sim_data <- rpois(n_sim, lambda)

# Hasil simulasi dengan 4 kematian
prob_4 <- sum(sim_data == 4) / n_sim
prob_4

# Hasil simulasi dengan lebih dari 4 kematian 
prob_more4 <- sum(sim_data > 4) / n_sim
prob_more4

# Hasil simulasi dengan paling banyak 4 kematian
prob_max4 <- sum(sim_data <= 4) / n_sim
prob_max4
```

![image](https://user-images.githubusercontent.com/88433109/236276499-5c80aed1-aee8-46af-923f-2a260de94e13.png)
- Hasil simulasi dengan 4 kematian, lebih dari 4 kematian, dan paling banyak 4 kemtian masing-masing yaitu 0.07122, 0.03662, 0.96338.

h.) Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.

**Penyelesaian** :
- Berdasarkan simulasi, didapatkan hasil simulasi untuk probabilitas lebih dari 4 kematian akibat kanker tulang yaitu 0.03662. Sedangkan hasil nomor 2d untuk probabilitas lebih dari 4 kematian akibat kanker tulang yaitu 0.03640666. Terdapat perbedaan yang tidak terlalu signifikan antara keduanya. Hal ini mungkin disebabkan oleh pengaruh ukuran sampel simulasi yang dilakukan. Semakin besar ukuran sampel, semakin mendekati hasil simulasi dengan hasil perhitungan yang sebenarnya.




