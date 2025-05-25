# 🧠 dotfiles  
**[Arch Linux + Hyprland]** — dotfiles

![desktop preview](https://github.com/user-attachments/assets/b75fbb97-696a-40e3-b29e-1582bd8ef419)



**Расширения firefox:**

![изображение](https://github.com/user-attachments/assets/df96bd30-f68b-43cc-8eb7-8ba91abba2eb)

## 📺 На скрине:
- 🎵 `Cava` — аудио визуализация
- 🕒 `Tty-clock` — терминальные часы
- 💻 `Neofetch` — инфо

## 🧩 Используемые программы:
- 📦 Терминал: [`Wezterm`](https://wezfurlong.org/wezterm/)
- 🎧 Музыка: [`Soundcloud`](https://aur.archlinux.org/packages/soundcloud-rpc-bin) клиент
- 🧼 DE/WM: [`Hyprland`](https://github.com/hyprwm/Hyprland)
- 🎨 Тема: [`Catppuccin Mocha`](https://catppuccin.com/)

## 🛠️ Как использовать:
```bash
git clone https://github.com/pikachuska/dotfiles ~/.dotfiles
cd ~/.dotfiles
```



## 🖥️ Как поставить на свой пк:


## Archinstall:

1. Если у вас пк подключен к интернету по проводу, то этот пункт пропустите:
   ```
   iwctl
   device list
   station YOURDEVICE connect YOURSSID

   # Проверка интернета (спустя 3 секунды если оно само не закрылось нажмите CTRL + C)
   ping google.com
   ```
   
2. Установка
   ```
   archinstall
   ```
   Дальше делайте под вас, [гайд](https://youtu.be/x2euFpcv7hw?si=QheQG1ymVKtUUnc4&t=441) (в profile выберите hyprland)

3. После установки нажмите win + q, и в терминале введите данные команнды:


## Commands:

```
# pacman

sudo pacman -Syu waybarsudo pacman -S hyprland waybar kitty rofi dunst thunar fish neofetch \
nvim mpv vlc htop btop bottom cava dolphin pamac pavucontrol easyeffects \
qt5ct qt6ct qt6-base qt5-base polkit-gnome xdg-desktop-portal-hyprland \
xdg-utils wl-clipboard cliphist grim slurp swaylock swayidle \
libreoffice-qt libreoffice-fresh file-roller galculator \
qemu virt-manager obs-studio wireplumber yay


# aur (yay)

yay -S vesktop discord_arch_electron spotify spicetify-cli heroic-games-launcher-bin \
figma-linux obsidian appimagelauncher emoji-picker deepin-gtk-theme \
blender arduino ide-electron peazip-bin postman-bin \
youtube-music spicetify-marketplace visual-studio-code-bin \
itch deskreen electron mailspring qttheme qt6gtk2 \
rustdesk-bin simple-update-notifier

# configs

git clone https://github.com/pikachuska/dotfiles /tmp/dotfiles && cp -r /tmp/dotfiles/.config/* ~/.config/ && rm -rf /tmp/dotfiles



```
