contact.vcf: contact1.csv csv2vcf.py
	python2 csv2vcf.py contact1.csv '{"name":1, "tel":2}' > contact.vcf 
contact1.csv: contact.csv preprocess.py
	python preprocess.py
clean: contact1.csv contact.vcf
	rm contact1.csv contact.vcf
