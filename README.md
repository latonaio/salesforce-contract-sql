# salesforce-contact-sql 

salesforce-contact-sql は、主にエッジアプリケーションにおいて、Salesforceと連携されたコンタクトデータを保存するSQLテーブルを作成するためのレポジトリです。    
salesforce-contact-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。    

## 前提条件  
https://developer.salesforce.com/docs/atlas.ja-jp.218.0.object_reference.meta/object_reference/sforce_api_objects_contact.htm     
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル

salesforce-contact-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* salesforce-contact-sql-contact-data.sql（Salesforce コンタクト - コンタクトデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  