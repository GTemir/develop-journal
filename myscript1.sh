#!/bin/bash
#read -p "Введите имя пользователя которые вы ищете: " user
#if grep $user /etc/passwd
#then
#echo "Пользователь найден: $user"
#elif ls -lah /home
#echo "Вот посмотрите дом каталог!"
#then
#echo "Пока"
#fi


read -p "Введите имя нового пользователя: " username

if grep "$username" /etc/passwd; then
  echo "Пользователь '$username' уже существует."
  exit 1
fi

sudo useradd -m "$username"

echo "Пароль для $username:"
sudo passwd "$username"

echo "Пользователь $username успешно создан :D"
