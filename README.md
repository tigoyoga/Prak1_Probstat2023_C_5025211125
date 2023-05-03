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
- 

