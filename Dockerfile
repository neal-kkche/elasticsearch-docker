FROM elasticsearch:1.3.9

COPY elasticsearch-analysis-ik-1.2.8.zip /home/
COPY elasticsearch-analysis-pinyin-1.2.3.zip /home/

RUN plugin --url file:///home/elasticsearch-analysis-ik-1.2.8.zip --install analysis-ik
RUN plugin --url file:///home/elasticsearch-analysis-pinyin-1.2.3.zip --install analysis-pinyin

RUN plugin --install lmenezes/elasticsearch-kopf/v1.5.8
RUN plugin --install royrusso/elasticsearch-HQ/v1.0.0

COPY config /usr/share/elasticsearch/config

EXPOSE 9200
EXPOSE 9300



