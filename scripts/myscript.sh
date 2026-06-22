#!/bin/bash
BACKUP_DIR=$1
echo "Привет, $User!"
echo "Сегодняшняя дата и время:"
date
echo "А вот сколько свободного места на диске:"
df -h /
echo "Начинаю резервное копирование папки: $BACKUP_DIR"
if [ -z "$BACKUP_DIR" ]; then
	echo "Ошибка вы не указали имя папки"
	echo "Использование: ./myscript.sh [имя_папки]"
elif [ -d "$BACKUP_DIR" ]; then
	echo "Имя папки уже используется!"
else
	mkdir $BACKUP_DIR
	echo "Папка $BACKUP_DIR создана"
fi
