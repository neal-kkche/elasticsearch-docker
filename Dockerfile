FROM elasticsearch:1.6.0

COPY elasticsearch-analysis-ik-1.4.0.zip /home/
COPY elasticsearch-analysis-pinyin-1.3.0.zip /home/

RUN plugin --url file:///home/elasticsearch-analysis-ik-1.4.0.zip --install analysis-ik
RUN plugin --url file:///home/elasticsearch-analysis-pinyin-1.3.0.zip --install analysis-pinyin

RUN plugin --install lmenezes/elasticsearch-kopf/v1.5.8
RUN plugin --install royrusso/elasticsearch-HQ/v1.0.0

COPY config /usr/share/elasticsearch/config

EXPOSE 9200
EXPOSE 9300



