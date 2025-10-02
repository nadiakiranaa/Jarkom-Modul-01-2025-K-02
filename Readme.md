# Lapres Jarkom Modul 1 Kelompok K-02

| Nama | NRP |
| ---------------------- | ---------- |
| Nadia Kirana Afifah Prahandita | 5027241005 |
| Arya Bisma Putra Refman | 5027241036 |
----

## IP Address Host : 10.15.43.32

## The Ainulindalë
Sebuah kisah awal mula pembentukan dunia telah dibuka. Eru Ilúvatar atau yang nantinya disebut Eru adalah sang pencipta. Eru menciptakan roh-roh abadi yang disebut Ainur. Mereka adalah "anak-anak dari buah pikirannya". Eru meminta para Ainur untuk menciptakan musik agung bersama-sama. Melalui musik ini, sebuah visi tentang dunia yang akan datang (alam semesta) muncul. Ainu terkuat, Melkor, menjadi sombong dan memasukkan tema-tema sumbang dan egois ke dalam musik, menciptakan disonansi. Ini adalah asal mula kejahatan di alam semesta. Manwë Súlimo yang nantinya disebut Manwe adalah Ainu yang paling memahami kehendak Eru. Selama Musik Penciptaan, dialah yang menjadi konduktor utama untuk tema-tema dari Eru, sering kali berkonflik langsung dengan disonansi yang diciptakan Melkor. Ainur lainnya yang terlibat dalam pembentukan alam semesta dan turun ke Arda (Bumi) yaitu Varda Elentári (Varda) dan Ulmo.

## Soal_1
Untuk mempersiapkan pembuatan entitas selain mereka, Eru yang berperan sebagai Router membuat dua Switch/Gateway. Dimana Switch 1 akan menuju ke dua Ainur yaitu Melkor dan Manwe. Sedangkan Switch 2 akan menuju ke dua Ainur lainnya yaitu Varda dan Ulmo. Keempat Ainur tersebut diberi perintah oleh Eru untuk menjadi Client.

A. Menghubungkan Eru dengan keempat Ainur melalui 2 switch
<img width="1232" height="646" alt="Screenshot 2025-09-30 050047" src="https://github.com/user-attachments/assets/422ffad7-c808-4171-b52f-aa5ba2bec2f2" />

## Soal_2
Karena menurut Eru pada saat itu Arda (Bumi) masih terisolasi dengan dunia luar, maka buat agar Eru dapat tersambung ke internet.

A. Menghubungkan Eru dengan internet
<img width="979" height="731" alt="Screenshot 2025-09-30 050151" src="https://github.com/user-attachments/assets/40b8bb5e-2caa-4130-883e-0576f8b0b433" />
<br><br>

B. Mengatur konfigurasi Eru agar tersambung ke internet
- Eru
```
auto eth0
iface eth0 inet dhcp
```

C. Memeriksa apakah Eru sudah tersambung ke internet
<img width="737" height="565" alt="Screenshot 2025-10-01 221114" src="https://github.com/user-attachments/assets/802fd896-30f7-4bd4-a818-3329de402c89" />
<img width="1097" height="319" alt="Screenshot 2025-09-30 052255" src="https://github.com/user-attachments/assets/8db105d0-aac5-455b-b754-f2e089b886eb" />

## Soal_3
Sekarang pastikan agar setiap Ainur (Client) dapat terhubung satu sama lain.

A. Mengatur konfigurasi masing-masing node agar dapat terhubung satu sama lain
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

B. Memeriksa apakah setiap ainur dapat terhubung satu sama lain
<img width="922" height="706" alt="Screenshot 2025-09-30 051303" src="https://github.com/user-attachments/assets/102a8d7e-5a41-4b86-bad5-82328dcb7d01" />

## Soal_4
Setelah berhasil terhubung, sekarang Eru ingin agar setiap Ainur (Client) dapat mandiri. Oleh karena itu pastikan agar setiap Client dapat tersambung ke internet.

A. Masuk ke Node Eru menggunakan telnet
<img width="1103" height="345" alt="Screenshot 2025-09-30 052303" src="https://github.com/user-attachments/assets/284e2108-e591-4e83-91ac-aed381de0b21" />

B. Membuat client di jaringan lokal (eth1 dan eth2) bisa keluar ke internet lewat eth0 menggunakan perintah NAT (Network Address Translation) dan memeriksan konfigurasi DNS resolver di Node Eru
<img width="1161" height="114" alt="Screenshot 2025-09-30 052501" src="https://github.com/user-attachments/assets/3ce95e7f-aee5-4c25-8466-ef119e94a12d" />

C. Masuk di terminal lain ke Node Client menggunakan telnet lalu menjadikan IP 192.168.122.1(Eru) sebagai DNS resolver utama di masing-masing Client, serta memeriksa apakah masing-masing Client tersebut sudah tersambung ke internet
<img width="1501" height="742" alt="image" src="https://github.com/user-attachments/assets/f8ec536e-9671-47a7-9252-56ecc4a6bb35" />
<img width="1521" height="747" alt="image" src="https://github.com/user-attachments/assets/e1cb3480-2dab-46ce-8a76-04e8c05d0a21" />
<img width="1504" height="756" alt="image" src="https://github.com/user-attachments/assets/6943d89e-9c63-4827-8a36-82a7edcab403" />
<img width="1501" height="744" alt="image" src="https://github.com/user-attachments/assets/3e3b3de6-9139-40e3-ba59-d185031d7ce4" />

## Soal_5
Ainur terkuat Melkor tetap berusaha untuk menanamkan kejahatan ke dalam Arda (Bumi). Sebelum terjadi kerusakan, Eru dan para Ainur lainnya meminta agar semua konfigurasi tidak hilang saat semua node di restart.

A. Memasukkan ke dalam root(/root/.bashrc) script yang ingin dijalankan, agar setiap kali Node Eru dibuka menggunakan telnet script tersebut langsung dijalankan
<img width="1038" height="673" alt="image" src="https://github.com/user-attachments/assets/4d3b0d56-e411-4978-b0cb-98bdff5100a7" />

B. Memasukkan ke dalam konfigurasi di setiap Node Client script yang dijalankan di soal sebelumnya. Hal ini juga bisa kita lakukan sama seperti di Eru, yaitu memasukkan script di dalam root(/root/.bashrc)
- Melkor
```
auto eth0
iface eth0 inet static
    address 192.212.1.2
    netmask 255.255.255.0
    gateway 192.212.1.1
    up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

- Manwe
```
auto eth0
iface eth0 inet static
    address 192.212.1.3
    netmask 255.255.255.0
    gateway 192.212.1.1
    up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

- Varda
```
auto eth0
iface eth0 inet static
    address 192.212.2.2
    netmask 255.255.255.0
    gateway 192.212.2.1
    up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

- Ulmo
```
auto eth0
iface eth0 inet static
    address 192.212.2.3
    netmask 255.255.255.0
    gateway 192.212.2.1
    up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

## Soal_6
Setelah semua Ainur terhubung ke internet, Melkor mencoba menyusup ke dalam komunikasi antara Manwe dan Eru. Jalankan file berikut ([link file](https://drive.google.com/drive/folders/1ULr_Fik1O0_79zUng41POMZtdzJTugVR?usp=sharing)) lalu lakukan packet sniffing menggunakan Wireshark pada koneksi antara Manwe dan Eru, lalu terapkan display filter untuk menampilkan semua paket yang berasal dari atau menuju ke IP Address Manwe. Simpan hasil capture tersebut sebagai bukti.

A. Di dalam Node Manwe, download zip dari link tersebut dan lakukan unzip pada file zip-nya, serta ubah izin eksekusi dari file tersebut agar bisa dieksekusi, menggunakan:
- wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=1bE3kF1Nclw0VyKq4bL2VtOOt53IC7lG5' -O traffic.zip
- apt update && apt install zip
- unzip traffic.zip
- chmod +x traffic.sh

B. Melakukan capture mengggunakan wireshark untuk melakukan packet sniffing

C. Menjalankan file yang sudah diunzip tadi (traffic.sh)
- ./traffic.sh
<img width="1375" height="245" alt="image" src="https://github.com/user-attachments/assets/90e56514-9550-4cff-9091-e161ee4960d5" />

D. Melihat paket yang muncul pada wireshark dan melakukan filter agar yang tampil hanya paket dengan IP Address Manwe
- ip.addr == 192.212.1.3
<img width="1466" height="740" alt="image" src="https://github.com/user-attachments/assets/2a97b132-158f-4b73-9f22-3d8b01cf89f6" />

## Soal_7
Untuk meningkatkan keamanan, Eru memutuskan untuk membuat sebuah FTP Server di node miliknya. Lakukan konfigurasi FTP Server pada node Eru. Buat dua user baru: ainur dengan hak akses write&read dan melkor tanpa hak akses sama sekali ke direktori shared. Buktikan hasil tersebut dengan membuat file teks sederhana kemudian akses file tersebut menggunakan kedua user.

A. Menginstall paket vsftpd agar bisa melakukan perintah ftp
- apt-get update && apt-get install -y vsftpd

B. Membuat user ainur dan melkor
- useradd -m ainur
- echo "ainur:pass123" | chpasswd 
- useradd -m melkor 
- echo "melkor:pass123" | chpasswd

C. Membuat direktori shared, dimana user ainur memiliki hak akses write&read, sedangkan melkor tidak memiliki hak akses sama sekali ke direktori shared, serta membuat file baru di shared yang akan digunakan nanti untuk melakukan tes
- mkdir -p /home/shared 
- chown ainur:ainur /home/shared: mengubah kepemilikan dari shared ke user ainur
- echo "Ini file test" > /home/shared/test.txt

D. Mengatur konfigurasi ftp di masing-masing user
- nano /etc/vsftpd.conf
```
listen=YES → vsftpd akan mendengarkan koneksi masuk (daemon aktif).
listen_ipv6=NO → matikan IPv6 listener, hanya gunakan IPv4.
anonymous_enable=NO → nonaktifkan login anonim, hanya user terdaftar yang bisa login.
local_enable=YES → izinkan user lokal (misalnya ainur, melkor) login FTP.
write_enable=YES → izinkan operasi menulis (upload, rename, delete).
chroot_local_user=YES → setiap user "dikurung" di home folder-nya (tidak bisa browsing ke luar).
allow_writeable_chroot=YES → mengizinkan chroot folder tetap bisa ditulis (kalau tidak, sering error permission).
user_config_dir=/etc/vsftpd/user_conf → lokasi konfigurasi tambahan per-user.

- ini mengatur kebijakan FTP server agar aman (tidak anonim), dan bisa beda aturan per user.
```
- mkdir -p /etc/vsftpd/user_conf
- echo "write_enable=YES" > /etc/vsftpd/user_conf/ainur (user ainur boleh upload/edit file)
- echo "local_root=/home/shared" >> /etc/vsftpd/user_conf/ainur (direktori root FTP untuk ainur adalah /home/shared)
- echo "write_enable=NO" > /etc/vsftpd/user_conf/melkor (user melkor tidak boleh upload/ubah file)
- echo "download_enable=NO" >> /etc/vsftpd/user_conf/melkor (user melkor juga tidak boleh download file)
- service vsftpd restart (Melakukan restart service vsftpd supaya semua konfigurasi yang baru ditambahkan berlaku)

E. Mencoba user ainur di Node Manwe
<img width="1570" height="655" alt="Screenshot 2025-10-02 134948" src="https://github.com/user-attachments/assets/688281c0-a033-4d75-852d-83fa66f80f0b" />
<img width="1572" height="712" alt="Screenshot 2025-10-02 135049" src="https://github.com/user-attachments/assets/2b89415c-4b78-48bb-9309-a826805a4405" />

F. Mencoba user melkor di Node Manwe
<img width="937" height="806" alt="image" src="https://github.com/user-attachments/assets/435abb9c-5fa7-4cbd-b9fa-22a77a03b73c" />

## Soal_8
Ulmo, sebagai penjaga perairan, perlu mengirimkan data ramalan cuaca ke node Eru. Lakukan koneksi sebagai client dari node Ulmo ke FTP Server Eru menggunakan user ainur. Upload sebuah file berikut ([link file](https://drive.google.com/drive/folders/1XQh6S1xXcaP1QoUhQSZORsgK9xdMUxXx?usp=sharing)). Analisis proses ini menggunakan Wireshark dan identifikasi perintah FTP yang digunakan untuk proses upload.

A. Menginstall file yang isinya berupa zip dan melakukan unzip terhadap file tersebut di dalam Node Ulno
- apt-get update && apt-get install -y wget ftp
- wget --no-check-certificate "https://drive.google.com/uc?export=download&id=11ra_yTV_adsPIXeIPMSt0vrxCBZu0r33" -O cuaca.zip
- unzip cuaca.zip

B. Melakukan capture mengggunakan wireshark untuk di Node Ulmo

C. Mengirimkan file-file (cuaca.txt dan mendung.jpg) yang sudah di unzip tadi
- ftp
	- open 192.212.1.1 21
		- put cuaca.txt
		- put mendung.jpg
<img width="1430" height="593" alt="Screenshot 2025-10-02 135951" src="https://github.com/user-attachments/assets/5a306a95-33c2-4ba4-9929-caad4e58432d" />

D. Mengidentifikasi perintah FTP yang digunakan untuk proses upload melalui wireshark
- Bisa kita lihat dari hasil capture wireshark dibawah, bahwa perintah FTP untuk melakukan apload file cuaca.txt dan mendung.jpg yang kita lakukan tadi adalah STOR
<img width="1798" height="889" alt="Screenshot 2025-10-02 140740" src="https://github.com/user-attachments/assets/5d1047cb-d64f-4725-815b-00476b190ab1" />

## Soal_9
Eru ingin membagikan "Kitab Penciptaan" di ([link file](https://drive.google.com/drive/folders/1K1pf8Y1wh_y1f6b57VRtjs3hdkeQUao5?usp=sharing)) kepada Manwe. Dari FTP Server Eru, download file tersebut ke node Manwe. Karena Eru merasa Kitab tersebut sangat penting maka ia mengubah akses user ainur menjadi read-only. Gunakan Wireshark untuk memonitor koneksi, identifikasi perintah FTP yang digunakan, dan uji akses user ainur.

A. Menginstall file yang isinya berupa zip dan melakukan unzip terhadap file tersebut di dalam Node Eru
- wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=11ua2KgBu3MnHEIjhBnzqqv2RMEiJsILY' -O kitab_penciptaan.zip

B. Memindahkan file zip tersebut kedalam folder shared, lalu mengubah kepemilikan dari file zip tersebut yang awalnya milik root sekarang milik user ainur
- mv kitab_penciptaan.zip /home/shared/
- chown ainur:ainur /home/shared/kitab_penciptaan.zip

C. Mengubah akses dari ainur menjadi read-only
- chmod 644 /home/shared/kitab_penciptaan.zip
	- 644:
		- Owner (ainur): read & write
		- Group: read
		- Others: read

D. Mengubah konfigurasi ftp user ainur /etc/vsftpd/user_conf/ainur
- nano /etc/vsftpd/user_conf/ainur
	- write_enable=NO
	- local_root=/home/shared
	- download_enable=YES

E. Melakukan capture menggunakan wireshark di Node Manwe untuk memonitor koneksi

F. Melakukan uji akses user ainur
<img width="1637" height="705" alt="image" src="https://github.com/user-attachments/assets/e077b400-ef07-4bce-8770-b010f00b7f9f" />

G. Mengidentifikasi perintah FTP yang digunakan
<img width="1401" height="823" alt="Screenshot 2025-10-02 193620" src="https://github.com/user-attachments/assets/039daa35-cbab-457d-b254-236a57595c98" />

- Dari hasil capture di wireshark kita dapat mengidentifikasi bahwa perintah FTP yang digunakan saat melakukan get pada file zip tersebut adalah SIZE, RETR, dan MDTM

## Soal_10
Melkor yang marah karena tidak diberi akses, mencoba melakukan serangan dengan mengirimkan banyak sekali request ke server Eru. Gunakan command ping dari node Melkor ke node Eru dengan jumlah paket yang tidak biasa (spam ping misalnya 100 paket). Amati hasilnya, apakah ada packet loss? Catat average round trip time untuk melihat apakah serangan tersebut mempengaruhi kinerja Eru.

 A. Melakukan ping sebanyak 100 kali di Node Melkor yang diarahkan ke Node Eru
 <img width="1704" height="206" alt="image" src="https://github.com/user-attachments/assets/3f2c3a95-820c-4f06-b255-4c4d989e84ab" />

 - Setelah melakukan ping sebanyak 100 kali ke arah Node Eru, muncul tampilan di atas, dimana kita dapat simpulkan bahwa:
	 - Tidak terdapat packet loss karena paket yang dikirim dan yang diterima jumlahnya sama
	 - Average RTT = 0.389 ms, artinya server Eru tidak terlalu terpengaruh
 		- Komunikasi antara client (192.212.1.3) dan server (Eru) sangat cepat.
   		- Delay/jeda jaringan sangat kecil, hampir tidak terasa.
     	- Server Eru tidak terbebani atau tidak mengalami gangguan signifikan dari sisi jaringan.

## Soal_11
Sebelum era koneksi aman, Eru sering menyelinap masuk ke wilayah Melkor. Eru perlu masuk ke node tersebut untuk memeriksa konfigurasi, namun ia tahu Melkor mungkin sedang memantau jaringan. Buktikan kelemahan protokol Telnet dengan membuat akun dan password baru di node Melkor kemudian menangkap sesi login Eru ke node Melkor menggunakan Wireshark. Tunjukkan bagaimana username dan password dapat terlihat sebagai plain text.

A. Membuat user baru di dalam Node Melkor
- useradd -m -s /bin/bash eruuser
- echo "eruuser:pass123" | chpasswd

B. Mengaktifkan telnet di Node Melkor
- nano /etc/inetd.conf
	- hapus command pada:
		- telnet  stream  tcp     nowait  root  /usr/sbin/in.telnetd  in.telnetd
- service openbsd-inetd restart (merestart inetd agar perubahan terbaru jalan)
- ss -ltnp | grep :23 (melihat apakah inetd aktif)
<img width="1691" height="111" alt="Screenshot 2025-10-02 195749" src="https://github.com/user-attachments/assets/a55fbca0-bb11-4b7a-b8d1-6e09616723a6" />
<br>

<br>
C. Melakukan capture menggunakan wireshark di Node Manwe untuk menangkap sesi login Eru ke node Melkor
<br>
<br>

D. Login melalui Node Eru ke melkor menggunakan telnet
- telnet 192.212.1.2
<img width="857" height="394" alt="image" src="https://github.com/user-attachments/assets/8510cf75-9066-498c-adfa-3bde5a062eea" />

<br>
E. Melihat melalui wireshark username dan password terlihat sabagai plain text
<img width="1241" height="651" alt="image" src="https://github.com/user-attachments/assets/b22250b6-6e06-4d45-b170-539d745a9018" />
<img width="1234" height="709" alt="image" src="https://github.com/user-attachments/assets/d23402d7-7c43-42a8-93b5-dd7f95fd7d93" />

- Dari hasil capture wireshark kita bisa melihat bahwa telnet mengirim semua data (terminals, username, password, perintah) dengan plain text lewat TCP (port 23).

## Soal_12
Eru mencurigai Melkor menjalankan beberapa layanan terlarang di node-nya. Lakukan pemindaian port sederhana dari node Eru ke node Melkor menggunakan Netcat (nc) untuk memeriksa port 21, 80, dalam keadaan terbuka dan port rahasia 666 dalam keadaan tertutup.

A. Membuka port 21 dan port 80
- apt update && apt install -y vsftpd (untuk membuka port 21/FTP Server)
- apt update && apt install -y apache2 && apt install systemctl && systemctl enable --now apache2 || true (untuk membuka port 80/Web Server)

B. Memindai port dari node Eru ke node Melkor menggunakan Netcat (nc) untuk memeriksa port 21, 80, dan 666
- apt update
- apt install -y netcat-traditional
- nc -zv -w 2 192.212.1.2 21
- nc -zv -w 2 192.212.1.2 80
- nc -zv -w 2 192.212.1.2 666
<img width="1254" height="283" alt="image" src="https://github.com/user-attachments/assets/51437097-83a3-4e54-a403-e80d8c5c2840" />
<img width="1253" height="144" alt="image" src="https://github.com/user-attachments/assets/9f944855-9b95-4003-a32c-8238af7fb295" />

## Soal_13
Setelah insiden penyadapan Telnet, Eru memerintahkan semua koneksi administratif harus menggunakan SSH (Secure Shell) untuk mengamankan jaringan. Lakukan koneksi SSH dari node Varda ke Eru. Tangkap sesi tersebut menggunakan Wireshark. Analisis dan jelaskan mengapa username dan password tidak dapat dilihat seperti pada sesi Telnet. Tunjukkan paket-paket terenkripsi dalam hasil capture sebagai bukti keamanan SSH.

A. Memasang open-ssh di Eru, sekaligus mengatur password dan configurasinya
- apt update
- apt install -y openssh-server
- /usr/sbin/sshd
- ss -ltnp | grep :22
  <img width="1129" height="75" alt="image" src="https://github.com/user-attachments/assets/9ec38ca4-8c1e-4736-9693-741ef8af76f9" />
- nano /etc/ssh/sshd_config
	- PermitRootLogin yes
	- PasswordAuthentication yes
	- ChallengeResponseAuthentication no
- passwd root
  <img width="921" height="245" alt="image" src="https://github.com/user-attachments/assets/933cdaa5-c6d9-400b-86e1-fb504e5d51ec" />
- service ssh restart

B. Menangkap sesi menggunakan wireshark

C. Menjalankan ssh dari Node Varda ke Node Eru
- ssh root@192.212.1.1
  <img width="901" height="541" alt="image" src="https://github.com/user-attachments/assets/62403e19-aacc-46bf-ab70-5b74611190a7" />

D. Melihat paket yang terenkripsi
<img width="1073" height="565" alt="Screenshot 2025-10-02 202340" src="https://github.com/user-attachments/assets/339f7576-41c2-44cc-a03b-83ccb0baf4a1" />
<img width="1919" height="1131" alt="Screenshot 2025-10-02 202232" src="https://github.com/user-attachments/assets/b2a66c83-37f0-477d-8fc5-e3f51c703fb6" />

- Dari analisis paket-paket tersebut dapat disimpulkan bahwa SSH mengenkripsi seluruh sesi (setelah key-exchange) sehingga payload (terminals, username, password, perintah) dikirim sebagai ciphertext. Paket bertanda "Encrypted packet" berisi data yang terenkripsi sehingga tidak bisa dibaca seperti teks biasa, berbeda dengan Telnet yang mengirim plaintext sehingga kredensial terlihat.

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

































































