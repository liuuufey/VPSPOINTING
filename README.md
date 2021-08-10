# 🔥 VPS POINTING

🔥 TUTORIAL POINTING

Contoh:
Misalkan agar ISP DO support ketengan youtube kan wajib pakai ISP GCP.

Cara Pointingnya:
1. Install scriptnya di VPS GCP

2. Pilih menu Create. Masukan portnya yang sudah open di GCP,
Range 2 - 65335 tapi jangan port yang sudah terpakai di GCP itu sendiri atau bentrok.
Contoh saya memakai port 234 (enter)

3. Masukan IP VPS DO nya (enter)

4. Masukan port VPS DO yang sudah terpakai. Mau buat inject metode apa. Karena disini buat bug SNI maka memakai port VPS DO yang stunnel yaitu port 443 (enter)

5. Done, ketik nomor untuk exit scriptnya

Untuk menjalankan perintah script poitingnya ketik saja: point

Test ssh nya dengan cara buat akun ssh di VPS DO.
Ambil user dan passwordnya saja dari VPS DO untuk host dan port gunakan host/ip dari GCP dan port 234 yang tadi di buka.
Karena tadi memakai metode inject bug SNI maka isi host, port, user, password dan bug SNI nya. Selesai...

Gasss pointing, thanks to Tegar Prayuda
