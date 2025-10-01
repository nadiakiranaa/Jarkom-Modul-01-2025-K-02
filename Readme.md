# Lapres Jarkom Modul 1 Kelompok K-02

| Nama | NRP |
| ---------------------- | ---------- |
| Nadia Kirana Afifah Prahandita | 5027241005 |
| Arya Bisma Putra Refman | 5027241036 |
----

## IP Address Host : 10.15.43.32

## The Ainulindalë
Sebuah kisah awal mula pembentukan dunia telah dibuka. Eru Ilúvatar atau yang nantinya disebut Eru adalah sang pencipta. Eru menciptakan roh-roh abadi yang disebut Ainur. Mereka adalah "anak-anak dari buah pikirannya". Eru meminta para Ainur untuk menciptakan musik agung bersama-sama. Melalui musik ini, sebuah visi tentang dunia yang akan datang (alam semesta) muncul. Ainu terkuat, Melkor, menjadi sombong dan memasukkan tema-tema sumbang dan egois ke dalam musik, menciptakan disonansi. Ini adalah asal mula kejahatan di alam semesta. Manwë Súlimo yang nantinya disebut Manwe adalah Ainu yang paling memahami kehendak Eru. Selama Musik Penciptaan, dialah yang menjadi konduktor utama untuk tema-tema dari Eru, sering kali berkonflik langsung dengan disonansi yang diciptakan Melkor. Ainur lainnya yang terlibat dalam pembentukan alam semesta dan turun ke Arda (Bumi) yaitu Varda Elentári (Varda) dan Ulmo.

### Soal_1
Untuk mempersiapkan pembuatan entitas selain mereka, Eru yang berperan sebagai Router membuat dua Switch/Gateway. Dimana Switch 1 akan menuju ke dua Ainur yaitu Melkor dan Manwe. Sedangkan Switch 2 akan menuju ke dua Ainur lainnya yaitu Varda dan Ulmo. Keempat Ainur tersebut diberi perintah oleh Eru untuk menjadi Client.

a. Menghubungkan Eru dengan keempat Ainur melalui 2 switch
<img width="1232" height="646" alt="Screenshot 2025-09-30 050047" src="https://github.com/user-attachments/assets/422ffad7-c808-4171-b52f-aa5ba2bec2f2" />

### Soal_2
Karena menurut Eru pada saat itu Arda (Bumi) masih terisolasi dengan dunia luar, maka buat agar Eru dapat tersambung ke internet.

a. Menghubungkan Eru dengan internet
<img width="979" height="731" alt="Screenshot 2025-09-30 050151" src="https://github.com/user-attachments/assets/40b8bb5e-2caa-4130-883e-0576f8b0b433" />
<br><br>

b. Mengatur konfigurasi Eru agar tersambung ke internet
- Eru
```
auto eth0
iface eth0 inet dhcp
```

c. Memeriksa apakah Eru sudah tersambung ke internet
<img width="737" height="565" alt="Screenshot 2025-10-01 221114" src="https://github.com/user-attachments/assets/802fd896-30f7-4bd4-a818-3329de402c89" />
<br>
<img width="1097" height="319" alt="Screenshot 2025-09-30 052255" src="https://github.com/user-attachments/assets/8db105d0-aac5-455b-b754-f2e089b886eb" />

### Soal_3
Sekarang pastikan agar setiap Ainur (Client) dapat terhubung satu sama lain.

a. Mengatur konfigurasi masing-masing node agar dapat terhubung satu sama lain
- Eru
```
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 192.212.1.1
	netmask 255.255.255.0

auto eth2
iface eth2 inet static
	address 192.212.2.1
	netmask 255.255.255.0
```

- Melkor
```
auto eth0
iface eth0 inet static
	address 192.212.1.2
	netmask 255.255.255.0
	gateway 192.212.1.1
```

- Manwe
```
auto eth0
iface eth0 inet static
	address 192.212.1.3
	netmask 255.255.255.0
	gateway 192.212.1.1
```

- Varda
```
auto eth0
iface eth0 inet static
	address 192.212.2.2
	netmask 255.255.255.0
	gateway 192.212.2.1
```

- Ulmo
```
auto eth0
iface eth0 inet static
	address 192.212.2.3
	netmask 255.255.255.0
	gateway 192.212.2.1
```

b. Memeriksa apakah setiap ainur dapat terhubung satu sama lain
<img width="922" height="706" alt="Screenshot 2025-09-30 051303" src="https://github.com/user-attachments/assets/102a8d7e-5a41-4b86-bad5-82328dcb7d01" />

### Soal_4
Setelah berhasil terhubung, sekarang Eru ingin agar setiap Ainur (Client) dapat mandiri. Oleh karena itu pastikan agar setiap Client dapat tersambung ke internet.

a. 

b. Membuat client di jaringan lokal (eth1 dan eth2) bisa keluar ke internet lewat eth0 menggunakan perintah NAT (Network Address Translation)


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

- Hasil dari file diatas menghasilkan flag seperti dibawah:

![WhatsApp Image 2025-09-30 at 14 24 34_9960af0c](https://github.com/user-attachments/assets/a68b2ad2-bf31-44de-9355-69b520ec99dc)

# Soal_19
Manwe mengirimkan email berisi surat cinta kepada Varda melalui koneksi yang tidak terenkripsi. Melihat hal itu Melkor sipaling jahat langsung melancarkan aksinya yaitu meneror Varda dengan email yang disamarkan. Analisis file capture jaringan dan gagalkan lagi rencana busuk Melkor.
(link file) `nc 10.15.43.32 3406`

# Penyelesaian
A. Setelah masuk folder `MelkorPlan4` search `TCP`cari yang berhasil loggin 

<img width="1365" height="723" alt="image" src="https://github.com/user-attachments/assets/5bb9a987-1b1d-4d69-8431-925bf7a43122" />

- selanjutnya ketika kita follow akan muncul username penggirim dan penerima 

<img width="689" height="713" alt="image" src="https://github.com/user-attachments/assets/2f9079e8-4b81-4f82-baad-1d8a69d04691" />

- Akan muncul pertanyaan mengenai "Siapa yang mengirim pesan ancaman?" 

<img width="430" height="102" alt="image" src="https://github.com/user-attachments/assets/6edf3bfc-cb41-4328-978a-1375b2b8fe5d" />

`MAIL FROM: <YourLife36@7162.com>`
`RCPT TO: <ikwlngpoh@yahoo.com>`

B. selanjutnya yang kita cari mengenai ancaman jika korban tidak membayar (Bitcoin) makan akan ada ancaman yang diberikan dari hacker.
Answer: `1600`

<img width="469" height="76" alt="image" src="https://github.com/user-attachments/assets/128a3683-5df9-48d4-91f9-84e6134e0e63" />

<img width="383" height="34" alt="image" src="https://github.com/user-attachments/assets/e90a4d40-ffe8-4577-9532-11400ecf17e6" />

C. Selanjutnya ditanya alamat bitcoin penyerang "What is the attacker's bitcoin wallet?"

![WhatsApp Image 2025-09-30 at 15 03 22_9688386a](https://github.com/user-attachments/assets/ada8acc1-8cf4-4c7b-9f2a-08cee7eb00ca)

<img width="1019" height="111" alt="image" src="https://github.com/user-attachments/assets/d58b6852-03df-499b-9fd1-7d831411c641" />

- Hasil nya 

<img width="877" height="392" alt="image" src="https://github.com/user-attachments/assets/c1e28159-417c-4052-ac51-1cf4da2cdb60" />




# Soal_20
Untuk yang terakhir kalinya, rencana besar Melkor yaitu menanamkan sebuah file berbahaya kemudian menyembunyikannya agar tidak terlihat oleh Eru. Tetapi Manwe yang sudah merasakan adanya niat jahat dari Melkor, ia menyisipkan bantuan untuk mengungkapkan rencana Melkor. Analisis file capture dan identifikasi kegunaan bantuan yang diberikan oleh Manwe untuk menggagalkan rencana jahat Melkor selamanya.
(link file) `nc 10.15.43.32 3407`

# Penyelesaian
- Pergi ke terminal nc 10.15.43.32 3407 lalu muncul pertanyaan "What encryption method is used?" 

Answer: `TLS`

<img width="506" height="196" alt="image" src="https://github.com/user-attachments/assets/3c611396-0bff-437d-b4e7-75639166a4fc" />

- Download file dari soal, lalu masuk ke edit->protocol->TLS->kemudian msukkan file yang telah di download tadi (file yg pertama)
<img width="364" height="631" alt="image" src="https://github.com/user-attachments/assets/15844971-4a0f-4f63-ae6a-57b0ee043a66" />

<img width="820" height="578" alt="image" src="https://github.com/user-attachments/assets/b8a04111-a8b7-4abb-a5ab-9cccd351f26d" />

- Kemudian search HTTP

<img width="1365" height="767" alt="image" src="https://github.com/user-attachments/assets/4b18f17a-d640-46cc-881e-6b790b01eac6" />

- Kemudian pilih file -> export object -> HTTP -> pilih file invest_2.dll

<img width="432" height="536" alt="image" src="https://github.com/user-attachments/assets/996f2b5b-ae25-4f73-b6e8-258cd6e20d03" />

- Mencari file berbahayannya 

<img width="798" height="574" alt="image" src="https://github.com/user-attachments/assets/289ab0a8-2e02-4f5f-8713-86aeeda47448" />

- selanjutnya ketemu file berbahaya yang menggandung malware ada di file `invest_20.dll`

<img width="644" height="135" alt="image" src="https://github.com/user-attachments/assets/2c6a18c3-29a1-45c0-864b-5a92073ac2d4" />

- Ada hash dari file invest_20.dll 
<img width="913" height="80" alt="image" src="https://github.com/user-attachments/assets/f3444d6f-9691-4821-b6ff-1bf216abed06" />

- Menghasilkan flag 
<img width="902" height="381" alt="image" src="https://github.com/user-attachments/assets/17e0f047-387f-4354-9b65-35ef2b794297" />





























































