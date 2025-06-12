#!/bin/bash
#echo "There is current directory: "
#pwd
#echo "The user logged: "				#echo
#whoami							#command
#wether="cloud"						#variables
#day=2							#variables
#echo "Today is $wether take warm clothes"		#using variables
#echo "$day days that wether is $wether"

#mydir=`pwd`						#Command = varriable
#echo "Current directory is $mydir"			#using varriables


#read -p "Введите два числа через пробел: " a b		# Здесь мы используем ключ -p чтобы вывести текст перед вводом его пользователем
#var1=$((a+b))						# Здесь мы  задаем значение переменной var1 и присваиваем ему сумму двух значений введенных пользователем
#echo "Их сумма равна $var1"
#var2=$((a*b))						# анологично var1
#echo "Их произведение равно $var2"



read -p "Введите два числа: " a b
if [ "$a" -gt "$b" ]; then
		echo "$a больше $b"
elif [ "$a" -eq "$b" ]; then
		echo "$a равно $b"
elif [ "$a" -lt "$b" ]; then
		echo "$a меньше $b"
fi
