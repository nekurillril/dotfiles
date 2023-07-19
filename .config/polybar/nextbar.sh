killall -q polybar
echo "---" | tee -a /tmp/example_bar.log # Просмотр логов
polybar nextbar >> /tmp/example_bar.log & sleep 5s
killall -q polybar
echo "---" | tee -a /tmp/example_bar.log # Просмотр логов
polybar main >> /tmp/example_bar.log