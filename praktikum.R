# NO 1

n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung pendistribusian banyak laki-laki dengan fungsi dbinom(), lalu dimasukkan ke variabel probs
# Parameter pertama yaitu 0 sampai n karena kita menghitung probabilitas dari 0 hingga 10 bayi laki-laki
probs <- dbinom(0:n, n, p)

# Menampilkan grafik histogram dengan fungsi barplot()
bp <- barplot(probs, names.arg = 0:n, xlab = "Jumlah Bayi Laki-laki", ylab = "Probabilitas", col = "blue")

# Menambahkan teks berupa nilai pada masing-masing bar
text(bp, probs, labels = round(probs, 3), pos = 3, cex = 0.8, col = "black")

####

n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung  probabilitas bahwa tepat tiga bayi diantaranya berjenis kelamin laki-laki dengan fungsi dbinom()
# Parameter pertama yaitu 3, karena ingin mencari probabilitas bahwa tepat 3 bayi diantara 10 kelahiran adalah laki-laki. 
dbinom(3, n, p)

####

n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung probabilitas bahwa kurang dari tiga bayi diantaranya berjenis kelamin laki-laki dengan fungsi pbinom()
# Parameter pertama yaitu 2 karena merupakan jumlah keberhasilan (kelahiran bayi laki-laki) maksimal yang memenuhi syarat (kurang dari 3 bayi)
pbinom(2, n, p)

####

n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung probabilitas bahwa tiga atau lebih bayi diantaranya berjenis kelamin laki-laki dengan fungsi pbinom()
# Kita dapat menghitung probabilitas ini dengan mengurangi probabilitas bahwa kurang dari tiga bayi diantaranya berjenis kelamin laki-laki dari 1.
1 - pbinom(2, n, p)

####

n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung nilai harapan
E <- n * p
E

# Menghitung simpangan baku
sd <- sqrt(n * p * (1 - p))
sd

####

n <- 10 # Jumlah kelahiran
p <- 0.488 # Probabilitas bayi laki-laki

# Menghitung pendistribusian banyak laki-laki dengan fungsi dbinom(), lalu dimasukkan ke variabel probs
# Parameter pertama yaitu 0 sampai n karena kita menghitung probabilitas dari 0 hingga 10 bayi laki-laki
probs <- dbinom(0:n, n, p)

# Menampilkan grafik histogram dengan fungsi barplot()
bp <- barplot(probs, names.arg = 0:n, xlab = "Jumlah Bayi Laki-laki", ylab = "Probabilitas", col = "blue")

# Menambahkan teks berupa nilai pada masing-masing bar
text(bp, probs, labels = round(probs, 3), pos = 3, cex = 0.8, col = "black")

####

# NO 2

lambda <- 1.8

# menghitung pendistribusian banyak kematian karena kanker tulang dengan menggunakan fungsi dpois().
probs <- dpois(0:10, lambda)

# Menampilkan grafik histogram dengan fungsi barplot()
bp <- barplot(probs, names.arg = 0:n, xlab = "Banyak Kematian karena Kanker Tulang", ylab = "Probabilitas", col = "blue")

# Menambahkan teks berupa nilai pada masing-masing bar
text(bp, probs, labels = round(probs, 3), pos = 3, cex = 0.8, col = "black")

####

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

####

# Parameter distribusi Poisson
lambda <- 1.8

# Nilai yang dicari
x <- 4

# Menghitung peluang paling banyak kematian akibat kanker tulang dengan fungsi ppois()
ppois(x, lambda)

####

# Parameter distribusi Poisson
lambda <- 1.8

# Nilai yang dicari
x <- 4

# Menghitung peluang lebih dari 4 kematian akibat kanker tulang dengan fungsi ppois() dan menguranginya dari 1
1 - ppois(x, lambda)

####

lambda <- 1.8

mean <- lambda
SD <- sqrt(lambda)

cat("Nilai Harapan : ", mean)
cat("Standar Deviasi : ", SD)

####

# Parameter distribusi Poisson
lambda <- 1.8

# menghitung pendistribusian banyak kematian karena kanker tulang dengan menggunakan fungsi dpois().
probs <- dpois(0:10, lambda)

# Menampilkan grafik histogram dengan fungsi barplot()
bp <- barplot(probs, names.arg = 0:n, xlab = "Banyak Kematian karena Kanker Tulang", ylab = "Probabilitas", col = "blue")

# Menambahkan teks berupa nilai pada masing-masing bar
text(bp, probs, labels = round(probs, 3), pos = 3, cex = 0.8, col = "black")

####

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

####

# NO 3

# Parameter distribusi Chi-Square
x <- 3
v <- 10

dchisq(x, v)

####

# Parameter distribusi Chi-Square
v <- 10

# Digunakan untuk menghasilkan angka acak yang dapat direproduksi sehingga hasilnya selalu sama
set.seed(123) 

# Fungsi untuk menghasilkan 500 bilangan acak dari distribusi Chi-Square 
x <- rchisq(500, 10) 

# Menampilkan histogram dengan fungsi hist().
hist(x, breaks = 20, main = "Histogram Chi-Square df=10", xlab = "Nilai", ylab = "Frekuensi")

####

v <- 10

mean <- v
var <- 2 * v

cat("Nilai rataan dari distribusi Chi-Square yaitu :", mean)

cat("Nilai varian dari distribusi Chi-Square yaitu :", var)

####

# NO 4

# Menentukan rata-rata dan standar deviasi
mean <- 45
sd <- 5

# Menentukan nilai X1 dan X2
X1 <- floor(mean)
X2 <- ceiling(mean)

# Menghitung probabilitas menggunakan fungsi pnorm
prob <- pnorm(X2, mean, sd) - pnorm(X1, mean, sd)

# Menghitung z-score
zscore1 <- (X1 - mean) / sd
zscore2 <- (X2 - mean) / sd

# Menampilkan hasil probabilitas dan z-score
cat("Probabilitas P(", X1, " ≤ X ≤ ", X2, ") =", prob, "\n")
cat("Z-score X1 =", zscore1, "\n")
cat("Z-score X2 =", zscore2, "\n")

# Menghasilkan data acak
set.seed(123)
data <- rnorm(100, mean, sd)

# Menampilkan histogram data acak
hist(data, breaks = 10, main = "Histogram Data Acak", xlab = "Nilai", ylab = "Frekuensi")

# Menampilkan garis vertikal untuk X1 dan X2
abline(v = X1, lty = 2)
abline(v = X2, lty = 2)

# Menampilkan plot data acak
plot(data, main = "Plot Data Acak", xlab = "Nomor Observasi", ylab = "Nilai")

####

# Menentukan rata-rata dan standar deviasi
mean <- 45
sd <- 5

# Menentukan nilai X1 dan X2
X1 <- floor(mean)
X2 <- ceiling(mean)

# Menghitung probabilitas menggunakan fungsi pnorm
prob <- pnorm(X2, mean, sd) - pnorm(X1, mean, sd)

# Menghitung z-score
zscore1 <- (X1 - mean) / sd
zscore2 <- (X2 - mean) / sd

# Menampilkan hasil probabilitas dan z-score
cat("Probabilitas P(", X1, " ≤ X ≤ ", X2, ") =", prob, "\n")
cat("Z-score X1 =", zscore1, "\n")
cat("Z-score X2 =", zscore2, "\n")

# Menghasilkan data acak
set.seed(123)
data <- rnorm(100, mean, sd)

# Menampilkan histogram data acak
hist(data, breaks = 10, main = "Histogram Data Acak", xlab = "Nilai", ylab = "Frekuensi")

# Menampilkan garis vertikal untuk X1 dan X2
abline(v = X1, lty = 2)
abline(v = X2, lty = 2)

# Menampilkan plot data acak
plot(data, main = "Plot Data Acak", xlab = "Nomor Observasi", ylab = "Nilai")

####

set.seed(123) 

n <- 100  # jumlah data

mean <- 45  # rata-rata

sd <- 5  # standar deviasi

# generate data acak dari distribusi Normal dengan fungsi rnorm()
x <- rnorm(n, mean, sd)  

# menggambar histogram dengan breaks 50 dengan fungsi hist()
hist(x, breaks = 50)  

####

set.seed(123)

# Menghasilkan data dengan distribusi normal
data <- rnorm(100, mean = 45, sd = 5)

# Menghitung variansi dari data
var(data)

####

# NO 5

# Parameter probabilitas distribusi T-Student
x <- -2.34
df <- 6

# Menghitung probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan dengan fungsi pt()
pt(x, df)

####

# Parameter probabilitas distribusi T-Student
x <- 1.34
df <- 6

# Menghitung probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan dengan fungsi pt() lalu menguranginya dari 1
1 - pt(x, df)

####

# Probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23
p_c1 <- pt(-1.23, df=3)

# Probabilitas terjadinya suatu peristiwa acak X lebih besar dari 1,23
p_c2 <- 1 - pt(1.23, df=3)

# Jumlahkan keduanya
p_c1 + p_c2

####

# Probabilitas terjadinya suatu peristiwa acak X kurang dari 0.94
p_d1 <- pt(0.94, df=14)

# Probabilitas terjadinya suatu peristiwa acak X lebih dari dari -0.94
p_d2 <- pt(-0.94, df=14)

# Hitung selisihnya
p_d1 - p_d2

####

# Menghitung nilai t-score dengan fungsi qt()
qt(0.0333, df=5)

####

# Menghitung nilai t-score dengan fungsi qt() 
qt(0.125, df=25, lower.tail=FALSE)

####

# Mencari t-score di sebelah kanan titik
ts_right <- qt(0.25 + (0.75 / 2), 11, lower.tail = FALSE)

# Mencari t-score di sebelah kiri titik
ts_left <- qt(0.25 + (0.75 / 2), 11, lower.tail = TRUE)

# Menghitung t-score yang dicari
ts_right - abs(ts_left)

####

# Menghitung nilai t-score
ts_right <- qt(0.0333 / 2,  23, lower.tail = FALSE)
ts_left <- qt(0.0333 / 2,  23, lower.tail = TRUE)
abs(ts_left) + ts_right

