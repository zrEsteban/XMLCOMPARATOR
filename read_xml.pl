#!/usr/bin/perl

# use module
use XML::Simple;
use Data::Dumper;

# create object
$xml = new XML::Simple;

# read XML file
$data = $xml->XMLin($ARGV[0]);

if($ARGV[1]){
      print Dumper($data);
  }else{
      #@query_keys = ('analysis_control','physical_properties','numerical_parameters','solver_version','version','study');
      @query_keys = ('solver_version','version','study');
      for $key (@query_keys){ print Dumper($data->{$key}); }
  }
  
