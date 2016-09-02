FROM elasticsearch:2.3.5

COPY elasticsearch-analysis-ik-1.9.5.zip /home/
COPY elasticsearch-analysis-pinyin-1.7.5.zip /home/

RUN plugin install file:///home/elasticsearch-analysis-ik-1.9.5.zip
RUN plugin install file:///home/elasticsearch-analysis-pinyin-1.7.5.zip

RUN plugin install lmenezes/elasticsearch-kopf/v2.1.2
RUN plugin install royrusso/elasticsearch-HQ/v2.0.3

COPY config /usr/share/elasticsearch/config

EXPOSE 9200
EXPOSE 9300
