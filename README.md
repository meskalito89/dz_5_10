ЗАДАЧА.  
Необходимо создать пользователей из списка users.txt с домашними папками, затем задать им пароль из списка pass.txt. Записать файл приветствия в домашней директории пользователя, заменив username на имя пользователя. С помощью sed заменить оболочку с /bin/sh на /bin/bash.

В качестве ответа отправьте файл со скриптом и последние три строки файла /etc/passwd.

users.txt
user_1 #пользователь бухгалтерии
user_2 #пользователь техподдержки
user_3 #пользователь отдела кадров
pass.txt
user_1:123456
user_2:654321
user_3:098765

Greetings!
Hello "username", it nice to meet you!
