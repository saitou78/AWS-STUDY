# AWS Infrastructure Automation with Terraform & Ansible

## 概要
GitHub Actionsを利用して、AWS上にインフラ（EC2/VPC等）を構築し、Ansibleでアプリケーション実行環境の設定までを全自動化したプロジェクトです。

## 技術スタック
- **Cloud:** AWS (VPC, EC2, RDS, S3, IAM)
- **IaC:** Terraform
- **Configuration Management:** Ansible
- **CI/CD:** GitHub Actions
- **Backend:** Java (Spring Boot) ※もしアプリも含めるなら

## このプロジェクトで実現したこと
1. **Infrastructure as Code (IaC)**
   - Terraformを用いて、ネットワークからサーバーまでをコードで定義・構築。
2. **CI/CDパイプラインの構築**
   - GitHubへのPushをトリガーに、インフラのデプロイを自動化。
3. **動的な環境設定**
   - Terraformで生成されたEC2のIPアドレスをGitHub Actions内で取得し、Ansibleのインベントリへ動的に反映。
4. **セキュリティ管理**
   - AWSアクセスキーやSSH秘密鍵をGitHub Secretsで安全に管理。

## こだわったポイント
- **自動化の完結性**: 手動での設定を一切排除し、コマンド一つ（またはPushのみ）で環境が立ち上がるように設計しました。
- **効率的な開発**: 実装のスピードを上げるため、AIツールを活用しつつ、実務に即した構成（ディレクトリ構造や変数の管理）を意識して構築しました。

## 今後の展望
- Immutable Infrastructureの考えに基づき、Blue/Greenデプロイメントの導入。
- TerraformのStateファイルをS3でバックアップ・共有する仕組みの構築。
