# usacloud

## > "Unofficial" CLI client for the Sakura Cloud

[usacloud](https://github.com/sacloud/usacloud)用Dockerイメージ

## `Dockerfile` links

- [`0.3.0`,`latest`(Dockerfile)](https://github.com/sacloud/usacloud-docker/tree/master/)

## 使い方(dockerコマンドを直接使う場合)

### 起動コマンド書式

```bash
docker run -it --rm sacloud/usacloud [操作対象リソース] [コマンド] [オプション]
```

`usacloud`コマンドの基本的な使い方は[Usacloudドキュメント](https://sacloud.github.io/usacloud/)を参照してください。

### 実行例

必須パラメータ(さくらのクラウド[トークン、シークレット])をオプション指定しています。

```bash
docker run -it --rm sacloud/usacloud --token "Your Token" --secret "Your Secret" 
```

パラメータは環境変数で渡すことも可能です。

```bash
docker run -it --rm -e SAKURACLOUD_ACCESS_TOKEN -e SAKURACLOUD_ACCESS_TOKEN_SECRET sacloud/usacloud 
```

## 使い方(whalebrewを使う場合)

```bash
# インストール
whalebrew install sacloud/usacloud
# 実行(-e SAKURACLOUD_ACCESS_TOKEN -e SAKURACLOUD_ACCESS_TOKEN_SECRET -v $PWD:/workdir が指定されている状態となる)
usacloud -h
```
