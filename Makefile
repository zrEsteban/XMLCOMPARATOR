default:
	./read_xml.pl setup.xml 1

read:
	./read_xml.pl setup.xml 0

compare:
	./compare_xml.sh setup.xml setup.xml

showAsJSON:
	./convert_xml.pl setup.xml

compareJSON:
	./compare_json.sh setup setup_test


