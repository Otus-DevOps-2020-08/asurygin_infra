
## Домашние задание №6

bastion_IP = 84.201.141.84

someinternalhost_IP  = 10.129.0.17


```
 ssh  -i ~/.ssh/id_rsa -AJ  appuser@84.201.141.84 appuser@10.129.0.17
```

Задание 2
Для подключения командой someinternalhost к серверу необходимо сделать алиас на рабочей машине
```
cat ~/.bashrc

alias someinternalhost='ssh  -i ~/.ssh/id_rsa -AJ  appuser@84.201.141.84 appuser@10.129.0.17'

source ~/.bashrc
