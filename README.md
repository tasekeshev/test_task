---------------------------------------------------------------------------------
- Тестовое задание - DevOps                                                     -
- Необходимо развернуть grafana, использующую в качестве базы данных            -
- postgres, и спроксировать запросы к grafana с помощью nginx, в grafana должен -
- быть настроен дашборд, показывающий текущие данные о количестве               -
- соединений к базе postgres.                                                   -
- Технические ограничения:                                                      -
- 1. ОС ubuntu 22.04;                                                           -
- 2. Grafana и postgres должны работать в docker-контейнерах, данные            -
- grafana и postgres должны сохраняться после перезапуска контейнеров;          -
- 3. Nginx должен работать не в контейнере.                                     -
- На выходе должен быть скрипт и набор конфигурационных файлов, с               -
- помощью которых можно развернуть описанный проект.                            -
- Бонус-задание:                                                                -
- Написать ansible-playbook, с помощью которого можно развернуть                -
- описанный проект                                                              -
---------------------------------------------------------------------------------

#Запустить скрипт script.sh
Данный скрипт обновит список репозиториев, установит docker.io, docker-compose и Nginx
Затем скрипт скопирует заранее подготовленный файл
конфигурации nginx, с котором спроксированы запросы с 80 порта на 3000 порт, проверит конфигурацию nginx 
и произведет его перезапуск
Затем запустит команду docker-compose up -d

После grafana будет доступна по адресу: http://localhost

Проверить 

Будет необходимо в grafana добавить data source, в нашем случае - это prometheus. Контенер имеет ip адрес 172.20.0.5
Нужно добавить http://172.20.0.5:9090

Далее, добавляем dashboard из файла dashboard.json и испортируем ее в grafana


#Перед запуском ansible-playbook установить ansible:
apt install ansible

Запустить playbook.yaml

ansible-playbook playbook.yaml

Данный playbook обновит список репозиториев, установит docker.io, docker-compose и Nginx
Затем playbook скопирует заранее подготовленный файл
конфигурации nginx, с котором спроксированы запросы с 80 порта на 3000 порт, проверит конфигурацию nginx 
и произведет его перезапуск
Затем запустит команду docker-compose up -d

После grafana будет доступна по адресу: http://localhost

Будет необходимо в grafana добавить data source, в нашем случае - это prometheus. Контенер имеет ip адрес 172.20.0.5
Нужно добавить http://172.20.0.5:9090

Далее, добавляем dashboard из файла dashboard.json и испортируем ее в grafana
