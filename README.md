![sake_with_me](https://user-images.githubusercontent.com/68269509/92687940-5fac3300-f377-11ea-83e2-09963cd5f31e.jpg)


# SAKE With ME

### 概要
<br>
飲みたい日本酒からお店を探せるグルメアプリSAKE With ME。SAKE With MEでは行ってよかったお店をユーザー同士がシェアできて飲みたい日本酒がどこで飲めるのか検索できます。地図情報、写真の情報等も投稿できます。
<br>
<br>
<br>

### 企画背景
<br>
現状の飲食店アプリでは飲みたい日本酒から店を探すことはできず<br>
日本酒を軸に飲食店を探すのが難しい現状があります。<br>
そこで日本酒好きなユーザーが、日本酒の詳しい情報や飲める場所を投稿でき、シェアできるような<br>サービスがあればと考えました。日本酒好きなユーザーにとっては、店を探す手間が省かれ、新しい日本酒に出会えるきっかけになると考えました。
<br>
<br>
<br>

### ターゲット
<br>

  - ペルソナ: 日本酒、飲食店が好きな人
  - ペルソナが抱える問題: 日本酒が好きだが現状の飲食店検索アプリでは日本酒の銘柄から店を探すことが困難で新しい日本酒と出会うことが難しい。

  - 問題が発生する原因: 現状の飲食店アプリはメニュー内容を見ることができるがどんなお酒を取り扱っているか明記が少ない。
<br>
<br>
<br>

## App URL
<b>現在は、公開を停止しております。</b>
<br>
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

## 使用方法

- ログイン
  - 上記テストアカウントを入力してログインしてください。
<br>
<br>

- 飲食店新規投稿
  - headerにある飲食店新規投稿をクリック。各項目を記述し送信すると、そこの店で飲める日本酒を追加することができます。もし日本酒の候補が見当たらない場合はトップページリンクをクリックして一覧ページに戻ってください。
<br>
<br>

- 日本酒新規投稿
  - headerにある日本酒新規投稿をクリック。実際に飲んで美味しかった日本酒の各項目を記述して送信すると日本酒一覧ページに新規日本酒リストが追加されます。

<br>
<br>

- 美味しかった日本酒投稿
  - headerにある美味しかった日本酒投稿をクリック。飲食店検索から店を絞って検索をかけると日本酒を選択できます。

<br> 
<br>

- 現在位置から店のルート表示

  - 飲食店一覧からリストをクリックすると飲食店詳細ページに遷移します。スクロールしていただくと**現在位置から店の行き方を知りたい方はこちら**のリンクがあるのでクリックしていただくと現在位置から店のルートを表示します。

<br>
<br>


## 洗い出した要件

- Header
  - ログイン時ログアウトボタンがある。
  - ログインしていない場合、新規登録、ログインボタンがある。
  - 日本酒一覧のボタンがある。
  - 飲食店新規投稿のボタンがある
  - 日本酒新規投稿のボタンがある。
  - 美味しかった日本酒投稿のボタンがある。
  - マイページのボタンがある。
  - widthが700以下になったらheaderがハンバーガーメニューになる。
  <br>
- 新規登録/ログインページ
  - 新規登録ページには名前、メールアドレス、パスワードを入力できるフォームがあり<br>送信ボタンがある。
  - 新規登録ページにはトップページ遷移ボタンがある。
  - 新規登録ページには確認メールが届かない場合の再送信するボタンがある。
  - 新規登録ページにはログインボタンがある。
  - ログインページにはメールアドレス、パスワード入力できるフォームがあり送信ボタンがある。
  - ログイン画面にはパスワード変更のボタンがある。
  - ログイン画面には確認メールが届かない場合の再送信ボタンがある。
  - ログイン画面にはトップページ遷移ボタンがある。
  <br>
- 飲食店一覧、日本酒一覧ページ
  - 飲食店一覧ページには新規投稿された飲食店のリストがある。
  - 飲食店一覧ページには条件検索できる枠がある。
  - 飲食店一覧ページには音声入力できるボタンがある。
  - 日本酒一覧ページには新規投稿された日本酒のリストがある。
  - 日本酒一覧ページには条件検索できる枠がある。
  - 日本酒一覧ページには音声入力できるボタンがある。

  <br>
- 飲食店新規投稿ページ
  - 複数枚画像選択、店名、生ビール、ジャンル、都道府県、住所を<br>入力できるフォームがあり、送信ボタンがある。
  - トップページに遷移するボタンがある。
  - 入力内容が空だとエラーメッセージが表示される。

  <br>
- 日本酒新規投稿ページ
  - 画像選択、、日本酒名、精米歩合、日本酒度、種類、アルコール度数、酒蔵、使用コメが入力できる。
  - トップページに遷移するボタンがある。
  - 入力内容が空だとエラーメッセージが表示される。
  - 精米歩合は文末に%をつけないとエラーメッセージが表示される。
  - 日本酒度は文頭に+か-をつけないとエラーメッセージが表示される。
  - アルコール度数は21度以下で入力しないとエラーメッセージが表示される。

  <br>
- 美味しかった日本酒投稿ページ
  - 飲食店を検索して候補を絞ることができる。
  - トップページの遷移ボタンがある。
  - 検索先のページで検索候補がなければもう一度検索するボタンがある。
  - 検索先のページで検索候補があれば日本酒を選択できるプルダウンリストがある。
  - 検索先のページではトップページ遷移ボタンがある。

  <br>
- マイページ
  - ユーザーが投稿した飲食店リストがある。
  - ユーザーが投稿した日本酒リストがある。
  - ユーザーがいいねした飲食店リストがある。

  <br>
- 飲食店詳細ページ
  - 投稿した複数枚の画像がスライドショーで見れる。
  - 飲食店編集、削除ボタンがある。
  - 投稿内容が記されたテーブルがあり投稿者の部分はリンクになっている。
  - お気に入りできるハートアイコンがある。
  - 店の住所がわかるgoogle mapが表示されている。
  - 現在位置から店のルートを示すページ遷移ボタンがある。
  - ここで飲める日本酒一覧に美味しかった日本酒投稿された日本酒リストがある。

  <br>
- 日本酒詳細ページ
  - 投稿した日本酒の画像がある。
  - 日本酒編集、削除ボタンがある。
  - 投稿内容が記されたテーブルがある。
  - このお酒を飲める店はこちら一覧に紐付けされている飲食店の一覧がある。
<br>
<br>
<br>

## 実装した機能
<br>

### ログイン機能
- 入力フォームで記入したメールアドレスにメールアドレス確認メールが届き<br>リンクをクリックすると登録が完了します。
<div align="center">

<img width="379" alt="mail" src="https://user-images.githubusercontent.com/68269509/92732256-298ba500-f3b1-11ea-8b63-fc85f301628a.png">

</div>



<br>
<br>
<br>

### 飲食店投稿機能
- headerの飲食店投稿をクリックすると下記画像のページに遷移して項目を記入するとその店で飲める日本酒を追加できて、内容を送信すると飲食店一覧ページに表示されます。
<br>
<br>
<br>

<div align="center">
<img width="505" alt="faff58ed78342ba1b86e0e08e9e57a3c" src="https://user-images.githubusercontent.com/68269509/92986243-3533b480-f4f4-11ea-8e8f-5da90aa3fcfa.png">
</div>
<br>
<br>
<br>

<div align="center">

<img width="302" alt="restaurant2" src="https://user-images.githubusercontent.com/68269509/92736363-2eeaee80-f3b5-11ea-830d-9c674b85753b.png">

</div>

<br>
<br>
<br>

### 日本酒投稿機能

- headerの日本酒投稿をクリックすると下記画像のページに遷移して項目を記入するとその店で飲める日本酒を追加できて、内容を送信すると飲食店一覧ページに表示されます。
<br>
<br>
<br>
<div align="center">

<img width="494" alt="sake-form" src="https://user-images.githubusercontent.com/68269509/92986148-ba6a9980-f4f3-11ea-9246-11fb291d6bdc.png">

</div>
<br>
<br>
<br>

<div align="center">
<img width="302" alt="sake2" src="https://user-images.githubusercontent.com/68269509/92737435-16c79f00-f3b6-11ea-9268-f35b20ad92aa.png">
</div>
<br>
<br>
<br>

### 飲食店、日本酒紐付け機能

- 飲食店の詳細ページからその店で飲める日本酒一覧を表示又そのリンクをクリックすると<br>
日本酒の詳細ページへ遷移できる。又その日本酒はどの飲食店で飲めるのかを一覧表示してます。

<br>
<br>
<div align="center">

![sakes](https://user-images.githubusercontent.com/68269509/92739090-7d00f180-f3b7-11ea-8ba3-2f73c02ccac5.gif)

</div>

<br>
<br>

### google map機能

- 店の住所から緯度経度を取得して詳細な住所を表示します。<br>
また、現在位置から店の行き方を知りたい方はこちらをクリックすると現在一から店までのルートを表示してくれます。
<br>
<br>

### いいね機能

- ログイン状態の時に飲食店詳細ページに遷移するとお気に入りハートアイコンがありクリックするといいねが追加されてマイページで確認することができます。
<br>
<br>
<br>
<div align="center">

![Animated GIF-downsized (1)](https://user-images.githubusercontent.com/68269509/92986457-f7d02680-f4f5-11ea-9adc-a8fef06bc507.gif)

</div>
<br>
<br>
<br>

<div align="center">

![Animated GIF-downsized](https://user-images.githubusercontent.com/68269509/92986384-4204d800-f4f5-11ea-9e4d-45f9d196c78b.gif)

</div>

<br>
<br>
<br>

### 検索機能

- 日本酒、飲食店一覧にそれぞれ複数条件を指定して検索することができます。また、条件に合わなければflashメッセージが表示され全listが表示されます。
<div style="display: flex;">


</div>

<br>
<br>
<br>

### 音声入力機能

- web Speach Apiを使用して音声で入力された内容を飲食店検索、日本酒検索のフリーワードに直接<br>
入力されます。
<br>
<br>

<div align="center">

![Animated GIF-downsized (3)](https://user-images.githubusercontent.com/68269509/92986641-6661b400-f4f7-11ea-900e-c3f304fd462a.gif)

</div>

<br>
<br>

### モデルテスト機能

- 日本酒投稿、ユーザー新規登録、飲食店新規投稿のバリデーションをテストしてます。<br>
特に日本酒新規投稿に関しては精米歩合,日本酒度の正規表現のテスト、アルコール度数のstring型からint型に変更するメソッドのテストも行ってます。
<br>
<br>


### コメント機能

- Action cableを用いて非同期でコメント入力できる機能になっておりコメントの数が表示されます。
<br>
<br>
<br>
<div align="center">

<img width="500" alt="こめんと" src="https://user-images.githubusercontent.com/68269509/92840481-17931c00-f41c-11ea-88aa-50c7eee35d58.png">

</div>

<br>
<br>
<br>

### 画像プレビュー機能、複数枚画像投稿、画像スライドショー機能

<br>
<br>

- 飲食店投稿の際、どの画像を送信するのかプレビューが表示され、複数枚画像投稿することができます。また、詳細ページでswiper.jsを使用して画像をスライドショー形式で見ることができます。

<br>
<br>
<div align="center">

![Animated GIF-downsized (2)](https://user-images.githubusercontent.com/68269509/92986553-c86de980-f4f6-11ea-9215-28ff73ee723b.gif)

</div>





## 実装予定機能
- フォロー機能

<br>
<br>


## データベース設計
<br>
<br>
<div align="center">
  <img width="993" alt="er" src="https://user-images.githubusercontent.com/68269509/92833322-b10a0000-f413-11ea-8959-268336d1b29d.png">

  </div>
<br>
<br>


## ローカルでの動作方法
<br>

下記コマンドを実行することでローカル環境で使用できます。

```
 % git clone https://github.com/Nagao-hikaru/sake_with_me.git
```

```
% cd sake_with_me
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
