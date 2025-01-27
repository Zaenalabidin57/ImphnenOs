# IMPHNEN OS (BASED)
![Logo](media/imphnen.png) 
## Operating System Berbasis Fesnuk

Tujuan dibuatkan project gajelas ini ya karena buat memfasilitasi para member malas ngoding yang bukannya ngoding tapi malah buka fesnuk, ya daripad bolak bali ngoding fesnuk, ngoding fesnuk, ya langsung fesnuk aja gaperlu ngoding, 

## FITUR
- Live images (gaperlu ribet ngurusin installasi linux, trus ngehapus windows kalian) tinggal bikin bootable pakai rufus (``ingat pake mode DD jangan mode ISO``)
- Konek Wifi EZ (kali linux senggol ni boss)
- langsung buka fesnuk tanpa ba bi bu
- cuman bisa buka fesnuk
- fesnuk doang jir yang bisa


## Cara buat
download ISO nya di sini

[IphnenOs.iso](https://yadi.sk/d/ZN1YW-uw2pcsBQ) 

kemudian buat bootable menggunakan rufus / ventoy
``ingat untuk rufus pakai mode DD jangan ISO``
 
atau pakai qemu (kalau pro dan rajin ngoding)
```
qemu-system-x86_64 -cdrom lokasi/iso/nya.iso -boot d -m 2048
```

![gambar dsw](media/fesnuk.png) 


setelah boot akan keluar grub, klik enter ae (masih WIP JIR jadi belum pakai custom grub masih bawaan arch btw linuk)


nanti setelah boot akan keluar network manager (layar kao warna biru) untuk navigasi menggunakan arrow atas bawah kiri kanan kotak x segitiga enter, untuk user wifi masuk dahulu ke "Activate a connection" buat konek wingfi nyah, udah itu klik exit, langsung buka fesnuk.

![fesnuk](media/nmtui.png) 

buat keluarnya klik tombol power hehe.

## KONTRIBUSI
buat korang yang pengen juga bantu kami (abodin doang sih), bisa bantu (plis)
dengan cara
- pakai arch btw linux 
- have some common sense
- menyukai dedek lembut
- bisa pakai git (opsional)
- masih normal (opsional)

### HOW-TO

install dulu archiso
```
sudo pacman -S archiso
```
sudah tuh clone ni repo
```
git clone https://github.com/shigure/ImphnenOs.git
```
kemudian modif atau apalah bebas yang penting jangan sampe kernel panic

buat iso
```
sudo mkarchiso -v -w /lokasi/workdir/bebas/tapi/kalau/udah/hapus -o
/lokasi/iso/nya.iso /lokasi/repo/ImphnenOs/releng

```
nanti buat jalankannya pakai run_archiso
```
run_archiso -i /lokasi/iso/nya.iso
```

begituwj
auk ah

## File penting
- airootfs = folder root live iso nya, jadi kesono edit something something
- packages.x86_64 = package yang di install (masukin filenya yang mau dipasang)
- profiledef.sh = file penting anjenggg, kalau misalnya menambahkan file ke
  airootfs wajib menambahkan ``file_permission`` 
```
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/root/.fesnuk"]="0:0:777"
  ["/root/wp.jpg"]="0:0:777"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/dfwm"]="0:0:755"
  ["/usr/local/bin/st"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
# ["/lokasi/filenyah/tanpa/airootfs/"]="0:0:755" 755 ae biar jalan, yang
penting jalan ga peduli safety, hehe
)
```
- airootfs/root = lokasi root directory pas boot dia homo directorynya disini,
  ada file penting kek .fesnuk buat auto run aplikasi (malas setting systemd)
just strapping some shit lately,
- airootfs/etc = sama kek /etc di linux kao, bisa ae copas dari linux mu biar
  cepet
- airootfs/usr/local/bin = buat nyimpen binary aplication kalau nambah gitu,
  jangan lupa tambahin file_permission di profiledef.sh
- airootfs/root/wp.jpg = boneka abodin

## TODO

[x] bikin custom neofetch
[x] bikin calamares installer (biar bisa install ni linuj jelek bin ampas)
[x] bikin windows manager (dinfwm, tapi ya nanti implementasi Hyprland "kalau
gak malas")
[x] bikin webpage
[x] bikin repo server (uhh, biar repo yang di aur tinggal comot, ada beberapa
package penting kek visual-studio-code (bukan oss-code), waydroid(buat native
android app), proton-GE (gayming), terabox, dll)
[x] idk, pukulin atmint 


