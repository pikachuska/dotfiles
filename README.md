# 🧠 dotfiles  
**[Arch Linux + Hyprland]** — dotfiles

[![desktop preview](https://github.com/user-attachments/assets/1089956e-8584-41f8-9468-25cb97e8e8ca)](https://youtu.be/h1PToEBmTp8?si=cxRxOS-Yjfr4piW1)
[![desktop preview](https://github.com/user-attachments/assets/4bf650a7-11f0-4dc3-9271-27be57949eca)](https://youtu.be/h1PToEBmTp8?si=cxRxOS-Yjfr4piW1)





## 📺 На скрине:
- 🕒 `Tty-clock` — терминальные часы
- 💻 `Fastfetch` — инфо (взят с HyDE)

## 🧩 Используемые программы:
- 📦 Терминал: [`Wezterm`](https://wezfurlong.org/wezterm/)
- 🎧 Музыка: [`Soundcloud`](https://aur.archlinux.org/packages/soundcloud-rpc-bin), spicetify клиент
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

3. После установки нажмите win + q, и в терминале введите данные команнды (можете .sh файл запустить с релиза, заместо этого):


## Commands:

```
# pacman

sudo pacman -Syu yay


# aur (yay)

yay -S emoji-picker dunst mpv Thunar waybar wezterm wofi

# configs

git clone https://github.com/pikachuska/dotfiles /tmp/dotfiles && cp -r /tmp/dotfiles/.config/* ~/.config/ && rm -rf /tmp/dotfiles



```
