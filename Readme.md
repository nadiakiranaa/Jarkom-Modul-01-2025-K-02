# Lapres Jarkom Modul 1 Kelompok K-02
# Soal_14
Setelah gagal mengakses FTP, Melkor melancarkan serangan brute force terhadap  Manwe. Analisis file capture yang disediakan dan identifikasi upaya brute force Melkor. 
(link file) `nc 10.15.43.32 3401`
# Penyelesaian
- Pertama masukkan file yang ada di soal, selanjutnya search `http` mencari yang berhail loggin `POST/login`

![WhatsApp Image 2025-09-30 at 15 19 50_db8f5e37](https://github.com/user-attachments/assets/ff79e938-879a-4d82-9954-5d31da5e9d22)

- Selanjutnya masukkan `nc 10.15.43.32 3401`

![WhatsApp Image 2025-09-30 at 15 20 22_e002151d](https://github.com/user-attachments/assets/a5b3f772-18e9-45ed-bc45-7165a029b790)

A. Masuk ke bagian pertama setelah memsukkan `nc 10.15.43.32 3401` nya yaitu muncul pertanyaan 
"How many packets are recorded in the pcapng file?"

Answer: `500358`
- Mendapatkan 500358 itu dari kita shorting seluruh file shortbf 

<img width="1365" height="720" alt="image" src="https://github.com/user-attachments/assets/3d5483b2-d24b-4938-b15e-b7d48ba8c5c3" />


<img width="520" height="75" alt="image" src="https://github.com/user-attachments/assets/056a82db-bb1d-4803-82f4-1c15dee43187" />



B. Bagian selanjutnya yaitu memasukkan username dan password 
"What are the user that successfully logged in?"

Answer: `-Username :n1enna`

        `-Password: y4v4nn4_k3m3nt4r1`
        
- Jadi kita cari username & passwordnya dengan pilih salah satu trafic (follow http stream) dan akan muncul username& passwordnya

<img width="604" height="373" alt="image" src="https://github.com/user-attachments/assets/2d5d913d-1113-4041-a5d7-ca377dcb868f" />


<img width="497" height="73" alt="image" src="https://github.com/user-attachments/assets/00a48fac-d81d-4429-96e4-64f761e36c14" />

C. Selanjutnya kita di minta untuk mencari dimana kridensial nya 

"In which stream were the credentials found?"

Answer: `41824`
- Username & Password muncul di stream 41824 (di pojok kanan bawah)

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

`- USER ind@psg420.com`

`- PASS {6r_6e#TfT1p`



<img width="781" height="411" alt="image" src="https://github.com/user-attachments/assets/8f687b54-09f1-4c6a-94d9-91effd2a36ac" />

B. Selanjutnya stream terus hitung file .exe ada berapa?

`(SIZE q.exe,RETR q.exe,SIZE w.exe,RETR w.exe,SIZE e.exe,RETR e.exe,SIZE e.exe,RETR e.exe,SIZE r.exe,RETR r.exe,SIZE t.exe,RETR t.exe)`

<img width="1365" height="725" alt="image" src="https://github.com/user-attachments/assets/0dd12147-10f4-4242-af8f-776b2761a80d" />

C. Hasil hash dari file (q.exe) 
<img width="655" height="82" alt="image" src="https://github.com/user-attachments/assets/9c425bbd-c2ef-4a45-8694-4226bf6291f4" />

- Selanjutnya cek dengan FTP-Data dengan size q.exe
- Follow dan akan muncul ASCII lalu pindah ke Raw dan di simpan ke folder MelkorPlan1

<img width="1361" height="707" alt="image" src="https://github.com/user-attachments/assets/b8a868bc-065a-45eb-adc6-2f471f62a871" />

- Kemudian jalankan `sha256sum namafile.exe`

<img width="721" height="389" alt="image" src="https://github.com/user-attachments/assets/2ea24945-9e69-49d6-b8b5-77ee1ea089b5" />

- hasil hash dari semua file.exe

<img width="936" height="404" alt="image" src="https://github.com/user-attachments/assets/cdf9842d-bcc5-41c2-8384-fc12fe5314fb" />




# Soal_17
Manwe membuat halaman web di node-nya yang menampilkan gambar cincin agung. Melkor yang melihat web tersebut merasa iri sehingga ia meletakkan file berbahaya agar web tersebut dapat dianggap menyebarkan malware oleh Eru. Analisis file capture untuk menggagalkan rencana Melkor dan menyelamatkan web Manwe.
(link file) `nc 10.15.43.32 3404`

# Penyelesaian

- Pertama ketik di terminal `nc 10.15.43.32 3404`

<img width="500" height="185" alt="image" src="https://github.com/user-attachments/assets/dceb2bb7-e45a-4895-ae61-c52870d8b6ad" />

A. Pilih file MelkorPlan2 dan pilih export object -> HTTP

<img width="438" height="573" alt="image" src="https://github.com/user-attachments/assets/fcca626d-18c3-42fb-a3d6-709453c0bdb4" />

- Kemudian ada 3 file, diantara 3 file ini ada malware yaitu `Invoice&MSO-Request.doc`

<img width="611" height="337" alt="image" src="https://github.com/user-attachments/assets/cbddf620-feb2-43fc-b7da-fd04c8bf0528" />

- untuk mendapatkan hash dari `knr.exe` dengan `sha256shum`

<img width="747" height="70" alt="image" src="https://github.com/user-attachments/assets/44f0d56e-c56c-4d49-872a-3d2f4b4ee69e" />


C. Kemudian mendapatkan hasil flag dari knr.exe 

<img width="893" height="595" alt="image" src="https://github.com/user-attachments/assets/cd78e300-6c76-406f-a886-d03ec0e72348" />


# Soal_18
Karena rencana Melkor yang terus gagal, ia akhirnya berhenti sejenak untuk berpikir. Pada saat berpikir ia akhirnya memutuskan untuk membuat rencana jahat lainnya dengan meletakkan file berbahaya lagi tetapi dengan metode yang berbeda. Gagalkan lagi rencana Melkor dengan mengidentifikasi file capture yang disediakan agar dunia tetap aman. 
(link file) `nc 10.15.43.32 3405`
# Penyelesaian 
A. How many files are suspected of containing malware?
Answer: 2 

- Pilih file `MelkorPlan3`, kemudian export object -> `SMB`

<img width="500" height="549" alt="image" src="https://github.com/user-attachments/assets/36149542-fcd3-4956-8c2b-7fd43b3eab43" />

- Akan ada 7 file yang mengandung malware 

<img width="786" height="576" alt="image" src="https://github.com/user-attachments/assets/22aecc37-1ee9-4cc2-ab26-c067b1938470" />

- Ada 2 file yang mencurigakan yaitu 
`1. \\WINDOWS\d0p2nc6ka3f.fixh0lhyg4voyfcy_smc2ho_u083urjpphnwlahjwhv_o5c0vf6.exe`
`2. \\WINDOWS\oiku9bu68cxqenfmcso2aek6t07_guuisqxlnliv8dx2eemqdnhvhyl46l8n.di.exe`

B. File pertama `d0p2nc6ka3f.fixh0lhyg4voyfcy_smc2ho_u083urjpphnwlahjwhv_o5c0vf6.exe` mengandung malware

<img width="793" height="82" alt="image" src="https://github.com/user-attachments/assets/9cb54b2c-8a9b-406e-887c-5b8cec5702c6" />

C. File kedua 
`oiku9bu68cxqenfmcsos2aek6t07_guuisgxhllixv8dx2eemqddnhyh46l8n_di.exe`
mengandung malware

<img width="675" height="73" alt="image" src="https://github.com/user-attachments/assets/cd13d693-ec31-4dea-8ca7-18540f11d332" />

D. Hasil dari kedua hash file 

<img width="1352" height="156" alt="image" src="https://github.com/user-attachments/assets/b75ab4b8-f19d-45fe-a6d3-950753237443" />


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




















































