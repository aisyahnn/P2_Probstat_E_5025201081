# P1_Probstat_E_5025201081

## Daftar Isi
* [Soal 1](#soal-1)
* [Soal 2](#soal-2)
* [Soal 3](#soal-3)
* [Soal 4](#soal-4)
* [Soal 5](#soal-5)
* [Soal 6](#soal-6)

<hr>

# Soal 1

 1.  a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel

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
> - menggunakan `t.test` untuk mencari  nilai p-value nya
> - hasil : 
![1 b](https://user-images.githubusercontent.com/81240334/170875771-40825cbf-4a24-4df5-8f79-f618b6559e39.jpg)

c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

    ```r
    #1.c
    t.test (Y, X, paired = TRUE)
    ```
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
    - tidak ada pengaruh yang signifikan secara statistika


<hr>

# Soal 3
3. Berilah kesimpulan yang didapatkan dari hasil tabel diatas. 

a. H0 dan H1
b. Hitung sampel statistik
c. Lakukan uji statistik
d. nilai kritikal
e. keputusan
f. kesimpulan

<hr>

# Soal 4

4. 
<hr>

# Soal 5

5. 

<hr>

# Soal 6

<hr>
