![sake_with_me](https://user-images.githubusercontent.com/68269509/92687940-5fac3300-f377-11ea-83e2-09963cd5f31e.jpg)

# SAKE With ME
このアプリケーションはユーザーが好きな飲食店、日本酒を自由に投稿できます。飲みたい日本酒から飲食店を探すことができて飲食店ではどのような日本酒が飲めるのか詳細を知ることができます。

### 制作背景
  - ペルソナ: 日本酒、飲食店が好きな人
  - ペルソナが抱える問題: 日本酒が好きだが現状の飲食店検索アプリでは日本酒の銘柄から店を探すことが困難で新しい日本酒と出会うことが難しい。

  - 問題が発生する原因: 現状の飲食店アプリはメニュー内容はわかるが何のお酒を取り扱っているか明記されていない。
<br>
<br>
<br>

## App URL
・https://sake-with-me.herokuapp.com/
<br>
<br>
<br>

## テスト用アカウント

- email: jahgyr0@gmail.com
- password: sake5555
- BASIC認証ID: hikaru
- BASIC認証password: hikaru1229
<br>
<br>
<br>

## Usage

新規登録から名前、e-mail, passwordをしていたメールアドレスに送信することでい日本酒、飲食店投稿、
飲食店を検索してから<br>その店で飲める日本酒を登録できます。
<br>
<br>
<br>


## 目指した課題解決

現状の飲食店アプリでは飲みたい日本酒から店を探すことはできず<br>
日本酒を軸に飲食店を探すのが難しい現状があります。<br>
そこで日本酒好きなユーザーが日本酒の情報とどこでその日本酒飲めるのか投稿でき、シェアできるような<br>サービスがあれば日本酒が好きなユーザーは店を探す手間が省かれ新しい日本酒に出会えるきっかけになると考えました。
<br>
<br>


## 洗い出した要件

- メール認証機能を用いたログイン機能
  - 目的: ユーザー登録することによりお気に入りした投稿を振り返ることができて他ユーザーの投稿内容を閲覧することができます。
  <br>
  <br>
- 飲食店投稿機能
  - 目的: この機能で行ってよかった飲食店を投稿することによりいつでも店の情報を振り返ることができます。
  <br>
  <br>
- 日本酒投稿機能
  - 目的: 実際に飲んで気に入った日本酒があれば投稿することによりいつでもその日本酒の情報を振り返ることができます。
- 飲食店、日本酒紐付け機能
  - 目的: 実際に訪れた店で飲めた日本酒をユーザー同士が投稿することで飲んでみたい日本酒の視点からお店を選ぶことが実現できます。
  <br>
  <br>
- Googlemap機能
  - 目的: 飲食店に訪問したい時に店の詳細な地図を知ることができます。
  <br>
  <br>
- いいね機能
  - 目的: 他ユーザーが投稿した店に行ってみたい時にお気に入り登録をするとマイページからいつでもその店の詳細を見ることができます。
  <br>
  <br>
- 検索機能
  - 複数条件から店選び、日本酒を探すことができて、例えばその日飲みたいビールがスーパードライだった場合でも条件を指定することでお店を選べます。
  <br>
  <br>
- 音声入力機能
  - 目的: 文字を打つのが難しい状況の時、音声入力で飲食店、日本酒を検索することができます。
  <br>
  <br>
- モデルテスト機能
  - 目的: 投稿内容のバリデーション確認のため。
  <br>
  <br>
- コメント機能
  - 目的: ユーザーのリアルな声を反映させているため店を選ぶ判断基準の一つとなります。
  <br>
  <br>
- 複数枚画像投稿、画像スライドショー機能
 - 目的: 複数枚の画像を投稿することで投稿ユーザーはどのような料理、酒があったのか見返すことができて、他ユーザーは店を選ぶ判断基準の一つとなります。
<br>
<br>
<br>

## 実装した機能

### ログイン機能
- 入力フォームで記入したeメールにととメールアドレス確認メールが届きリンクをクリックすると登録が完了します。

<img width="379" alt="mail" src="https://user-images.githubusercontent.com/68269509/92732256-298ba500-f3b1-11ea-8b63-fc85f301628a.png">
<br>
<br>
<br>

### 飲食店投稿機能
- headerの飲食店投稿をクリックすると下記画像のページに遷移して項目を記入するとその店で飲める日本酒を追加できて、内容を送信すると飲食店一覧ページに表示されます。
<br>
<br>
<br>


![restaurant](https://user-images.githubusercontent.com/68269509/92736354-2d212b00-f3b5-11ea-9169-40b14aaa744d.jpg)

<img width="302" alt="restaurant2" src="https://user-images.githubusercontent.com/68269509/92736363-2eeaee80-f3b5-11ea-830d-9c674b85753b.png">
<br>
<br>
<br>

### 日本酒投稿機能

- headerの日本酒投稿をクリックすると下記画像のページに遷移して項目を記入するとその店で飲める日本酒を追加できて、内容を送信すると飲食店一覧ページに表示されます。
<br>
<br>
<br>

![sake](https://user-images.githubusercontent.com/68269509/92737013-bcc6d980-f3b5-11ea-80f5-d8044feb7be1.jpg)

<img width="302" alt="sake2" src="https://user-images.githubusercontent.com/68269509/92737435-16c79f00-f3b6-11ea-9268-f35b20ad92aa.png">
<br>
<br>
<br>

### 飲食店、日本酒紐付け機能

- 飲食店の詳細ページからその店で飲める日本酒一覧を表示又そのリンクをクリックすると<br>
日本酒の詳細ページへ遷移できる。又その日本酒はどの飲食店で飲めるのかを一覧表示してます。
<br>
<br>
<br>

![sakes](https://user-images.githubusercontent.com/68269509/92739090-7d00f180-f3b7-11ea-8ba3-2f73c02ccac5.gif)

<br>
<br>
<br>

### google map機能

- 店の住所から緯度経度を取得して詳細な住所を表示します。<br>
また、現在位置から店の行き方を知りたい方はこちらをクリックすると現在一から店までのルートを表示してくれます。
<br>
<br>
<br>
<br>

### いいね機能

- ログイン状態の時に飲食店詳細ページに遷移するとお気に入りハートアイコンがありクリックするといいねが追加されてマイページで確認することができます。
<br>
<br>
<br>

![favorite](https://user-images.githubusercontent.com/68269509/92834829-73a67200-f415-11ea-97e0-38531f1ec147.gif)
<br>
<br>
<br>

![ufav](https://user-images.githubusercontent.com/68269509/92836663-a2254c80-f417-11ea-88f1-a7cc62555684.gif)

<br>
<br>
<br>

### 検索機能

- 日本酒、飲食店一覧にそれぞれ複数条件を指定して検索することができます。また、条件に合わなければflashメッセージが表示され全listが表示されます。
<div style="display: flex;">
<img width="302" alt="ransackrestaurant" src="https://user-images.githubusercontent.com/68269509/92837738-e82ee000-f418-11ea-8b09-60ffe78d0fdb.png">

<img width="302" alt="ransacksake" src="https://user-images.githubusercontent.com/68269509/92838425-b9653980-f419-11ea-936e-0995a6b6aeee.png">
</div>

<br>
<br>
<br>

### 音声入力機能

- web Speach Apiを使用して音声で入力された内容を飲食店検索、日本酒検索のフリーワードに直接<br>
入力されます。


### モデルテスト機能

- 日本酒投稿、ユーザー新規登録、飲食店新規投稿のバリデーションをテストしてます。<br>
特に日本酒新規投稿に関しては精米歩合,日本酒度の正規表現のテスト、アルコール度数のstring型からint型に変更するメソッドのテストも行ってます。

### コメント機能

- Action cableを用いて非同期でコメント入力できる機能になっておりコメントの数が表示されます。
<br>
<br>
<br>
<img width="500" alt="こめんと" src="https://user-images.githubusercontent.com/68269509/92840481-17931c00-f41c-11ea-88aa-50c7eee35d58.png">

<br>
<br>
<br>

### 画像プレビュー機能、複数枚画像投稿、画像スライドショー機能
<br>
<br>
- 飲食店投稿の際、どの画像を送信するのかプレビューが表示され、複数枚画像投稿することができます。また、詳細ページでswiper.jsを使用して画像をスライドショー形式で見ることができます。
<br>
<br>

![つけたいファイル名](https://user-images.githubusercontent.com/68269509/92843628-ea486d00-f41f-11ea-805a-fe27c3d1e4bf.gif)





## 実装予定機能
- フォロー機能


## データベース設計

  <img width="993" alt="er" src="https://user-images.githubusercontent.com/68269509/92833322-b10a0000-f413-11ea-8959-268336d1b29d.png">



## ローカルでの動作方法
<br>
<br>

下記コマンドを実行することでローカル環境で使用できます。

```
 % git clone https://github.com/Nagao-hikaru/sake_with_me.git
```

```
% cd sake_with_me
```

```
% rails db: migrate
```

```
% rails db: create
```
```
% rails db:migrate
```

## 開発環境

- Ruby2.6.5
- Rails Rails 6.0.3.2
- RSpec 3.9
- MySQL 5.6.47
- JavaScript
- Swiper
- Web Speech API
- Google maps JavaScript API
- Geocoding API
- Direction API
- AWS S3
- Heroku



<br>
<br>