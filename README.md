
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
