# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* 使い方

  git cloneでファイルをダウンロード

  ```
  https://github.com/masatoshisugita/life_app.git
  ```

  dockerの中にrubyやpostgresのイメージがなければdocker pullコマンドで、Docker hubから持ってくる

  ```
  docker pull ruby:2.5.3
  docker pull postgres
  ```
  dockerのimageを作成

  ```
  docker-compose build
  ```

  dbを作成し、migrateする

  ```
  docker-compose run web rails db:create
  docker-compose run web rails db:migrate
  ```

  コンテナを起動

  ```
  docker-compose up
  ```
  
  ブラウザでlocalhost:3000にアクセスでtopページが開く
