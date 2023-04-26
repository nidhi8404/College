print "Enter a no ";
$num=<>;
chomp($num);
for ($i=1; $i<=10; $i++){
    $result = int($num*$i);
    print "$num*$i=$result\n";
}
