#!/bin/bash
#By TegarPrayuda
clear

echo ""
echo "-----------------------------------------"
echo "              VPS POINTING GASSS               "
echo "-----------------------------------------"
echo ""
echo " Script By TegarPrayuda"
echo ""
PS3="$(printf -- "------------------------------------------------------------------")""
Pilih Opsi Yang Ingin Digunakan : "
printf -- "\n------------------------------------------------------------------\n"
select opt in "Create" "Cek" "Delete" "Exit" ; do

  case $opt in
      "Create")
read -p "PORT YANG MAU DI BUKA : " scr ;
read -p "MASUKAN IP VPS NYA : " desth ;
read -p "PORT EXTERNAL IP VPS : " destp ;
sudo iptables -t nat -A PREROUTING -p tcp --dport "$scr" -j DNAT --to-destination "$desth":"$destp"
sudo iptables -t nat -A POSTROUTING -j MASQUERADE
echo "Done!"
      ;;
      "Cek")
sudo iptables -t nat -v -L PREROUTING -n
      ;;
      "Exit")
exit
printf -- "Done!\n\n"
      ;;
      "Delete")
sudo iptables -t nat -v -L PREROUTING -n --line-number
read -p "Select Number : " num ;
sudo iptables -t nat -D PREROUTING "$num"
printf -- "Done\n\n"
      ;;
   "A")
      exit
      ;;
     *)
echo
      ;;
  esac
done
