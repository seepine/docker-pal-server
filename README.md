# 帕鲁服务端

## 运行
> 其中 `/root/pal_data` 为持久化目录，建议 `sudo chmod 777 /root/pal_data` 赋予权限，以免无法安装游戏服务端

```sh
docker run --name pal -p 8211:8211/udp -v /root/pal_data:/home/steam/Steam seepine/pal-server
```
