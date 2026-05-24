#!/bin/bash

echo "Запуск тестирования..."

if [ ! -f "index.html" ]; then
  echo "Ошибка: файл index.html не найден"
  exit 1
fi

if ! grep -q "Здравствуйте, пользователь" index.html; then
  echo "Ошибка: приветствие пользователя не найдено"
  exit 1
fi

echo "Тесты успешно пройдены"
exit 0