#заходим через Putty со своим ip
ip -4 a

#определяем имя машины двумя разными командами
hostname
uname

#определяем архитектуру нашей машины
arch

#выводим дату и время в формате "31/12/2099 15:40" 
date + "%d/%m/%Y %H:%M"
date --help
date +"%d/%m/%Y %H:%M"

#выводим на экран полный список алиасов пользователя.Создаем алиас для команды newdate,чтобы она выводила дату в формате "31/12/2099 15:40"
alias
alias newdate='date + "%d/%m/%Y %H:%M"'
newdate
alias newdate='date +"%d/%m/%Y %H:%M"'
newdate

#выводим на экран переменные среды
env

#изменяем переменную домашнего каталога пользователя
export HOME=/odelchi

#определяем местоположение в системе файла вызываемого командой bash
which bash

#выводим команды, которыми пользовались
history