## Print all records of file Bank.lst
```
awk '{print}' bank.lst
```

## Print first 3 fields from bank.lst
```
awk '{print $1 $2 $3}' bank.lst
```

## Sepearate fields by tabs
```
awk '{print $1 "\t" $2 "\t" $3}' bank.lst
```

## Print only those records having 'current' account.
```
awk '/current/ {print}' bank.lst
```
or
```
awk '/current/' bank.lst
```
or
```
awk /current/ bank.lst
```

## Format specifiers for the field can be specified as below
```
awk '{printf "%3d \t %-15s \t %7d \n", $1,$2, $3}' bank.lst
```

## Printing records having 'current' account. $0 means entire line
```
awk '/current/ {print $0}' bank.lst
```
 
## Printing individual fields of file
```
awk '/current/ {print $1}' bank.lst
```

## Print records having balance less than 5000. (here $3 represents the 3rd field balance)
```
awk '$3<5000' bank.lst
```

## Print records having balance less than 5000 or more than 10000
```
awk '$3<5000 || $3>10000' bank.lst
```

## Print all records whose account type is current
```
awk '$5 == "current"' bank.lst
```

## Print all records whose account type is not Current.
```
awk '$5 != "Current"' bank.lst
```

## Print records whose acc. type is 'current''
```
awk '$5 ~/current/' bank.lst
```

##  Print records whose acc. type is not 'saving'
```
awk '$5 !~/saving/' bank.lst
```

## Print records ending with character 'g'
```
awk '$5 ~/g$/' bank.lst
```

## Print records not ending with character 'g'
```
awk '$5 !~/g$/' bank.lst
```

## Print names of customers having saving account
```
awk '$5 ~/saving/{print $2}' bank.lst
```

## Display records whose account type is current or Current
```
awk '$5~/[Cc]urrent/' bank.lst
```
## Display account number, name and balance of those records whose account type field end ith letter t or T
```
awk '$5~/[Tt]$/{print $1, $2, $3}' bank.lst
```

## Display records from record number 3 to record number 7
```
awk 'NR>=3 && NR<=7 {print $1, $2, $3}' bank.lst
```

## Print number of fields in each line /record of the file text.lst
```
awk '{print NF}' text.lst
```

## Print last field of each line in text.lst
```
awk '{print $NF}' text.lst
```

## Print all records having A at the beginning of second field
```
awk '$2 ~ "^A"' bank.lst
```
## Print records whose date of opening is 20 and the year is 09
```
awk '$4 ~ /^20.*09/' bank.lst
```
## Print records whose date of opening is 20 and the year is 09 and whose name starts with N
```
 awk '$4 ~ /^20.*09/ && $2 ~/^N/' bank.lst
```

## Print all lines whose length is more than 32
```
awk 'length($0) > 32' bank.lst
```

## Performing arithmatic operation: 
### Print customer name, balance, date and 5% interest on balance
```
awk '$5 == "saving" { printf "%20s %d %20s %f \n",$2,$3, $4, $3*0.05}' bank.lst
``
















