# Lapres Jarkom Modul 1 Kelompok K-02
# Soal_14
Setelah gagal mengakses FTP, Melkor melancarkan serangan brute force terhadap  Manwe. Analisis file capture yang disediakan dan identifikasi upaya brute force Melkor. 
(link file) `nc 10.15.43.32 3401`
# Penyelesaian
- Pertama masukkan file yang ada di soal, selanjutnya search `http` mencari yang berhail loggin `POST`

![WhatsApp Image 2025-09-30 at 15 19 50_db8f5e37](https://github.com/user-attachments/assets/ff79e938-879a-4d82-9954-5d31da5e9d22)

- Selanjutnya masukkan `nc 10.15.43.32 3401`

![WhatsApp Image 2025-09-30 at 15 20 22_e002151d](https://github.com/user-attachments/assets/a5b3f772-18e9-45ed-bc45-7165a029b790)

A. Masuk ke bagian pertama setelah memsukkan `nc 10.15.43.32 3401` nya yaitu muncul pertanyaan 
"How many packets are recorded in the pcapng file?"

Answer: `500358`

<img width="520" height="75" alt="image" src="https://github.com/user-attachments/assets/056a82db-bb1d-4803-82f4-1c15dee43187" />



B. Bagian selanjutnya yaitu memasukkan username dan password 
"What are the user that successfully logged in?"

Answer: `n1enna:y4v4nn4_k3m3nt4r1`
- Jadi kita cari username & passwordnya dengan pilih salah satu trafic lalu klik follow dan akan muncul username& passwordnya

<img width="604" height="373" alt="image" src="https://github.com/user-attachments/assets/2d5d913d-1113-4041-a5d7-ca377dcb868f" />


<img width="497" height="73" alt="image" src="https://github.com/user-attachments/assets/00a48fac-d81d-4429-96e4-64f761e36c14" />

C. Selanjutnya kita di minta untuk mencari dimana kridensial nya 
"In which stream were the credentials found?"

Answer: `41824`

<img width="407" height="68" alt="image" src="https://github.com/user-attachments/assets/797f2811-68f7-47e7-99d2-4f89d8f9b76a" />

D. Tahap terakhir kita diminta untuk menemukan Alat apa yang digunakan untuk brute force 
"What tools are used for brute force?"

Answer: `Fuzz Faster U Fool v2.1.0-dev`

<img width="771" height="101" alt="image" src="https://github.com/user-attachments/assets/d69cabdf-67be-40c8-a72a-9069951f0d10" />

## Soal_15


## Soal_16
Melkor semakin murka ia meletakkan file berbahaya di server milik Manwe. Dari file capture yang ada, identifikasi file apa yang diletakkan oleh Melkor.
(link file) `nc 10.15.43.32 3403`

# Penyelesaian
- Pertama ketik di terminal `nc 10.15.43.32 3403`

<img width="453" height="140" alt="image" src="https://github.com/user-attachments/assets/d0335a16-d947-4c7c-a384-8f9262fd7037" />

A. masukkan file yang ada di soal, selanjutnya search `ftp` mencari trafic yang ada username & password

<img width="781" height="411" alt="image" src="https://github.com/user-attachments/assets/8f687b54-09f1-4c6a-94d9-91effd2a36ac" />

B. Selanjutnya stream terus hitung file .exe ada berapa 
(SIZE q.exe,RETR q.exe,SIZE w.exe,RETR w.exe,SIZE e.exe,RETR e.exe,SIZE e.exe,RETR e.exe,SIZE r.exe,RETR r.exe,SIZE t.exe,RETR t.exe)

<img width="1365" height="725" alt="image" src="https://github.com/user-attachments/assets/0dd12147-10f4-4242-af8f-776b2761a80d" />

C. Download `http` file setelah itu di export object 

<img width="1040" height="676" alt="image" src="https://github.com/user-attachments/assets/cdfbfe67-3244-4cba-ab3a-5d9868536f56" />

- Setelah itu filter pake `ftp-data`, selanjutnya sesuaikan dengan file .exe dan lakukan stream file.exe 
- ubah isi file menjadi raw -> save -> transale dengan `sha256sum` 




























