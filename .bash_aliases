# -----------------------------------------------------------------------------------
export HISTCONTROL=ignoreboth # remove dublicaten from history

# -----------------------------------------------------------------------------------
# Dir-Colors
export LS_OPTIONS=" --color=auto"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then

    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias _l='ls -lh $LS_OPTIONS'
    alias _ll='ls -lah $LS_OPTIONS'
    alias ls='ls $LS_OPTIONS'

    alias dir='dir $LS_OPTIONS'
    alias vdir='vdir $LS_OPTIONS'

    alias grep='grep $LS_OPTIONS'
    alias fgrep='fgrep $LS_OPTIONS'
    alias egrep='egrep $LS_OPTIONS'

fi

# ------------------------------------------------------------------------------------------------
alias _update="clear; sudo apt-get update "
alias _upgrade="clear; sudo apt-get upgrade "
alias _install="clear; sudo apt-get install "
alias _remove="clear; sudo apt-get remove "
alias _cache_search="clear; apt-cache search "
alias _policy="clear; apt-cache policy "

# -----------------------------------------------------------------------------------
alias _edit_sources.list="sudo nano /etc/apt/sources.list"
alias _edit_.bash_aliases="nano /home/toor/.bash_aliases"
alias _edit_sites_enabled="sudo nano /etc/apache2/sites-enabled/000-default"
alias _edit_php.ini="sudo nano /etc/php5/apache2/php.ini"

alias _source='source /home/toor/.bash_aliases'

# ###################################################################################
# Sys info

# lscpu | grep "^CPU op-mode" # CPU-Arch


# ###################################################################################
# mkdir {dir} && cd {dir}

# _mkcd();
function _mkcd(){ 
    mkdir $1 && cd $1; 
}
# -------------------------------
# MONO-DEVELOP

alias _make_c#='function __make_c_sharp(){
    clear &&  echo "Compiling C# source into executable: $1" && mono-csc $1 && unset -f __make_c_sharp;
};
__make_c_sharp '
# -------------------------------
# GIT

function _InitGit(){

    if [ "$1" == "" ]; then
        echo " _InitGit <repository name>";
        return
        
    fi

    echo "# $1" >> README.md
    git init
    git add README.md
    git commit -m "update"
    git remote add origin "https://github.com/ch3ll0v3k/$1"
    git push -u origin master

}

function _GitIt(){

    git add .
    git commit -m "upload"
    git push origin master

}
# -------------------------------
function _ip_loc(){

    if [ "$1" == "" ]; then
        echo "Usage: _ip_loc <eth[x]>"
        return
    fi

    eth=$1
        
    /sbin/ifconfig "$eth" | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'
    /sbin/ifconfig "$eth" | grep "inet " | sed s/"inet addr:"//i | sed s/"          "//i

}
# -------------------------------
function _ip_inet(){

    wget -qO- http://ipecho.net/plain
    echo ""

}
# -------------------------------
function _return_ip(){

    wget -qO- http://ipecho.net/plain

}


# -------------------------------
# -------------------------------





# ###################################################################################



# ###################################################################################
# Download file @ <H:M>

# echo 'wget -c https://github.com/pompiduskus/deff-data/archive/master.zip' | at 13:17
# -----------------------------------------------------------------------------------

alias _dmesg_errors="dmesg | egrep -i --color 'error|critical|failed'"
alias _dmesg_less=" dmesg | less"
alias _dmesg_tail=" dmesg | tail"
# -----------------------------------------------------------------------------------
alias _scan_loc="clear; nmap -sP 192.168.0.*"
alias _scan_dlink="clear; nmap -Pn 192.168.0.50"


alias _c="clear"
alias _open_dir=" nautilus "

alias _get_usb="dmesg | grep tty"
alias _get_all_tty="python -m serial.tools.list_ports"
alias _get_busy_tyy='ps -ef | grep tty && echo " \n kill nedet PID "'

alias _restart_network_manager='sudo service network-manager restart'
alias _restart_networking='sudo service networking restart'

alias _app_start="sudo service apache2 start"
alias _app_stop="sudo service apache2 stop"
alias _app_restart="sudo service apache2 stop && sleep 3  && sudo service apache2 start"

alias _mysql_start="sudo service mysql start"
alias _mysql_stop="sudo service mysql stop"
alias _mysql_restart="sudo service mysql stop && sleep 3 && sudo service mysql start"


alias _web_services_start="sudo service mysql start && sudo service apache2 start"
alias _web_services_stop="sudo service mysql stop && sudo service apache2 stop"

# -----------------------------------------------------------------------------------
# Make a backup of backups while preserving 
# all file permissions & soft/hard links using rsync to a remote box2:
#
# rsync -az -H --delete --numeric-ids /source box2:/dest/
# ----------------------------------------------------------------------------------
alias _radio_zenfm='cvlc "http://lb.zenfm.be/zenfm.mp3" '
alias _radio_brussel='cvlc "http://mp3.streampower.be/stubru-high" '

# -----------------------------------------------------------------------------------
_PI_IP="192.168.0.21"
_PCDUINO_IP="192.168.0.220"

alias _SSH_TO_PI="ssh -X root@$_PI_IP"
alias _SSH_TO_PCDUINO="ssh linaro@$_PCDUINO_IP -p 24500"

# -----------------------------------------------------------------------------------
alias _vnc_to_pi_0="xtightvncviewer -quality 7 -compresslevel 9 192.168.0.184:0"
alias _vnc_to_pi_1="xtightvncviewer -quality 7 -compresslevel 9 192.168.0.184:1"

alias _get_dir_size="du -sh "

# -----------------------------------------------------------------------------------
alias _gear_generator=" mono /_tmx_/_soft/dev/GearModeling/GearGenerator3/GearGenerator3.exe &"
alias _gcode_emulator="java -jar /_tmx_/3d-print/GCodeSimulator/GCodeSimulator.jar &"
alias _processing="/_tmx_/_soft/dev/Processing/processing-2.2.1/processing "
alias _arduino="/_tmx_/Arduino/arduino-1.5.8/arduino "
alias _fritzing="/_tmx_/electro/fritzing/fritzing-0.7.0b.linux.i386/Fritzing "

# -----------------------------------------------------------------------------------
alias _vlc_cam=" vlc v4l2:///dev/video0 "

alias _slicer="/_tmx_/3d-print/Slic3r/1.2.6-experimental/Slic3r/bin/slic3r &"
alias _slicer_cmd="/_tmx_/3d-print/Slic3r/1.2.6-experimental/Slic3r/bin/slic3r --load /_tmx_/3d-print/Slic3r/1.2.6-experimental/config.ini "
alias _repetier_host="/_tmx_/3d-print/Repetier-Host/RepetierHost/repetierHost"
alias _cura="cura --ini=/_tmx_/3d-print/Cura/test_profile.ini &"

# -----------------------------------------------------------------------------------
alias _serial="minicom -b 115200 -o -D /dev/ttyUSB0"

# ----------------------------------------------------------------------------------- 
alias _sqlmap="python /_tmx_/x/sqlmap-dev/sqlmap/sqlmap.py "


# ------------------------------------------------------------------------------------------------
#ARCH=arm
#export PATH=/usr/lib/gcc-cross/arm-linux-androideabi-:$PATH
#CROSS_COMPILE=arm-none-linux-gnueabi-
#CROSS_COMPILE=arm-linux-gnueabi-
#export PATH=$PATH:/_tmx_/micro-controllers/RPI/cross-tools/arm-bcm2708/arm-bcm2708-linux-gnueabi/bin
# ------------------------------------------------------------------------------------------------
#sudo ln -s /usr/bin/arm-linux-gnueabihf-g++ /usr/bin/arm-linux-gnu-g++
#sudo ln -s /usr/bin/arm-linux-gnueabihf-g++ /usr/local/bin/arm-linux-gnu-g++

#sudo ln -s /usr/bin/arm-linux-gnueabihf-gcc /usr/bin/arm-linux-gnu-gcc
#sudo ln -s /usr/bin/arm-linux-gnueabihf-gcc /usr/local/bin/arm-linux-gnu-gcc

# ------------------------------------------------------------------------------------------------
#   ROOT
#
#   PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#
#   NON-ROOT
#
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#
# ------------------------------------------------------------------------------------------------
#eval "$(dircolors /_tmx_/dircolors.bash/dir-colors-list)";