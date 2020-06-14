# The Method to build medical Gazetteer

Korean_term(English_term)

The <body_name> tag is consisted of two parts. Korean body_name in the front, and English body name in the middle of parentheses.

​	간(Liver)

So In this body_name property, there will be two gazetteer which is English body name Liver, and Korean body name 간. But, in case of this example, the approach will be different

간의 양성 신생물(Benign neoplasm of the liver)

In this multi-word expression, which is body part liver's related disease', not only "간의 양성 신생물" can be a gazetteer but also "간의 양성신생물" can be a gazetteer as well. In extreme case, due to some typo of the writer it is possible to be as "간의양성신생물" and when we split this word into morphemes, it can be 간 + 의 + 양성 + 신생물, and we can assume that without the stop-word "의" everything can be Gazetteers, In English case too, this can be applied. Except "of" and "the", every morphemes can be Gazetteers. So, in this body_name, the gazetteers can be extracted will be like this.

​	[간의 양성 신생물, 간의양성 신생물, 간의 양성신생물, 간의양성신생물, 간, 양성, 신생물, Benign, neoplasm, liver, Benign neoplasm of the liver]

In this case of body part related disease, "간" or "liver' is the main body keyword, so we can set 간 and liver as TYPE: BODY_PART and rest of them as TYPE: DISEASE. However in case of Benign or 양성, we might expect them as a degree or determiner(?) which indicates neoplasm is positive. so we will take special care on these kind of gazetteer.

​	[body_name: 간 ] 간의 양성 신생물 -> 간+의

​	[body_name: liver] Benign neoplasm of the liver

we first split tokens with spaces, and in case of Korean, check if token has body_name as subword. if it has it, we exclude that token from the list, But, if it doesn't have it in its token it is highly possible that the entire token is the medical term.



korean stopwords = https://bab2min.tistory.com/544



## Bodies

In Bodies.xml, tags will be used are <body_name>, <body_part>, <body_disease>, <body_medDep>, <body_related_disease>, <body_related_intervention>

## Diseases

In Diseases. xml tags will be used are <disease_name>, <disease_related_diseases>, <related_symptoms>, <synonym>, <related_medDep>

## Interventions

In Interventions xml tags will be used are <intervention_name>, <related_part>, <related_area>, <intervention_related_disease>

## Medicines

In medicines xml tags will be used are <drug_name>, <component>, <prescription_ko>,  <prescription_en>, <manufacturer>, <content>, <shape>, <cleavage_line>, <color1>, <color2>,  <surface_letter_front>,  <surface_letter_back>, <unit>, <route_of_administration>,  <effect>,  <side_effect>(as diseases), <interacton> (as medicines)

In medicine case, the drug_name is structured like this.

​	Zyvox tab [600mg]

Unlike body_name analysis, in this time, content(600mg) and unit(tab) should be analyzed first. and the drug_name should be the last one to analyze. and unit should be analyzed either upper case or lower case as the same token. as the content 600mg is also important to remember as mg because in some case the same kind of medicine has totally different usage when it comes to content.

The <route_of_administraction> is divided with hyphen, so it should be split from this hyphen.

When <effect> has colon like

​	위산분비억제제 : 위산분비 과다로 인한 각종 소화기질환의 예방 및 치료제

The front part will only be used

The <side_effect> ,and  <effect> sometimes, has list of effects split by commas



### ETC

The temperature should be listed

The duration (time, day, month, year) should be listed





|                    TYPE                    | TYPE |
| :----------------------------------------: | :--: |
|                 BODY_PART                  |      |
|                  DISEASE                   |      |
|                INTERVENTION                |      |
|                  MEDICINE                  |      |
|                  SYMPTOM                   |      |
|             MEDICAL_DEPARTMENT             |      |
|                 COMPONENT                  |      |
|                MANUFACTURER                |      |
|                   SHAPE                    |      |
|               CLEAVAGE_LINE                |      |
|                   COLOR                    |      |
| SURFACE_LETTER(FRONT/BACK) - separation(?) |      |
|               MEDICINE_UNIT                |      |
|          ROUTE_OF_ADMINISTRATION           |      |
|                   EFFECT                   |      |
|                SIDE_EFFECT                 |      |
|                                            |      |
|                                            |      |
|                                            |      |

* Every type will be divided from languages (KO/EN)

How to distinguish symptom from side effect?

Should I subdivides body/disease/medicine/intervention types further?