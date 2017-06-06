## ek9/shell-config - https://github.com/ek9/shell-config
## 99-xinit-tty1.sh
## xinit (startx) if logged in on tty1 automatically

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec xinit -- :1 -nolisten tcp vt$XDG_VTNR
fi

