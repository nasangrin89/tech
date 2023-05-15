# EFK-Fluentd Helm

## 설치 방법

### 설치 EXAMPLE
``` bash
helm install \
    -n fluentd --create-namespace \
    fluentd .
```

### 설치 Option
``` bash

helm install \
    -n fluentd --create-namespace
    --set dkos.clusterName=podo-cluster \
    #--set configmap.store.stdout.enabled=true \ ## STDOUT 사용시
    #--set configmap.store.kemi.enabled=true --set configmap.store.kemi.host=${KEMI_HOST} ## To Kemi
    #--set configmap.store.logAgg.enabled=true --set configmap.store.logAgg.host=${LOGAGG_HOST} ## To Log Aggregator
    #--set configmap.store.es.enabled=true --set configmap.store.es.host=${ES_HOST} ## TO Elasticsearch
    fluentd .
```

<br/>

## 삭제 방법

```bash
helm uninstall -n fluentd fluentd
```
