## Домашние задание № 12
* Создана ветка ansible-3
* Конфигурация db и app инстансов перенесена в роли
* Добавлена роль nginx
* После выполнения playbook разворачивается nginx proxy и приложение доступно на 80 порту
* Добавлен плейбук для создания пользователей, данные с именами и паролями зашифрованы с помощью ansible-vault
*

## Домашние задание № 11
* Были написаны yml файлы app,db, site,  reddit_app_multiple_plays, reddit_app_one_play
* Пересобраны образы packer с использованием ansible. Из json файлов было убраны скрипты
* Из terrafrom module, app, db убраны provishener


## Домашние задание № 10

* Ansible выполнит команду
```
ansible app -m command -a 'rm -rf ~/reddit'
```
* После выполнения команды он выведет сообщение  о том что хорошо бы было использовать state=absent в место rm -rf
* Или можно поместить в ansible.cfg
```
command_warnings=False
```
* Что бы данное сообщение не выводилось


## Домашние Задание №9
* Созданы образы db и app
* Написаны terraform модули db, app,vpc
* Созданы конфигурации stage, prod. Покачто запускаются в одном катологе yc cloud
* Добавлены провиженеры
* Добавлена возможность коннекта к базе данных чере systemd unit
* Приложение коннектится к базе данных
* Создан bucket в object storage



## Домашние задание №6

testapp_IP = 84.201.177.142
testapp_port = 9292

### Создание машин с помощью metadata.yaml

```
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-b,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./metadata.yaml
