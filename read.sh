#!/bin/bash
echo -n "Введите имя и возраст через пробел: "
read username age
echo "$username тебе серьезно $age лет?"


# Можно и так сократить код:
read -p "Введите два числа через пробел " var1 var2
echo "Ты ввел $var1 и $var2! "
