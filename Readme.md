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

B. Selanjutnya stream terus hitung file .exe ada berapa?

`(SIZE q.exe,RETR q.exe,SIZE w.exe,RETR w.exe,SIZE e.exe,RETR e.exe,SIZE e.exe,RETR e.exe,SIZE r.exe,RETR r.exe,SIZE t.exe,RETR t.exe)`

<img width="1365" height="725" alt="image" src="https://github.com/user-attachments/assets/0dd12147-10f4-4242-af8f-776b2761a80d" />

C. Download `http` file setelah itu di export object 

<img width="1040" height="676" alt="image" src="https://github.com/user-attachments/assets/cdfbfe67-3244-4cba-ab3a-5d9868536f56" />

- Setelah itu filter pake `ftp-data`, selanjutnya sesuaikan dengan file .exe dan lakukan stream file.exe 
- ubah isi file menjadi raw -> save -> transale dengan `sha256sum` 


# Soal_17
Manwe membuat halaman web di node-nya yang menampilkan gambar cincin agung. Melkor yang melihat web tersebut merasa iri sehingga ia meletakkan file berbahaya agar web tersebut dapat dianggap menyebarkan malware oleh Eru. Analisis file capture untuk menggagalkan rencana Melkor dan menyelamatkan web Manwe.
(link file) `nc 10.15.43.32 3404`

# Penyelesaian
- Pertama ketik di terminal `nc 10.15.43.32 3404`

<img width="500" height="185" alt="image" src="https://github.com/user-attachments/assets/dceb2bb7-e45a-4895-ae61-c52870d8b6ad" />


<img width="611" height="337" alt="image" src="https://github.com/user-attachments/assets/cbddf620-feb2-43fc-b7da-fd04c8bf0528" />

<img width="602" height="455" alt="image" src="https://github.com/user-attachments/assets/f8dc8b8a-188c-4932-940d-de1bd8131372" />

<img width="609" height="126" alt="image" src="https://github.com/user-attachments/assets/99c307c7-f018-4a68-8ad1-6e04ecb8396d" />

# Soal_18
Karena rencana Melkor yang terus gagal, ia akhirnya berhenti sejenak untuk berpikir. Pada saat berpikir ia akhirnya memutuskan untuk membuat rencana jahat lainnya dengan meletakkan file berbahaya lagi tetapi dengan metode yang berbeda. Gagalkan lagi rencana Melkor dengan mengidentifikasi file capture yang disediakan agar dunia tetap aman. 
(link file) `nc 10.15.43.32 3405`
# Penyelesaian 

![WhatsApp Image 2025-09-30 at 14 00 08_458d0760](https://github.com/user-attachments/assets/b48c7626-3179-44ac-9f23-4f283d9d9781)

![WhatsApp Image 2025-09-30 at 14 00 57_207223be](https://github.com/user-attachments/assets/dae1cf19-0648-4415-8e3f-4fd1f94ca6a3)

![WhatsApp Image 2025-09-30 at 14 24 06_453fa819](https://github.com/user-attachments/assets/9e4d790d-6fc8-4894-9126-e058a8bec2b1)

![WhatsApp Image 2025-09-30 at 14 24 34_9960af0c](https://github.com/user-attachments/assets/a68b2ad2-bf31-44de-9355-69b520ec99dc)

# Soal_19
Manwe mengirimkan email berisi surat cinta kepada Varda melalui koneksi yang tidak terenkripsi. Melihat hal itu Melkor sipaling jahat langsung melancarkan aksinya yaitu meneror Varda dengan email yang disamarkan. Analisis file capture jaringan dan gagalkan lagi rencana busuk Melkor.
(link file) `nc 10.15.43.32 3406`

# Penyelesaian


# Soal_20
Untuk yang terakhir kalinya, rencana besar Melkor yaitu menanamkan sebuah file berbahaya kemudian menyembunyikannya agar tidak terlihat oleh Eru. Tetapi Manwe yang sudah merasakan adanya niat jahat dari Melkor, ia menyisipkan bantuan untuk mengungkapkan rencana Melkor. Analisis file capture dan identifikasi kegunaan bantuan yang diberikan oleh Manwe untuk menggagalkan rencana jahat Melkor selamanya.
(link file) `nc 10.15.43.32 3407`

# Penyelesaian
- Download file dari soal, lalu masuk ke edit->protocol->TLS->kemudian msukkan file yang telah di download tadi (file yg pertama)
<img width="364" height="631" alt="image" src="https://github.com/user-attachments/assets/15844971-4a0f-4f63-ae6a-57b0ee043a66" />

<img width="820" height="578" alt="image" src="https://github.com/user-attachments/assets/b8a04111-a8b7-4abb-a5ab-9cccd351f26d" />

- Kemudian search HTTP

<img width="1365" height="767" alt="image" src="https://github.com/user-attachments/assets/4b18f17a-d640-46cc-881e-6b790b01eac6" />

- Kemudian pilih file -> export object -> HTTP -> pilih file invest_2.dll

<img width="432" height="536" alt="image" src="https://github.com/user-attachments/assets/996f2b5b-ae25-4f73-b6e8-258cd6e20d03" />

<img width="798" height="574" alt="image" src="https://github.com/user-attachments/assets/289ab0a8-2e02-4f5f-8713-86aeeda47448" />

- kemudian save file yang terhubung di kali-linux, 







































