#!/bin/bash
BACKUP_DIR=$1
echo "Привет, $User!"
echo "Сегодняшняя дата и время:"
date
echo "А вот сколько свободного места на диске:"
df -h /
echo "Начинаю резервное копирование папки: $BACKUP_DIR"
mkdir $BACKUP_DIR
