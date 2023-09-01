#!/bin/sh

# 檢查並安裝 analysis-icu
if [ ! -d "/usr/share/elasticsearch/plugins/analysis-icu" ]; then
  bin/elasticsearch-plugin install analysis-icu
fi

# 檢查並安裝 analysis-kuromoji
if [ ! -d "/usr/share/elasticsearch/plugins/analysis-kuromoji" ]; then
  bin/elasticsearch-plugin install analysis-kuromoji
fi

# 檢查並安裝 analysis-nori
if [ ! -d "/usr/share/elasticsearch/plugins/analysis-nori" ]; then
  bin/elasticsearch-plugin install analysis-nori
fi

# 檢查並安裝 analysis-smartcn
if [ ! -d "/usr/share/elasticsearch/plugins/analysis-smartcn" ]; then
  bin/elasticsearch-plugin install analysis-smartcn
fi

# 檢查並安裝 ingest-langdetect
if [ ! -d "/usr/share/elasticsearch/plugins/ingest-langdetect" ]; then
  bin/elasticsearch-plugin install https://github.com/spinscale/elasticsearch-ingest-langdetect/releases/download/7.10.1.1/ingest-langdetect-7.10.1.1.zip
fi

# 啟動 Elasticsearch
exec /usr/local/bin/docker-entrypoint.sh elasticsearch
