# PhoneFix Pro QC Report

Tarikh QC: 20 Jun 2026
Versi diuji: v36 / v1.2 auto Firebase
Link test: http://127.0.0.1:5175/index.html?v=36

## Keputusan Automatik

- [x] Server local 5175 hidup dan serve `index.html` latest.
- [x] JavaScript syntax lulus.
- [x] Manifest PWA sah.
- [x] Service worker versi latest: `phonefix-pro-v36-v12-auto-firebase`.
- [x] Logo official ada dalam folder `assets/brand`.
- [x] Tiada duplicate ID utama.
- [x] Semua 165 handler button/input jumpa fungsi yang sepatutnya.
- [x] Semua fungsi core wujud.
- [x] Semua 186 label utama ada translation BM dan English.
- [x] Firebase config auto tertanam dalam app.
- [x] Database ID dikunci kepada `lubuk-it-main`.
- [x] Signup approval dikunci kepada role `staff`.

## Checklist Fungsi

- [x] Login admin/staff.
- [x] Signup/request account.
- [x] Pending account message.
- [x] Boss/admin approve staff.
- [x] Role admin/staff access control.
- [x] Auto Firebase config tanpa isi manual.
- [x] Cloud upload/download/listener functions.
- [x] Ticket baru.
- [x] Gambar bukti ticket dengan label.
- [x] Deposit receipt dengan label.
- [x] Auto download gambar bukti/deposit.
- [x] WhatsApp auto selepas ticket.
- [x] Ticket detail.
- [x] Update status ticket.
- [x] Collect/full payment receipt dengan password.
- [x] Customer list.
- [x] Warranty countdown dan claim warranty.
- [x] POS cart.
- [x] Payment QR modal.
- [x] Confirm payment dengan password login.
- [x] Stock reduce selepas jualan.
- [x] Admin tambah/edit produk, servis dan pakej.
- [x] Staff tidak boleh tambah/edit item atau lihat kos.
- [x] Staff report form.
- [x] Admin feedback staff report.
- [x] Export laporan.
- [x] Export/import database JSON.
- [x] Barcode scanner logic.
- [x] Manual barcode/SKU fallback.
- [x] Learn repair page.
- [x] Theme dark/light.
- [x] Language BM/English.
- [x] PWA install files.

## Perlu Test Manual Pada Device

- [ ] Camera permission untuk barcode scanner.
- [ ] BarcodeDetector support pada browser/device sebenar.
- [ ] Download gambar ke phone/gallery.
- [ ] WhatsApp buka app sebenar dan attach gambar secara manual/share sheet.
- [ ] Firebase live sync antara dua device sebenar.
- [ ] Firestore rules production.

## Nota

Automated QC mengesahkan struktur dan fungsi app. Fungsi yang bergantung pada camera, gallery, WhatsApp app, dan Firebase internet sebenar masih perlu diuji pada device sebenar kerana ia bergantung kepada permission dan browser/phone.
