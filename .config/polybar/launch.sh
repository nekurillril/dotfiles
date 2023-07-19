killall -q polybar # Отключение бара, если он включен
echo "---" | tee -a /tmp/example_bar.log # Просмотр логов
polybar main >> /tmp/example_bar.log # Запуск бара example и запись его лога
