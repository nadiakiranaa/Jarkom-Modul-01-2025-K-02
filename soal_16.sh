//nc 10.15.43.32 3403//

 //search ftp mencari trafic yang ada username & password//
 //- USER ind@psg420.com//
//- PASS {6r_6e#TfT1p//

// What credential did the attacker use to log in?
Format: user:pass//
//ind@psg420.com:{6r_6e#TfT1p

//How many files are suspected of containing malware?
Format: int//
//5//
//What is the hash of the first file (q.exe)?
Format: sha256//
//32e1b3732cd779af1bf7730d0ec8a7a87a084319f6a0870dc7362a15ddbd3199  q.exe//

// What is the hash of the second file (w.exe)?//
//Format: sha256//
//08eb941447078ef2c6ad8d91bb2f52256c09657ecd3d5344023edccf7291e9fc//

//What is the hash of the third file (e.exe)?//
//Format: sha256//
//32e1b3732cd779af1bf7730d0ec8a7a87a084319f6a0870dc7362a15ddbd3199//

//What is the hash of the fourth file (r.exe)?//
//Format: sha256//
//4ebd58007ee933a0a8348aee2922904a7110b7fb6a316b1c7fb2c6677e613884//

//What is the hash of the fifth file (t.exe)?//
//Format: sha256//
//10ce4b79180a2ddd924fdc95951d968191af2ee3b7dfc96dd6a5714dbeae613a//

Congratulations! Here is your flag: KOMJAR25{Y0u_4r3_4_g00d_4nalyz3r_d4mReaYqLcwsuXpkhfN3UPQAS}