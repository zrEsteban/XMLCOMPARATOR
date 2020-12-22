#!/usr/bin/perl

use XML::LibXML;
use XML::XML2JSON;

$xml = XML::LibXML->load_xml(location => $ARGV[0]);

$XML2JSON = new XML::XML2JSON;
$JSON = $XML2JSON->convert($xml);

print $JSON;
