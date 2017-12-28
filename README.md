# zabbix-demo

## Login
* UserName: Admin
* Password: zabbix

# API 操作 Demo

## 获取API Info

```sh
$> curl -v -d \
'{
  "jsonrpc": "2.0",
  "method": "apiinfo.version",
  "params": [],
  "id": 1
}' \
-H 'Content-Type: application/json' \
http://localhost:7080/api_jsonrpc.php
```

## Login

```sh
$> curl -v -d \
'{
    "jsonrpc": "2.0",
    "method": "user.login",
    "params": {
        "user": "Admin",
        "password": "zabbix"
    },
    "id": 1
}' \
-H 'Content-Type: application/json' \
http://localhost:7080/api_jsonrpc.php
```

## 获取用户

```sh
$> curl -v -d \
'{
    "jsonrpc": "2.0",
    "method": "user.get",
    "params": {
        "output": "extend"
    },
    "auth": "<auth result>",
    "id": 1
}' \
-H 'Content-Type: application/json' \
http://localhost:7080/api_jsonrpc.php
```

## 获取所有Host

```sh
$> curl -v -d \
'{
    "jsonrpc": "2.0",
    "method": "hostinterface.get",
    "params": {
        "output": "extend",
        "hostids": "30057"
    },
    "auth": "<auth result>",
    "id": 1
}' \
-H 'Content-Type: application/json' \
http://localhost:7080/api_jsonrpc.php
```
