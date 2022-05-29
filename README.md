# P2_Probstat_E_5025201081

### Nama : Aisyah Nurhalimah

### NRP : 5025201081

### Kelas : Probabilitas dan Statistik - E

<hr>

## Daftar Isi
* [Soal 1](#soal-1)
* [Soal 2](#soal-2)
* [Soal 3](#soal-3)
* [Soal 4](#soal-4)
* [Soal 5](#soal-5)

<hr>

# Soal 1

 1.  Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut.

![soal 1](https://user-images.githubusercontent.com/81240334/170879967-97323846-f365-4a04-8f93-2ce56c95895a.jpg)

a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel

```r
#data
Responden <- c(1,2,3,4,5,6,7,8,9)
X <- c(78,75,67,77,70,72,78,74,77)
Y <- c(100,95,70,90,90,90,89,90,100)

#1.a --> standar deviasi
sd1 = sd(X-Y)
sd1
```

> - memasukkan data sebeum dan sesudah melakukan aktivitas
> - lalu mencari nilai standar deviasi nya
> - Hasil :

![1 a](https://user-images.githubusercontent.com/81240334/170875765-e954f0b9-ee68-4a9b-a1a8-6bcfc90b7131.jpg)

b. carilah nilai t (p-value)
```r
 #1.b --> nilai t (p-value)
    mu1 <- 0
    xbar1 <- mean(sd1)
    n1 <- 9
    z1 = ((xbar1-mu1) / (sd1/sqrt(n1)))
    pvalue1 <- pnorm(-abs(z1))
    pvalue1
```

> - hasil : 

![1 b](https://user-images.githubusercontent.com/81240334/170875771-40825cbf-4a24-4df5-8f79-f618b6559e39.jpg)

c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

```r
#1.c
    t.test (Y, X, paired = TRUE)
```

> - menggunakan `t.test` untuk mencari  nilai p-value nya
> - menurut hasil karena p-value < 0,05 maka H0 ditolak
> - Hasil : 

![1 c](https://user-images.githubusercontent.com/81240334/170875786-c9e64755-4b26-4553-8eb8-b6300ed5088f.jpg)

    
<hr>

# Soal 2

2. Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

a. Apakah Anda setuju dengan klaim tersebut?

> - Setuju, karena sampel acak rata-rata menunjukkan lebih besar dari 20.000 km/jam
     
b. Jelaskan maksud dari output yang dihasilkan!

```r
    #2
    mu2 <- 20000
    sd2 <-3900
    xbar2 <-23500
    n2 <- 100

    z2 <- ((xbar2-mu2) / (sd2/sqrt(n2)))
    pvalue2 <- pnorm(-abs(z2))
    pvalue2
```

> - p value nya adalah : 

![2](https://user-images.githubusercontent.com/81240334/170875788-66b7bba4-fc6a-4483-a57f-3e4b2ccf0257.jpg)

c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

> - tidak ada pengaruh yang signifikan secara statistika


<hr>

# Soal 3
3. Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

![soal3](https://user-images.githubusercontent.com/81240334/170879963-88184816-12c4-4286-8067-0e95c6633c53.jpg)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya __(α= 0.05)__? Buatlah :

a. H0 dan H1
> H0 : miuBali = miuBandung
> H1 : miuBali != miuBandung

b. Hitung sampel statistik
 
```r
#3.b
# x : Bandung ; y : Bali
tsum.test(
  mean.x = 3.64, 
  s.x = 1.67, 
  n.x = 19, 
  mean.y = 2.79, 
  s.y = 1.32, 
  n.y = 27, 
  alternative = "two.sided", 
  mu = 0, 
  var.equal = TRUE,
  conf.level = 0.95
)
```
- Hasil :

![3 b](https://user-images.githubusercontent.com/81240334/170879029-aa1af141-c31a-430b-951d-81460e164c59.jpg)

c. Lakukan uji statistik

```r
#3.c
#sp2 <-(((nBali-1)*(SBali)^2)+((nBdg-1)*(SBdg)^2))/((nBali-1)+(nBdg-1))
sp2 <- (((27 - 1)*(1.32)^2) + ((19 - 1)*(1.67)^2))/((27-1) + (19 - 1))
sp <- sqrt(sp2)
x2 <- (1/27) + (1/19)
x <- sqrt(x2)
t <- (2.79 - 3.64)/(sp*x)
t
```

- Hasil :

![3 c](https://user-images.githubusercontent.com/81240334/170879036-9d2c8081-d74a-4e27-b0cb-43ec44edd99a.jpg)

d. nilai kritikal

```r
#3d
qt(p = 0.05, df = 2, lower.tail = FALSE)
```

- Hasil :

![3 d](https://user-images.githubusercontent.com/81240334/170879042-b9e0523a-bf7d-4c93-a130-c85a9d70db06.jpg)


e. keputusan

> H0 ditolak, sample tidak memiliki cukup bukti

f. kesimpulan

> dengan conf.level 95% diyakini bahwa rata-rata saham di Bali dan di Bandung adalah sama

<hr>

# Soal 4

4. Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika :

    diketahui dataset https://intip.in/datasetprobstat1

    H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
    sama

    a. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
    2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
    lihat apakah ada outlier utama dalam homogenitas varians.

    b. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

    c. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
    Grup dan beri nama model tersebut model 1.

    d. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
    dari H0?

    e. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

    f. Visualisasikan data dengan ggplot2

<hr>

# Soal 5

5. Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut:

    a. Buatlah plot sederhana untuk visualisasi data

    b. Lakukan uji ANOVA dua arah

    c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
    
    d. Lakukan uji Tukey
    
    e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

<hr>


