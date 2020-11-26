# Terraform-EC2-RDS

![figure](https://qiita-user-contents.imgix.net/https%3A%2F%2Fqiita-image-store.s3.ap-northeast-1.amazonaws.com%2F0%2F230954%2F905a8d0b-c398-0470-1b0e-5bcbe0f1a318.jpeg?ixlib=rb-1.2.2&auto=format&gif-q=60&q=75&s=4ea803fedd2a626d8bba1cb3a8e5f60e)

Make `secret.tfvars` and make variables.

```tfvars
ssh_cidr_blocks = [] // ← allowed SSH connection
db_name =
db_username =
db_password =
```

See `Makefile`.

```sh
make plan
```

```sh
make apply
```

```sh
make destroy
```

## 記事を書きました

- [Terraformを用いてEC2およびRDSを立ち上げ、Laravelの環境を構築する](https://qiita.com/toshikisugiyama/items/c827c031ee6a57a2caa0)