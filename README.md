# docker-node-remote-dev
提供一个适用于 `Docker` 和 `kubernetes`(k8s) 的远程开发环境，可用 `visual studio code` 或 `jetbrains ides` 进行远程开发，避免本地搭建完整环境，这个镜像的作用相当于提供了一个带SSH的Linux开发环境用于接入开发

## 转发端口到本地
```bash
$ kubectl port-forward svc/dev-node 2222:22 3000:3000
```

## SSH登陆
通过 k8s port-forward 可以方便的将k8s内部服务映射到本地，也避免了外部访问造成的安全隐患，但如果有外部访问需求，只需要更改 `service.yaml` 将端口公开即可

端口: `映射的22端口`
用户名: `root`
密码: `devnode`