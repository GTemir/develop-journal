#!/bin/bash
read -p "Введите имя пользователя: " name
echo " Привет $name! Ты находишься в каталоге "
pwd
echo "$name" >> /home/loggining.txt

if [[ $EUID -ne 0 ]]; then
    echo "Этот скрипт должен быть запущен с sudo!" >&2
    exit 1
fi
echo "Проверим соединения"
if ping -q -c 1 -W 1 google.com > /dev/null 2>&1; then
    echo "DNS резолвится"
else
    echo "DNS не резолвится"
fi

if ping -q -c 1 -W 1 8.8.8.8 > /dev/null 2>&1; then
    echo "Интернет есть"
else
    echo "Интернета нет"
fi

echo "Обновим систему!"
sudo apt update -qq
sudo apt install htop mc -y -qq
echo "Утилиты htop и mc установлены или уже были установлены!"

echo "Запускаем htop...."
sleep 3
htop


