- REFERENCE: https://myapollo.com.tw/blog/docker-elasticsearch/

- docker-compose.yml 檔:
  - 該檔案修改自官方所提供之範例。
  - 簡而言之，該檔案設定 2 台 Elasticsearch 伺服器(es01, es02) 組成 1 個名稱為 es-docker-cluster 的叢集，同時也架設 1 台 Kibana 與 es01, es02 在同 1 個網路環境內，讓彼此能夠互相存取

- kibana.yml:，
  - 該檔案為 Kibana 之設定檔，設定 Kibana 可以對 es01, es02 進行操作，並將 host IP 設定為 0.0.0.0 讓我們能夠透過網路存取 Docker 內的 Kibana


- docker-compose up -d 
- docker-compose down

目前 data 存在 docker local, 重新啟動資料還會在
