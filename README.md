# ✨ Otsu Thresholding

[![GitHub language](https://img.shields.io/github/languages/top/meeeloown/Otsu_Thresholding?style=flat-square&color=blue)](https://github.com/meeeloown/Otsu_Thresholding)
[![MATLAB](https://img.shields.io/badge/MATLAB-2019b%2B-blueviolet?style=flat-square&logo=matlab)](https://www.mathworks.com/products/matlab.html)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)

> Repositori ini didedikasikan untuk menguji dan menerapkan algoritma segmentasi Otsu, sebuah metode otomatis untuk melakukan thresholding gambar biner dari gambar skala abu-abu.

---

## ✨ Fitur Utama

Proyek ini menyediakan implementasi dan alat bantu untuk eksplorasi ambang batas Otsu, sebuah teknik penting dalam pemrosesan citra. Fitur-fitur utamanya meliputi:

*   **Implementasi Ambang Batas Otsu Tunggal:** Sebuah skrip MATLAB (`single_SegmentasiOtsu.m`) yang memungkinkan pengguna untuk menerapkan algoritma ambang batas Otsu ke satu gambar, ideal untuk pemahaman mendalam tentang prinsip kerja algoritma.
*   **Segmentasi Otsu Multi-Gambar Otomatis:** Skrip (`multi_SegmentasiOtsu.m`) untuk memproses kumpulan gambar secara efisien menggunakan metode ambang batas Otsu, menghasilkan gambar tersegmentasi untuk setiap input.
*   **Pengelolaan Dataset Gambar:** Struktur direktori yang jelas (`dataset`) untuk menyimpan gambar input dan (`ground truth`) untuk gambar referensi yang digunakan dalam pengujian atau perbandingan.
*   **Visualisasi Hasil Segmentasi:** Kemampuan untuk menampilkan gambar asli dan hasil segmentasinya, serta output yang disimpan secara terorganisir di direktori `Output_otsu`.
*   **Penampil Dataset Interaktif:** Skrip `Tampilkan_Dataset.m` yang dirancang untuk membantu dalam meninjau dan memahami kumpulan gambar yang digunakan dalam proses segmentasi.

## 🛠️ Tumpukan Teknologi

Proyek ini dikembangkan menggunakan teknologi utama berikut:

| Kategori       | Teknologi | Catatan                                                  |
| :------------- | :-------- | :------------------------------------------------------- |
| Bahasa Program | MATLAB    | Bahasa utama yang digunakan untuk implementasi algoritma |
| Pemrosesan Citra | Algoritma Otsu | Teknik yang digunakan untuk segmentasi gambar otomatis    |

## 🏛️ Tinjauan Arsitektur

Proyek ini mengadopsi arsitektur berbasis skrip yang lugas, khas untuk aplikasi pemrosesan citra dalam lingkungan MATLAB. Ini terdiri dari kumpulan skrip MATLAB yang berinteraksi dengan direktori gambar lokal.

1.  **Input Data:** Gambar mentah disediakan di direktori `dataset` dan gambar `ground truth` di direktori `ground truth`.
2.  **Modul Pemrosesan:** Skrip MATLAB (`single_SegmentasiOtsu.m`, `multi_SegmentasiOtsu.m`) berfungsi sebagai modul pemrosesan inti, menerapkan algoritma ambang batas Otsu.
3.  **Output Data:** Hasil segmentasi disimpan ke direktori `Output_otsu`.
4.  **Visualisasi & Utilitas:** Skrip tambahan seperti `Tampilkan_Dataset.m` berfungsi sebagai utilitas untuk menampilkan dataset dan hasil, membantu dalam analisis dan validasi.

Model ini sangat cocok untuk penelitian, eksperimen, dan tugas pemrosesan citra batch tanpa memerlukan infrastruktur yang kompleks.

## 🚀 Memulai

Untuk menjalankan proyek ini di lingkungan lokal Anda, ikuti langkah-langkah di bawah ini:

### Prasyarat

Pastikan Anda memiliki MATLAB yang terinstal di sistem Anda.

*   **MATLAB**: Disarankan versi R2019b atau yang lebih baru.

### Instalasi

1.  **Kloning repositori:**

    ```bash
    git clone https://github.com/meeeloown/Otsu_Thresholding.git
    cd Otsu_Thresholding
    ```

2.  **Buka MATLAB:**
    Luncurkan MATLAB dan arahkan ke direktori proyek yang baru saja Anda kloning.

3.  **Jalankan Skrip:**
    Dari dalam lingkungan MATLAB, Anda dapat menjalankan skrip dengan mengetik namanya di Command Window atau dengan menekan tombol Run di editor MATLAB.

    *   Untuk melihat dataset:
        ```matlab
        Tampilkan_Dataset
        ```
    *   Untuk melakukan segmentasi pada satu gambar (Anda mungkin perlu memodifikasi skrip untuk memilih gambar input tertentu):
        ```matlab
        single_SegmentasiOtsu
        ```
    *   Untuk melakukan segmentasi pada beberapa gambar (ini akan memproses semua gambar di direktori `dataset`):
        ```matlab
        multi_SegmentasiOtsu
        ```

Setelah menjalankan skrip segmentasi, hasilnya akan disimpan di direktori `Output_otsu`.

## 📂 Struktur File

```
/
├── Output_otsu
│   ├── Segmentasi_Gambar (1).png
│   ├── Segmentasi_Gambar (10).png
│   ├── Segmentasi_Gambar (11).png
│   ├── Segmentasi_Gambar (12).png
│   ├── Segmentasi_Gambar (13).png
│   ├── Segmentasi_Gambar (14).png
│   ├── Segmentasi_Gambar (15).png
│   ├── Segmentasi_Gambar (16).png
│   ├── Segmentasi_Gambar (17).png
│   ├── Segmentasi_Gambar (18).png
│   ├── Segmentasi_Gambar (19).png
│   ├── Segmentasi_Gambar (2).png
│   ├── Segmentasi_Gambar (20).png
│   ├── Segmentasi_Gambar (21).png
│   ├── Segmentasi_Gambar (22).png
│   ├── Segmentasi_Gambar (23).png
│   ├── Segmentasi_Gambar (24).png
│   ├── Segmentasi_Gambar (25).png
│   ├── Segmentasi_Gambar (26).png
│   ├── Segmentasi_Gambar (27).png
│   ├── Segmentasi_Gambar (28).png
│   ├── Segmentasi_Gambar (29).png
│   ├── Segmentasi_Gambar (3).png
│   ├── Segmentasi_Gambar (30).png
│   ├── Segmentasi_Gambar (4).png
│   ├── Segmentasi_Gambar (5).png
│   ├── Segmentasi_Gambar (6).png
│   ├── Segmentasi_Gambar (7).png
│   ├── Segmentasi_Gambar (8).png
│   └── Segmentasi_Gambar (9).png
├── README.md
├── Tampilkan_Dataset.m
├── dataset
│   ├── Gambar (1).png
│   ├── Gambar (10).png
│   ├── Gambar (11).png
│   ├── Gambar (12).png
│   ├── Gambar (13).png
│   ├── Gambar (14).png
│   ├── Gambar (15).png
│   ├── Gambar (16).png
│   ├── Gambar (17).png
│   ├── Gambar (18).png
│   ├── Gambar (19).png
│   ├── Gambar (2).png
│   ├── Gambar (20).png
│   ├── Gambar (21).png
│   ├── Gambar (22).png
│   ├── Gambar (23).png
│   ├── Gambar (24).png
│   ├── Gambar (25).png
│   ├── Gambar (26).png
│   ├── Gambar (27).png
│   ├── Gambar (28).png
│   ├── Gambar (29).png
│   ├── Gambar (3).png
│   ├── Gambar (30).png
│   ├── Gambar (4).png
│   ├── Gambar (5).png
│   ├── Gambar (6).png
│   ├── Gambar (7).png
│   ├── Gambar (8).png
│   └── Gambar (9).png
├── ground truth
│   ├── Gambar (1).png
│   ├── Gambar (10).png
│   ├── Gambar (11).png
│   ├── Gambar (12).png
│   ├── Gambar (13).png
│   ├── Gambar (14).png
│   ├── Gambar (15).png
│   ├── Gambar (16).png
│   ├── Gambar (17).png
│   ├── Gambar (18).png
│   ├── Gambar (19).png
│   ├── Gambar (2).png
│   ├── Gambar (20).png
│   ├── Gambar (21).png
│   ├── Gambar (22).png
│   ├── Gambar (23).png
│   ├── Gambar (24).png
│   ├── Gambar (25).png
│   ├── Gambar (26).png
│   ├── Gambar (27).png
│   ├── Gambar (28).png
│   ├── Gambar (29).png
│   ├── Gambar (3).png
│   ├── Gambar (30).png
│   ├── Gambar (4).png
│   ├── Gambar (5).png
│   ├── Gambar (6).png
│   ├── Gambar (7).png
│   ├── Gambar (8).png
│   └── Gambar (9).png
├── multi_SegmentasiOtsu.m
└── single_SegmentasiOtsu.m
```

*   `/Output_otsu`: Direktori ini menyimpan semua gambar yang dihasilkan setelah proses segmentasi Otsu.
*   `/dataset`: Berisi gambar input asli yang akan diproses oleh algoritma Otsu.
*   `/ground truth`: Menyimpan gambar referensi atau ground truth yang dapat digunakan untuk evaluasi dan perbandingan hasil segmentasi.
*   `Tampilkan_Dataset.m`: Skrip MATLAB untuk menampilkan gambar-gambar yang ada di direktori `dataset`.
*   `multi_SegmentasiOtsu.m`: Skrip utama yang menerapkan algoritma ambang batas Otsu pada beberapa gambar di direktori `dataset`.
*   `single_SegmentasiOtsu.m`: Skrip yang dirancang untuk menerapkan algoritma ambang batas Otsu pada satu gambar tertentu.
