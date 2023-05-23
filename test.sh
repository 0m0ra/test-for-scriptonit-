#!/bin/bash
input_file=data/inpuut.txt
output_file=data/output.txt

chmod +x ./script.sh
./script.sh > /dev/null

echo "Тест аргументов"

if [[ $? -eq 1 ]] # "$?" - код ошибки с которым выполнилась программа
then
    echo "Тест №1 пройден"
else
    echo "Тест №1 провален"
    echo "Нет аргументов"
    exit 1
fi 

./script input.txt output.txt aboba > /dev/null

b=cat $output_file
if [[ $b -eq 5 ]]
then 
    echo "Тест №2 пройден"
else
    echo "Тест №2 провален"
    echo "Ожидалось: 5"
    echo "Вывод: $b"
    exit 1
fi