# pavucontrol
# sudo adduser ch3ll0v3k www-data
# -----------------------------------------------------------------------------------
alias _apache2_from_here=" php -S localhost:8080 "
# -----------------------------------------------------------------------------------
# sudo strace updatedb 2>&1 | grep -o "^open.*O_RDWR.*"

# -----------------------------------------------------------------------------------
alias _i386-elf-gcc="/m-sys/_soft/x86/dev-tools/cross-gcc/gcc/bin/i386-elf-gcc "
alias _i386-elf-ld="/m-sys/_soft/x86/dev-tools/cross-gcc/gcc/i386-elf/bin/ld "
# tune2fs -l /dev/sda1 **OR** /dev/sdb1*  | grep 'Filesystem created:'

# mknod /dev/ttyUSB0 c 188 0
# u == unbufferd
# c == ???
# -----------------------------------------------------------------------------------
# sudo sed -i 's/geteuid/getppid/' /usr/bin/vlc
#if [[ $- =~ "i" ]]; then
#    echo "scp is now save!!!"
#fi

# -----------------------------------------------------------------------------------
alias _feh_l="feh -l "
alias _feh_info=" identify -verbose "

alias _get_mod="stat -c '|%A|%a => [%n]' "
# -----------------------------------------------------------------------------------
alias _get_sse2="grep sse2 /proc/cpuinfo"

# -----------------------------------------------------------------------------------
# http://www.commandlinefu.com/commands/browse
# -----------------------------------------------------------------------------------
#cat script.sh | ssh some_server bash -s - <arguments> 
#disown -a && exit // Close shell keeping all subprocess running 

# -----------------------------------------------------------------------------------
# amixer set 'Master' 10%+ - to increase max sound 10%
# amixer set 'Master' 10%- - to decrease max sound 10%
# amixer set 'Master' 10% - to get 10% of the max sound
# amixer set 'Master' 80% - to get 80% of the max sound

#If you want to set the volume to other than 'Master', check the list by:
#amixer scontrols
# -----------------------------------------------------------------------------------
alias _VBOX="virtualbox --debug "
alias _equalizer_qt="/m-sys/prog/python/edu/audio/_pyaudio/equalizer_qt"


function equalizer(){
    VARS=$*;
    cd /m-sys/prog/python/edu/audio/equalizer/
    ./equalizer $VARS;
    ls -lah ./out

}

# -----------------------------------------------------------------------------------
alias _SIGN_AND_ALIGN="/m-sys/prog/android/tmx-tools/SIGN-AND-ALIGN.sh "
# -----------------------------------------------------------------------------------
alias _video_spec="lshw -numeric -C display"
# -----------------------------------------------------------------------------------
alias _speed_test_500MB="wget http://speedtest.sea01.softlayer.com/downloads/test1000.zip -O /dev/null"
alias _speed_test_100MB="wget http://speedtest.sea01.softlayer.com/downloads/test100.zip -O /dev/null"
alias _speed_test_10MB="wget http://speedtest.sea01.softlayer.com/downloads/test10.zip -O /dev/null"

#"curl -o /dev/null http://*** "

# -----------------------------------------------------------------------------------
# NOTIFY

alias _NOTIFY="/m-sys/sys-tools/python/sounds/NOTIFY "

# -----------------------------------------------------------------------------------
# WATCHES

alias _watch_statement="watch -c -d -n 2 "
alias _watch_sensors="watch -c -d -n 2 sensors"

# -----------------------------------------------------------------------------------
alias _vlc="vlc $1 &> /dev/null "

# -----------------------------------------------------------------------------------
export HISTCONTROL=ignoreboth # remove dublicaten from history
export SWIFT_HOME=/m-sys/AI/tts/Cepstral/prog/
export HISTCONTROL=ignoreboth # remove dublicaten from history
# -----------------------------------------------------------------------------------
export GRADLE_HOME=/m-sys/_soft/x86/dev-tools/android-studio/gradle/gradle-2.8
export PATH="${PATH}:$GRADLE_HOME/bin:/m-sys/prog/android/android-sdk"


export CLASSPATH=${CLASSPATH}:/m-sys/prog/android/android-sdk

#syntax checker
#-----------------------------------------------------------------------------------
# cat /proc/asound/card0/pcm0p/sub0/hw_params
# pacmd list-sinks

#-----------------------------------------------------------------------------------
# Archives

alias _tar_compress_this_dir='tar -cf - . | gzip -v9 > "${PWD##*/}.tar.gz"'

#-----------------------------------------------------------------------------------
# chromium --version [Chromium 37.0.2062.120 Built on Debian 7.6, running on Debian 7.9]
#
# chromium --allow-file-access-from-files  
#
#

alias _dev_chrome="chromium  --allow-file-access-from-files "

#-----------------------------------------------------------------------------------
alias _ADD_IP="/m-sys/x/IPs/ADD_IP"

#-----------------------------------------------------------------------------------
# ANDROID

export ANDROID_SDK_HOME="/m-sys/prog/android/android-sdk/"

#Set the ANDROIDSDK env var to the /path/to/the/sdk
export ANDROIDSDK="/m-sys/prog/android/android-sdk"

#Set the ANDROIDNDK env var to the /path/to/the/ndk
export ANDROIDNDK=/m-sys/prog/android/android-ndk/android-ndk-r10e

#Set the ANDROIDAPI to the targeted API version (or leave it unset to use the default of 14).
export ANDROIDAPI=15

#Set the ANDROIDNDKVER env var to the version of the NDK downloaded, e.g. the current NDK is r10e
#export ANDROIDNDKVER=r10e

alias _ANDROID_STUDIO="/m-sys/_soft/x86/dev-tools/android-studio/bin/studio.sh "

alias _android="/m-sys/prog/android/android-sdk/tools/android "
alias _android_sdk="/m-sys/prog/android/android-sdk/tools/android sdk "

alias _adb="/m-sys/prog/android/android-sdk/platform-tools/adb ";
alias _adb_push="/m-sys/prog/android/android-sdk/platform-tools/adb -d install -rt ";
alias _adb_pull="/m-sys/prog/android/android-sdk/platform-tools/adb pull ";
alias _adb_logcat="/m-sys/prog/android/android-sdk/platform-tools/adb logcat ";

alias _lint="/m-sys/prog/android/android-sdk/tools/lint ";

alias _Android-Project="/m-sys/prog/android/tmx-tools/Android-Project/Android-Project "

# -----------------------------------------------------------------------------------
# Fire-Wall

alias _ufw_status="sudo ufw status verbose "
alias _ufw_enable="sudo ufw enable "
alias _ufw_disable="sudo ufw disable "
alias _ufw_reset="sudo ufw reset "

#alias _ufw_="sudo ufw "
#alias _ufw_="sudo ufw "
#alias _ufw_="sudo ufw "

# -----------------------------------------------------------------------------------
# Fast CD

# TMP

alias _cd_zergo_www="cd /m-sys/prog/web/work/zergo/zergo.loc/www/ "

# Glob
alias _cd_osdev="cd /m-sys/prog-proj/OS-dev/ "
alias _cd_prog="cd /m-sys/prog/ "
alias _cd_prog-proj="cd /m-sys/prog-proj/ "

alias _cd_android="cd /m-sys/prog/android/"
alias _cd_android_proj="cd /m-sys/prog/android/proj/"
alias _cd_android_tmx_tools="cd /m-sys/prog/android/tmx-tools/"

# Glob->Loc
alias _cd_python="cd /m-sys/prog/python/ "
alias _cd_mql5="cd /m-sys/prog/mql5/ "

# Deff
alias _cd_music="cd /m-sys/music/ "

# Predeff
alias _cd_Desktop="cd $HOME/Desktop "
alias _cd_Desktop="cd $HOME/Pictures "
alias _cd_Downloads="cd $HOME/Downloads "

alias _cd_sublime_packages="cd $HOME/.config/sublime-text-3/Packages/"

alias _force_fsck_reboot="sudo touch /forcefsck && sudo reboot"
# -----------------------------------------------------------------------------------
# /m-sys/sys-tools/*

alias _replace_spaces="/m-sys/sys-tools/python/replace_spaces.py"
alias _audio_converter="/m-sys/sys-tools/python/audio_converter.py"

# -----------------------------------------------------------------------------------
alias _youtube-dl="/m-sys/_soft/x86/youtube-dl/youtube-dl "
alias _youtube-dl-audio="/m-sys/_soft/x86/youtube-dl/youtube-dl --prefer-ffmpeg --extract-audio --audio-format mp3 --audio-quality 0 "
# _youtube-dl --audio-format mp3 --audio-quality 0 "http://link"
# -----------------------------------------------------------------------------------
# chorts

alias _subl="subl "
alias _play_music="mpg123 -Ccz /m-sys/music/chill_outs/*.mp3 "
alias _play="mpg123 -Ccz ./*.mp3 "
# -----------------------------------------------------------------------------------
# Dir-Colors
export LS_OPTIONS=" --color=auto"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then

    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias ls='ls $LS_OPTIONS'
    alias dir='dir $LS_OPTIONS'
    alias vdir='vdir $LS_OPTIONS'
    alias grep='grep $LS_OPTIONS'
    alias fgrep='fgrep $LS_OPTIONS'
    alias egrep='egrep $LS_OPTIONS'

    alias _ln='ls -lah | nl -v 0 -w 4 -s "| "'    
    alias _l='ls -lah $LS_OPTIONS'
    alias _top="top -d 1 "
    alias _IT_WORKS="echo 'IT WORKS'"

fi

# alias _l_by_size='ls -lAh $1 | sort -k2,4 '
function _l_by_size(){
    echo " _l_by_size: [$1]"; ls -lAh $1 $LS_OPTIONS | sort -k2,4;

}



# ------------------------------------------------------------------------------------------------
alias _UNIX_STAMP="date +%s "

alias _PUT_TO_CHILLOUT_LIST="/m-sys/music/chill-out/add.sh $*"
alias _EDIT_CHILLOUT_LIST=" nano /m-sys/music/chill-out/chill-out.list"

# ------------------------------------------------------------------------------------------------
alias _update="sudo apt-get update "
alias _upgrade="sudo apt-get upgrade "
alias _install="sudo apt-get install "
alias _remove="sudo apt-get remove "
alias _cache_search="apt-cache search "
alias _policy="apt-cache policy "

alias _dpkg_search="dpkg --get-selections | grep -v deinstall | grep "

# -----------------------------------------------------------------------------------
# Display all soundcards and digital audio devices -> "arecord -l"

alias _get_audio_devs="aplay -l &&  arecord -l "

# Display all PCMs defined -> "record -L"



# -----------------------------------------------------------------------------------
alias _edit_sources.list="sudo nano /etc/apt/sources.list"
alias _ifconfig='/sbin/ifconfig'
alias _traceroute="traceroute -w 0.25 -q 1 "

alias _edit_.bashrc="nano $HOME/.bash_aliases"
alias _source_.bashrc='source $HOME/.bash_aliases'


alias _history_search="cat $HOME/.bash_history | grep " 
# ###################################################################################
# Sys info

# lscpu | grep "^CPU op-mode" # CPU-Arch


alias _get_mod="lsmod | grep "


# ###################################################################################

function _whois_this(){
    echo "-------------------------------------------";
    echo "THIS: ($1)";
    whois "$1" | grep -i "Organization:\|Address:\|Country:\|StateProv:"
    echo "-------------------------------------------";

}

# ------------------------------
function _mkcd(){ 
    mkdir $1 && cd $1; 
}

# -------------------------------
# MONO-DEVELOP

# alias _make_c#='function __make_c_sharp(){
#     clear &&  echo "Compiling C# source into executable: $1" && mono-csc $1 && unset -f __make_c_sharp;
# };
# __make_c_sharp '

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
    git commit -m "git init"
    git remote add origin "https://github.com/ch3ll0v3k/$1"
    git push -u origin master

}

function _GitIt(){

    git add .
    git commit -m "descr:[$*]"
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
function _trim() {
    local str="$*"
    str="${str#"${str%%[![:space:]]*}"}" # leading whitespaces
    str="${str%"${str##*[![:space:]]}"}" # trailing whitespaces
    echo -n "$str"
}

# -------------------------------
function _nohup_this(){

    echo " see .bash_aliases"
    #nohup node server.js > /dev/null 2>&1 &

    # nohup means: Do not terminate this process even when the stty is cut off.
    # > /dev/null means: stdout goes to /dev/null (which is a dummy device that does not record any output).
    # 2>&1 means: stderr also goes to the stdout (which is already redirected to /dev/null). 
    # You may replace &1 with a file path to keep a log of errors, e.g.: 2>/tmp/myLog
    # & at the end means: run this command as a background task.
}

# -------------------------------
function _get_usb_devices(){

    UDEVADM="/sbin/udevadm"

    for sysdevpath in $(find /sys/bus/usb/devices/usb*/ -name dev); do
        (
            syspath="${sysdevpath%/dev}"
            devname="$($UDEVADM info -q name -p $syspath)"
            [[ "$devname" == "bus/"* ]] && continue
            eval "$($UDEVADM info -q property --export -p $syspath)"
            [[ -z "$ID_SERIAL" ]] && continue
            echo "/dev/$devname - $ID_SERIAL"
        )
    done
}

# -------------------------------
function _calc(){

    #python -c "print(float($*))"
    python -c "print($*)"

}
# -------------------------------




# ###################################################################################
# SYS-TOOLS

alias _POST_DATA_post="/m-sys/x/python/post-data/post-data "
alias _POST_DATA_get="/m-sys/x/python/post-data/get-data "
alias _UNIXSTAMP_TO_DATE="/m-sys/sys-tools/python/unixstamp_to_date.py "

alias _GET_ISS_PREDICTION='wget -o /dev/null "http://api.open-notify.org/iss-pass.json?lat=51.96&lon=3.6&n=10" -O LAT.cords &&  python -m json.tool LAT.cords | grep risetime'

# ###################################################################################
# ###################################################################################

alias _adb_start_server="sudo /m-sys/prog/android/android-sdk/platform-tools/adb start-server"
alias _adb="/m-sys/prog/android/android-sdk/platform-tools/adb"

# ###################################################################################
# Download file @ <H:M>

# echo 'wget -c https://github.com/pompiduskus/deff-data/archive/master.zip' | at 13:17
# -----------------------------------------------------------------------------------

alias _dmesg_errors="dmesg | egrep -i --color 'error|critical|failed'"
alias _dmesg_less=" dmesg | less"
alias _dmesg_tail=" dmesg | tail"
# -----------------------------------------------------------------------------------
alias _scan_loc_0="clear; nmap -sP 192.168.0.*"
alias _scan_loc_1="clear; nmap -sP 192.168.1.*"
alias _scan_dlink="clear; nmap -Pn 192.168.0.50"

alias _c="clear"
alias _cl="clear && ls -lah"

alias _iface="/sbin/ifconfig | grep 'inet addr\|HWaddr'"

alias _open_dir=" nautilus "

alias _get_usb="dmesg | grep tty"
alias _get_all_tty="python -m serial.tools.list_ports"
alias _get_busy_tyy='ps -ef | grep tty && echo " \n kill nedet PID "'

# NETWORK
alias _restart_network_manager='sudo service network-manager restart'
alias _restart_networking='sudo service networking restart'

# ---------------------------------------------------------------------
# APACHE
alias _apache2_status="sudo service apache2 status"
alias _apache2_start="sudo service apache2 start"
alias _apache2_stop="sudo service apache2 stop"
alias _apache2_restart="sudo service apache2 stop && sleep 1 && sudo service apache2 start"
alias _edit_sites_enabled="sudo nano /etc/apache2/sites-enabled/000-default"
alias _edit_php.ini="sudo nano /etc/php5/apache2/php.ini"

# MYSQL
alias _mysql_start="sudo service mysql start"
alias _mysql_stop="sudo service mysql stop"
alias _mysql_restart="sudo service mysql stop && sleep 1 && sudo service mysql start"

# WEB-ALL
alias _web_all_start="sudo service mysql start && sudo service apache2 start"
alias _web_all_stop="sudo service mysql stop && sudo service apache2 stop"
alias _web_all_restart="sudo service mysql restart && sudo service apache2 restart"

# ---------------------------------------------------------------------
alias _im_watching="echo 'I am watching you !!!' | sudo wall -n"

# -----------------------------------------------------------------------------------
# Make a backup of backups while preserving 
# all file permissions & soft/hard links using rsync to a remote box2:
#
# rsync -az -H --delete --numeric-ids /source box2:/dest/
# ----------------------------------------------------------------------------------
alias _radio_zenfm='mpg123 "http://lb.zenfm.be/zenfm.mp3" '
alias _radio_brussel='mpg123 "http://mp3.streampower.be/stubru-low.mp3" '

# -----------------------------------------------------------------------------------
_TENBIT_IP="31.24.227.118"
alias _SSH_TO_TENBIT.NEt="ssh root@$_TENBIT_IP";

NANO="root@$_PCDUINO_IP"

_PI_IP="192.168.0.21"
alias _SSH_TO_PI=" ssh -X root@$_PI_IP "
alias _SSH_TO_PI_RSA_21=" ssh -X -i /m-sys/linux/ssh/id_rsa root@192.168.0.21 "
alias _SSH_TO_PI_RSA_22=" ssh -X -i /m-sys/linux/ssh/id_rsa root@192.168.0.22 "

_PCDUINO_IP="192.168.0.112"
alias _SSH_TO_PCDUINO=" ssh root@$_PCDUINO_IP "

_ZERGO_IP="176.112.204.78";

alias _SSH_TO_ZERGO="ssh root@$_ZERGO_IP"
# -----------------------------------------------------------------------------------
alias _chroot2pi=' sudo /m-sys/electro/Micro-Cs/RPI-all/chroot-in2-pi/chroot_In2_pi.sh';

# -----------------------------------------------------------------------------------
alias _vnc_to_pi_0="xtightvncviewer -quality 7 -compresslevel 9 192.168.0.184:0"
alias _vnc_to_pi_1="xtightvncviewer -quality 7 -compresslevel 9 192.168.0.184:1"

alias _get_dir_size="du -sh "

# -----------------------------------------------------------------------------------
alias _gear_generator=" mono /_tmx_/_soft/dev/GearModeling/GearGenerator3/GearGenerator3.exe &"
alias _gcode_emulator="java -jar /_tmx_/3d-print/GCodeSimulator/GCodeSimulator.jar &"
alias _processing="/_tmx_/_soft/dev/Processing/processing-2.2.1/processing "
alias _arduino="sudo /m-sys/prog/arduino/1.5.8-x32/arduino "
alias _fritzing="/_tmx_/electro/fritzing/fritzing-0.7.0b.linux.i386/Fritzing "

# -----------------------------------------------------------------------------------
alias _vlc_cam=" vlc v4l2:///dev/video0 "

# alias _slicer="/m-sys/3d-print/3d-print/Slic3r/bin/slic3r --load='/m-sys/3d-print/3d-print/Slic3r/SLK_config.ini' &"

function _slic3r_r(){
    cd /m-sys/3d-print/tools/Slic3r/Slic3r/bin/
    ./slic3r --load="../Main.Tmx.ini"

}

alias _repetier_host="/_tmx_/3d-print/Repetier-Host/RepetierHost/repetierHost"
alias _cura="cura --ini=/_tmx_/3d-print/Cura/test_profile.ini &"

# -----------------------------------------------------------------------------------
alias _serial="sudo minicom -b 115200 -o -D /dev/ttyUSB0 "

alias _mpg123="mpg123 -C "

# ----------------------------------------------------------------------------------- 
alias _sqlmap="python /m-sys/x/web/sqlmap/sqlmap.py "
alias _wpscan="/m-sys/x/web/wpscan/wpscan.rb "

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
# NOTE: http://open-notify.org/Open-Notify-API/ISS-Pass-Times/
