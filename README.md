# asurygin_infra
asurygin repository



## Домашние задание №5
Задание 1

bastion_IP = 84.201.176.192

someinternalhost_IP  = 10.129.0.17
```
 ssh  -i ~/.ssh/id_rsa -AJ  appuser@84.201.177.192 appuser@10.129.0.17
```

Задание 2
Для подключения командой someinternalhost к серверу необходимо сделать алиас на рабочей машине
```
cat ~/.bashrc

alias someinternalhost='ssh  -i ~/.ssh/id_rsa -AJ  appuser@84.201.177.192 appuser@10.129.0.17'

source ~/.bashrc
