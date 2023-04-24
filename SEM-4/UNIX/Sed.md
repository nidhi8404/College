## Print first 3 records from bank.lst
```
sed '3q' bank.lst
```
## Use -n to suppress duplicate line printing.
```
sed -n '1,2p' bank.lst
```

##  $ represents the last record in file
```
sed -n '$p' bank.lst
```

## Inserting into file
```
sed '1i 201 Viren 2000 13/05/2012 saving' bank.lst > newbank.lst
```

## Deleting a line having specific pattern
```
sed '/viraj/d' newbank.lst
```

## Remembered Patterns in sed
```
sed -n '/\([Aa]\)\([a-z]\)/p' bank.lst
```
```
 sed -n '/\([Aa]\)\([a-z]*\)/p' bank.lst
```




























