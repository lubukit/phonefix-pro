# PhoneFix Pro - Setup Firebase Cloud Sync

Panduan ringkas untuk sambungkan PhoneFix Pro kepada Firebase supaya data boleh sync multi device.

## 1. Buat Firebase Project

1. Pergi ke https://console.firebase.google.com
2. Tekan **Add project** / **Create project**.
3. Nama project contoh: `phonefix-pro`.
4. Google Analytics boleh pilih **Off** dahulu jika mahu simple.
5. Tekan **Create project**.

## 2. Register Web App

1. Dalam Firebase project, tekan ikon **Web** `</>`.
2. App nickname: `PhoneFix Pro`.
3. Tekan **Register app**.
4. Firebase akan paparkan config seperti:

```js
const firebaseConfig = {
  apiKey: "...",
  authDomain: "...",
  projectId: "...",
  appId: "..."
};
```

Salin nilai ini:

- `apiKey`
- `authDomain`
- `projectId`
- `appId`

## 3. Enable Firebase Authentication

Untuk **Production mode**, Firestore perlu tahu app/user sudah login ke Firebase. PhoneFix Pro akan guna **Anonymous Auth** untuk sync cloud.

1. Dalam Firebase sidebar, pergi ke **Build > Authentication**.
2. Tekan **Get started**.
3. Pergi tab **Sign-in method**.
4. Pilih **Anonymous**.
5. Tekan **Enable**.
6. Tekan **Save**.

Nota: Login admin/staff dalam PhoneFix Pro masih dikawal oleh app. Anonymous Auth ini digunakan supaya Firestore Production Rules boleh benarkan app sync dengan selamat daripada mode terbuka.

## 4. Buat Firestore Database

1. Dalam sidebar Firebase, pergi ke **Build > Firestore Database**.
2. Tekan **Create database**.
3. Pilih location paling dekat, contoh `asia-southeast1` jika ada.
4. Pilih **Production mode**.
5. Tekan **Create**.

## 5. Rules Production Untuk PhoneFix Pro

Pergi **Firestore Database > Rules**, paste rules ini:

```js
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /phonefixPro/{docId} {
      allow read, write: if request.auth != null;
    }
  }
}
```

Rules ini hanya benarkan device/app yang sudah berjaya Firebase Auth untuk baca/tulis database PhoneFix Pro.

## 6. Masukkan Config Dalam PhoneFix Pro

1. Buka PhoneFix Pro.
2. Login admin.
3. Pergi ke **Laporan**.
4. Bahagian **Cloud Sync Multi Device**.
5. Isi:
   - Firebase apiKey
   - Firebase authDomain
   - Firebase projectId
   - Firebase appId
   - Database ID / Kedai, contoh `lubuk-it-main`
6. Tekan **Save & Connect Sync**.

Jika berjaya, status akan jadi **Cloud synced** atau **Cloud ready**.

Jika keluar **Firebase Auth gagal**, semak balik Authentication > Sign-in method > Anonymous sudah Enable.

Jika keluar **Cloud error - semak rules/config**, semak rules Firestore dan config Firebase.

## 7. Cara Guna Multi Device

Device pertama:

1. Isi Firebase config.
2. Tekan **Upload Data Ini**.

Device kedua:

1. Buka app yang sama.
2. Login admin.
3. Isi Firebase config yang sama.
4. Database ID / Kedai mesti sama, contoh `lubuk-it-main`.
5. Tekan **Download Cloud**.

Selepas itu, data akan sync melalui Firestore.

## 8. Upload Ke GitHub

1. Buat repository baru di GitHub.
2. Upload semua file dalam folder `phonefix-pro`.
3. Pastikan file ini ada:
   - `index.html`
   - `manifest.json`
   - `sw.js`
   - `icons/`
   - `assets/brand/`

Untuk GitHub Pages:

1. Pergi ke repo **Settings > Pages**.
2. Source pilih branch `main`.
3. Folder pilih `/root`.
4. Save.
5. Buka link GitHub Pages yang diberi.

## 9. Login Admin Default

Email:

```text
admin
```

Password:

```text
Padugiler01@
```

Selepas masuk, admin boleh approve signup user baru.
