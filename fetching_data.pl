#!/usr/bin/perl -w

use LWP::Simple;
$file=$ARGV[0];
open(FP,"$file");

while($line=<FP>){
    chomp($line);
    open(FR,">>/home/mohini/Documents/info/$line.txt");
    $url = "http://dramp.cpu-bioinfor.org/browse/All_Information.php?id=$line";
    $res = get("$url");
    print FR "$res";

}
