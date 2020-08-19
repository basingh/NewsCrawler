## list indcies

curl -X GET "localhost:9200/_cat/indices/news-*?v&s=index&pretty"

##

##
curl -X GET "localhost:9200/my-index-000001/_search?pretty"

## install kibana
https://www.elastic.co/guide/en/kibana/current/deb.html

 1  nano kibana.yml
    2  systemctl start kibana
    3  systemctl status kibana
    4  cat kibana.yml
    5  nano kibana.yml
    6  systemctl restart kibana
    7  systemctl status kibana
    8  sudo apt-get install elasticsearch
    9  systemctl start elasticsearch
   10  systemctl status elasticsearch
   11  curl -X GET "localhost:9200/?pretty"
   12  systemctl restart kibana
   13  systemctl status kibana
   14  history