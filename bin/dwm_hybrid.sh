#!/bin/bash

# front_back
colour_gry="\x01" # lys grå front/mellem grå back
colour_wht="\x02" # hvid front/lys blå back
black_on_yellow="\x03"
colour_dgry="\x04" # hvid front/mellem grå back
colour_blk="\x05" # mellem grå front/mørke blå back
seksfarve="\x06" # lås grå front/mørke blå back
syvfarve="\x07" # lys blå front/mellem grå back
ottofarve="\x08" # mellem grå front/mørke blå back
nifarve="\x09"
afarve="\x0a"
bfarve="\x0b"
cfarve="\x0c"
dfarve="\x0d"
efarve="\x0e"


#${lysblaa_morkblaa}${hvid_lysblaa}

print_online() {
  online="$(ping -c 1 -q google.com >/dev/null 2>&1 && echo ONLINE || echo OFFLINE)"
  echo -ne "${seksfarve}${syvfarve} ${online}"
}

print_volume() {
  volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
  echo -ne "${ottofarve}${nifarve} ♫ ${volume} % ${afarve}"
}

print_wifi() {
	essid="$( iwgetid | awk '{ print $2 }' | sed 's/ESSID:"//' | sed 's/"//' )"
	echo -ne "${efarve} ${essid} "
}

print_bat() {
    BATT=$( acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi' )
    STATUS=$( acpi -b | sed 's/.*: \([a-zA-Z]*\),.*/\1/gi' )
    if ([ $BATT -le 5 ] && [ $STATUS == 'Discharging' ]); then
        # Beep
        echo -e "\007" >/dev/tty10 && sleep 0.2
        echo -e "\007" >/dev/tty10 && sleep 0.2
        echo -e "\007" >/dev/tty10 && sleep 0.2
        # Blink
        echo 'on' > /proc/acpi/ibm/light && sleep 1
        echo 'off' > /proc/acpi/ibm/light
    fi
  echo -ne "${bfarve}${cfarve} ${BATT}% ${STATUS}${dfarve} "
}

while true; do
	xsetroot -name "$(print_online) $(print_volume) $(print_bat)$(print_wifi)"
  sleep 60
done
