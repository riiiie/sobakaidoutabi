# sobakaidoutabi
■ サービス概要
理想のお蕎麦屋を探すのに時間をかけている人に
日常の中に、理想の蕎麦屋探しの旅を提供する
お蕎麦特化型の記録サービスです。

■ユーザーが抱える課題
理想のお蕎麦の味を見つけるのが難しい。

■課題に対する仮説
- 蕎麦を美味しいと感じる基準・感度が人それぞれ違うため、マッチングが難しい。
  1. 蕎麦の美味しさを判断する軸が多い（蕎麦粉の割合・蕎麦粉の割合・蕎麦つゆの味など）
  2. お蕎麦屋の判断条件を理想とマッチさせるためには、たくさんの口コミに目をとおす必要があるので、面倒に感じてしまう。

■解決方法
- 理想にマッチする蕎麦屋を見つける過程に楽しさを感じてもらうようにする。
  - 蕎麦の味を自分の五感を基準にして評価できるようにする
  - 理想の蕎麦を見つける過程を楽しんでもらえるように、ユーザーを旅人に見立てて、蕎麦の記録を残せるようにする

■メインのターゲットユーザー
蕎麦を好んで食べる人、健康に気を遣っているビジネスマン、ジムに通っている人
一般的に蕎麦は健康食として知られており、食事制限を行う健康志向の強い人は、小麦粉麺よりも蕎麦を好む傾向がある。

■実装予定の機能
- 全ユーザー
    - ユーザー登録、編集ができる
		- スポット登録された蕎麦屋の情報を閲覧できる
- 登録済ユーザー
    - 蕎麦屋の情報（店名・住所・詳細情報（十割・二八・その他））をスポットとして登録
    - スポットとして登録された蕎麦屋について、味の記録を作成・編集・削除ができる
        - 蕎麦の味をメーターで記録
            - 食べたメニュー（冷・温／十割・二八・その他／メニュー名）
            - 蕎麦の食感（つるつる〜ざらざら）
            - 蕎麦の香り（控えめ〜豊か）
            - 蕎麦のコシ（ふんわり〜しっかり）
            - 蕎麦つゆの辛さ（甘口〜辛口）
            - 蕎麦つゆの濃さ（さっぱり〜濃口）
        - 蕎麦の写真を登録
        - 自由記載欄に好きなコメント
        - 美味しかった蕎麦にはお気に入り認定（ブックマーク）ができる
    - 作成した記録をカテゴリ別に保存ができる
        - 保存のカテゴリを作成・編集・削除ができる
        - 任意のカテゴリに記録を登録・削除ができる
    - 新着の記録一覧を見ることができる
- 管理ユーザー
   - 登録ユーザーの検索、一覧、詳細、編集
   - スポット登録された蕎麦屋の検索、一覧、詳細、編集、削除
   - 管理ユーザーの一覧、詳細、編集、削除
（今後の拡張機能として）
- 登録済みユーザー
  - 蕎麦の好みが近いユーザーを週1回メールで通知する
  - 自分がフォローしたユーザーがよく行く店を検索できる

■なぜこのサービスを作りたいのか？
蕎麦を食べたことのある日本人なら「十割蕎麦が食べたかったのに二八蕎麦だった」「蕎麦は美味しいのにそばつゆが好みではなかった」などの経験をしている人が少なくないのではないでしょうか。私も昔から通っている近所の蕎麦屋があり、そこの蕎麦が大好きでしたが「蕎麦屋が作る蕎麦はみんな美味しいんだ」と思っていました。ところが地元を出て一人暮らしを始めた時、近くに全国的に有名な蕎麦屋があったので訪問したのですが、蕎麦つゆが自分の口に合わず、箸が全く進まなかったことがありました。その時に「美味しいお蕎麦を見つけるのってこんなに難しいのか」と衝撃を受けました。それ以来、蕎麦屋に訪問したり、市販の蕎麦を何種類も購入したりして、蕎麦を試すことを楽しむようになりました。
蕎麦は他の料理に類を見ないほど多様な美味しさを持っているからこそ、目的の蕎麦を見つけるのが難しいですが、逆を言えば他の料理に類を見ないほど、見つける楽しさがあります。蕎麦持つ「健康食」としての側面だけでなく、「理想の味を追い求める楽しさ」も提供することで、日々の食事をもっと楽しくしたい！という思いでこのサービスを考えました。

■スケジュール
README〜ER図作成：5/31
メイン機能実装    ：6/1
β版をRUNTEQ内リリース（MVP）：6/30
本番リリース      ：7/14

■技術選定
- Rails7
- heroku
- PostgreSQL
- JavaScript
- TailswindCS
- GoogleMapsJavascriptAPI
- GeocordeingAPI
- AmazonS3

■画面遷移図
https://www.figma.com/file/Ot0Xvqq2cMQWgbAalZ8GhN/PF%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3%EF%BC%881%EF%BC%89?type=design&node-id=0%3A1&t=QbUXwiZimWIqnJe7-1

■ER図
https://drive.google.com/file/d/1gxwbgaWRU83uq8eIOt7blyyDOL6ccIE7/view?usp=sharing
(2023/06/01更新)

■コマンド
- postgresql@15
brew services start postgresql@15
brew services stop postgresql@15

- マイグレーション
rails db:migrate RAILS_ENV=test