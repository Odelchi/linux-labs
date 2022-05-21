#выводим путь до текущего каталога
pwd

#вывод на экран содержимого корневого каталога системы
cd /
pwd
ls

#выводим информацию о нашем пользователе
grep odelchi: /etc/passwd

#выводим "длинный список файлов" в домашнем каталоге
cd /home/odelchi
ls -a

#задание 2
#создание каталогов html archive
mkdir html
mkdir archive
ls

#вывожу на экран содержимое каталога /usr/share, ограничиваем вывод результата 5 строками и записываем в файл index.html
cd /usr/share
ls
man ls
ls | head -5
ls | head -5 > /home/odelchi/html/index.html
cd /home/odelchi/html
ls
cat index.html

#подсчитываем кол-во строк, слов и байтов в файле
wc index.html
cd ~
cd /home/odelchi
ls

#переименовываем каталог
mv html html_public
cd /home/odelchi/html
cd /home/odelchi/html_public

#делаем копию файла
cp index.html ~/archive
cd ..
cd archive
ls
cd ..
ls -R
ls -sort -R
ls -sort -r

#выводим список файлов в домашнем каталоге, отсортировав в порядке обратном алфавитному. Сохраняем вывод в файл
ls -sort -r > ~/html_public/home.html
cd ~/html_public
ls

#делаем копию файла в домашнюю директорию
cp home.html ~
cd ..
ls
cat home.html

#создаем символьную и жесткую ссылки к файлу index.html
ln -s html_public/index.html html_public/link_s.html
ls
ls -1
ln html_public/index.html html_public/link_h.html
cat html_public/link_h.html

#удаляем файл index.html и смотрим как себя ведут ссылки
rm html_public/index.html
cd html_public
ls
cat link_s.html
cat link_h.html
cd ..

#определяем место занимаемое нашими каталогами в системе
du html_public archive
