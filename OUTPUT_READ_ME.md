# 서울아산병원 의학 정보

본 자료는 서울아산병원 홈페이지(http://amc.seoul.kr/)에 있는 의학 정보 데이터를 크롤링한 결과 자료입니다.
모든 저작권은 서울아산병원이 가지고 있습니다.

모든 자료는 

1. 인체 정보(bodies)
2. 질환 정보(diseases)
3. 검사/시술/수술 정보(interventions)

에 따라 분류하여 구성됩니다.

# 폴더별 설명

## /whole/
전체 크롤링 결과 자료를 합친 버전을 모아둔 폴더입니다.




### bodies.txt / diseases.txt / interventions.txt

해당 항목의 모든 정보를 포함합니다. *표시는 각 항목별 반드시 포함되는 정보입니다. 나머지는 있을 경우에만 쓰여있습니다.

<bodies.txt>

0. 항목 구분: "================================="
1. 신체명*
2. 부위명
3. 관련질환
4. 관련 진료과
5. 관련 설명*
6. 연관 질환
7. 연관 시술/수술/검사

<diseases.txt>
0. 항목 구분: "================================="
1. 질환명*
2. 관련증상
3. 관련질환
4. 관련 진료과
5. 동의어
6. 관련 설명*
7. 항목 구분: "================================="

<interventions.txt>
0. 항목 구분: "================================="
1. 시술/수술/검사명*
2. 관련 신체 부위
3. 관련 질환 분야: 해당 검사가 어떤 질환을 다루는 분야에서 사용되는지 적습니다. '관련 질환'과 다릅니다.
4. 관련 검사
5. 관련 진료과
6. 검사 설명*
7. 관련 질환
8. 관련 인체
9. 항목 구분: "================================="



### whole.txt

위의 bodies.txt - diseases.txt - intervention.txt를 모두 합친 파일입니다.



### bodies_description.txt / diseases_description.txt / interventions_description.txt

앞에서 설명한 bodies, diseases, interventions와는 달리 처리를 위한 핵심 정보만 간추린 버전입니다.

<bodies_description.txt>

1. 신체명
2. 관련 설명

<diseases_description.txt>
1. 질환명
2. 관련 설명

<interventions_description.txt>
1. 시술/수술/검사명
2. 관련 설명



## /output/

효율적인 처리를 위하여 각 항목별로 분리한 텍스트파일들입니다. 총 1722개의 파일로 구성되어있습니다.



## /output/ETRI/POS

ETRI openapi를 이용하여 POS태깅한 결과 자료입니다.  파일형식은 json형태입니다.



## /output/ETRI/NER

ETRI openapi를 이용하여 NER태깅한 결과 자료입니다.  파일형식은 json형태입니다.



## /standard.txt
2018년 국립국어원 코퍼스에서 가장 많이 사용된 토큰들 300만개입니다. 불용어로 정의하기 위해 사용됩니다.



