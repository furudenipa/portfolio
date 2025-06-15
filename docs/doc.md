# Portfolio Project

## 背景

- 就活中、自分自身のプログラミング経験を簡単に伝える手段がなく困っている
- 個人開発の経験はあるが、それをうまく見せるサイトが欲しい
- 研究・就活・個人開発で時間がなく、短時間で開発を進めたい
- プログラミング経験などに関する情報を追加・変更するとき、HTMLを直接いじりたくない
- 自分が持っているドメインで公開したい
  - 技術力を示すなどの理由から  

### 要求定義

#### 誰の

- 就活中の自分が自己紹介のために作成
- 企業の人事が確認

#### どんな課題を

- 就活中、自分自身のプログラミング経験を簡単に伝える手段がなく困っている

### 要件定義

1. ポートフォリオ要素  
   - シングルページ
   - 自己紹介の表示
      - HN
      - 年齢 / 大学 / 研究
      - icon
   - 興味のある技術
      - 技術名
   - インターン経験
      - 企業名
      - 期間
      - 内容
   - プロジェクトカードの表示
      - タイトル, 技術, 概要, リンク

2. CI/CD
   - ArgoCD等を用いた自動デプロイ

3. 保守性
   - コンテンツはMD/yamlのみで管理

### 採用技術

| レイヤ | 採用技術 | 採用理由 |
|--------|----------|----------|
| フロントエンド | Hugo | mdをHTMLに変換できるフレームワーク。 テーマが豊富で、実装が最小限で済む。 |
| インフラ | K8s + Cloudflare Tunnel | 自宅のK8s鯖上にデプロイし、Cloudflare Tunnelで公開 |
| CI | GitHub Actions | 無料で使用可能なGitHubの標準的なCIツール |
| CD | ArgoCD | 歴史があり、十分なドキュメントが整備されている |

## 設計

### 画面設計図

![portfolio image](https://github.com/furudenipa/portfolio/blob/main/docs/images/portfolio-image.svg)


### インフラ設計図

![system configuration diagram](https://github.com/furudenipa/portfolio/blob/main/docs/images/configuration.svg)
