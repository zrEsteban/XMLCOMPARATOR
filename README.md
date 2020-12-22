## **REQUISITOS:**

- perl 5, version 26, subversion 1 (v5.26.1) 
- modulo XML::XML2JSON, XML::LibXML.

## **NOTAS:**

#### *Para hacer el parsing de fichero XML a un hash de Perl cargar archivo xml con load_xml del modulo XML::LibXML.

#### *Para convertir de xml a json utilizar convert del modulo XML2JSON.

#### *Para instalar ambos modules que se utilizan hacer:

`shell> sudo perl -MCPAN -e shell`
`cpan> install XML::XML2JSON`
`cpan> install XML::LibXML`

puede que pida, JSON::DWIW, instalar haciendo:

`cpan> install JSON::DWIW`

#### *Para hacer el parsing de ficheros XML a un hash de Perl se puede utilizar XML::Simple

`cpan> install XML::Simple`

Otros modulos que pueden interesar:

`cpan> install XML::Dumper`


## **MODO DE USO**

`./compare_json.sh <xml file 1> <xml file 2>`

El ejecutable principal es *compare_json.sh*, que utiliza *convert_xml.pl*, ambos se pueden utlizar por separados mediante Makefile.

**obs:** el nombre del fichero debe ir sin la extensión xml.

#### * Se puede utilizar XMLCOMPARATOR mediante la herramienta make o directamente usando los script ejecutables.

Por ejemplo, se añaden dos ficheros en formato xml de prueba, (setup y setup_test), la unica diferencia está en la linea 21, en el formato de la malla, ensight y med, respectivamente. Entonces:

al ejectuar en terminal: `./compare_json.sh setup setup_test`

el resultado por terminal debería ser:


`59c59`

`<             "@name": "ensight",`

`---`

`>             "@name": "med",`

lo mismo que si se ejecuta `make compareJSON` .

