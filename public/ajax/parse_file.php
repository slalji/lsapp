<?php
include "../config.php";

$filename='';
$delimiter=' ';
$enclosure='"';
$escapestring='\\';
$filename="C:/wamp64/tmp/upload.csv";
//$txt_file    = file_get_contents($fileName);
if(!file_exists($filename) || !is_readable($filename))
    return FALSE;

$header = NULL;
$data = array();
if (($handle = fopen($filename, 'r')) !== FALSE)
{
    while (($rows = fgetcsv($handle, 1000, " "/*, $delimiter, $enclosure, $escapestring*/)) !== FALSE)
    {
       foreach($rows as $row)
       $data[]= str_replace('\\N', '"NULL"', $row);
    }
    fclose($handle);
}
foreach ($data as $d)
print_r ("<br>row: ". explode(' ', $d));


?>