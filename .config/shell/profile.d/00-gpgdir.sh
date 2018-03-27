## ek9/shell-config - https://github.com/ek9/shell-config
## 00-gpghome.sh
## Sets up custom GnuGP Home directory

# set GNUPGHOME dir
GPGHOMEDIR="$HOME/auth/gpg"
if [ ! -d "$GPGHOMEDIR" ]; then
    mkdir -p "$GPGHOMEDIR"
    chmod 700 "$GPGHOMEDIR"
fi
export GNUPGHOME=$GPGHOMEDIR

