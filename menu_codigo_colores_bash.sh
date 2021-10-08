#!/bin/bash

#Colores
red="\e[1;31m"
green="\e[1;32m"
yellow="\e[1;33m"
blue="\e[1;34m"
purple="\e[1;35m"
cyan="\e[1;36m"
white="\e[1;37m"
end="\e[0m"

function helpPanel(){
	echo -e "${green}\n [!]./menu_propio.sh <parametros> <argumento>${end}"
	echo -e "${blue}\t[-r]${end}${red} < Texto en rojo > ${end}"
	echo -e "${blue}\t[-g]${end}${green} < Texto en verde > ${end}"
	echo -e "${blue}\t[-y]${end}${yellow} < Texto en amarillo >${end}"
	echo -e "${blue}\t[-b]${end}${blue} < Texto en azul >${end}"
	echo -e "${blue}\t[-p]${end}${purple} < Texto en morado >${end}"
	echo -e "${blue}\t[-c]${end}${cyan} < Texto en cyan >${end}"
	echo -e "${blue}\t[-w]${end}${white} < Texto en blanco >${end}"
	exit 1
}

function danger(){
	echo -e "${red}\t[!] ./menu_propio.sh -h${end}"
	echo -e "${yellow}\tPara mostrar el menu de ayuda ${end}"
	exit 1
}

if [[ ${#} -eq 0 ]]; then
	danger
fi

while getopts ":r:g:y:b:p:c:w:h" arg; do
	case ${arg} in
		r)
			texto=$OPTARG
			echo -e "${red}\t[+] $texto${end}"
			echo -ne "\t${red}Codigo: ${end}"; echo "$red $texto $end";;
		g)
			texto=$OPTARG
			echo -e "${green}\t[+] $texto${end}"
			echo -ne "\t${green}Codigo: ${end}"; echo "$green $texto $end";;
		y)
			texto=$OPTARG
			echo -e "${yellow}\t[+] $texto${end}"
			echo -ne "\t${yellow}Codigo: ${end}"; echo "$yellow $texto $end";;
		b)
			texto=$OPTARG
			echo -e "${blue}\t[+] $texto${end}"
			echo -ne "\t${blue}Codigo: ${end}"; echo "$blue $texto $end";;
		p)
			texto=$OPTARG
			echo -e "${purple}\t[+] $texto${end}"
			echo -ne "\t${purple}Codigo: ${end}"; echo "$purple $texto $end";;
		c)
			texto=$OPTARG
			echo -e "${cyan}\t[+] $texto${end}"
			echo -ne "\t${cyan}Codigo: ${end}"; echo "$cyan $texto $end";;
		w)
			texto=$OPTARG
			echo -e "${white}\t[+] $texto${end}"
			echo -ne "\t${white}Codigo: ${end}"; echo "$white $texto $end";;

		h)
			helpPanel;;
		?)
			echo -e "${red}\tOpcion Invalida -${OPTARG}${end}"
			danger;;
	esac
done

echo -e ${white}
echo "[-] Todos los argumentos [@]: ${@}"
echo "[-] arg 1: $1"
echo "[-] arg 2: $2"
echo "[-] arg 3: $3"
echo "[-] arg 4: $4"
echo "[-] arg 5: $5"
echo "[-] arg 6: $6"
echo "[-] arg 7: $7"
echo "[-] arg 8: $8"
echo "[-] arg 9: $9"
echo "[-] arg10: ${10}"
echo "[-] OPTIND: $OPTIND"
echo "[-] arg [#]: ${#}"
echo -e ${end}
