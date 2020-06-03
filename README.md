# MedicalCrawling
서울아산병원 홈페이지에 있는 데이터를 크롤링해서 워드임베딩까지 수행하는 작업입니다.
크롤링 결과 총합 약 60만 어절이 있는 것으로 확인되었습니다.
2020-06-01 기준: 현재 크롤링 작업과 pos tagging, ner까지 수행을 끝마쳤습니다. 형태분절과 word embedding을 수행할 예정입니다.


## Crawling
크롤링은 Python Selenium을 이용했습니다.
서울 아산병원 홈페이지(http://amc.seoul.kr/)의 크게 3가지 정보를 크롤링합니다.

1. 인체 정보
2. 질환 정보
3. 검사/시술/수술 정보

각각의 크롤링된 결과는 body, disease, intervention의 클래스로 구분되어 세부 사항이 저장됩니다.

크롤링 결과는 txt 파일로 저장되며 body 전체 모음과, disease 전체 모음, intervention 전체 모음으로 구성된 각각의 텍스트 파일로 구성되고
ETRI API를 사용하기 위한 각 항목별 텍스트 파일로 나타납니다.

## POS Tagging & Named Entity Recognition Test
각 텍스트 파일의 POS 태깅과 개체명인식은 ETRI에서 개발한 cli 툴(https://www.npmjs.com/package/etri-cli)을 적극 활용합니다.
각각의 결과는 ./output/ETRI/의 /POS/ 폴더와 /NER/폴더에 저장되어 있습니다.

## Morphological Analysis & WordEmbedding
형태소 분절은 '은전한닢(https://github.com/koshort/pyeunjeon)'을 이용하고 WordEmbedding을 이용한 시각화도 수행할 예정입니다.(2020-06-01 기준)



