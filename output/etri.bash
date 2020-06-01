# !/bin/bash
for text in find $(find . -type f -name "*.txt")
do
	etri -k  afeb0202-46c4-4241-8682-5f451a7db36d -i $text -c morp -o "./ETRI/POS/" + $text
	etri -k  afeb0202-46c4-4241-8682-5f451a7db36d -i $text -c ner -o "./ETRI/NER/" + $text
done
