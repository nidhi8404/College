# All the Grep Commands

```
cat bank.lst
```
101 Aditya 0 14/11/2000 current                                                                                                                                         
102 Anil 10000 20/05/2011 saving                                                                                                                                      
103 Naman0 20/08/2009 current                                                                                                                                      
104 Ram 10000 15/08/2010 saving                                                                                                                                      
105 Jyotsna 5000 16/06/2012 saving                                                                                                                                     
106 Mukesh 14000 20/12/2009 Current                                                                                                                                     
107 Vishal 14500 30/11/2011 saving                                                                                                                                     
108 Chirag 0 15/12/2012 Current                                                                                                                                      
109 Arya 16000 14/12/2010 Current                                                                                                                                      
110 Priya 130 16/11/2009 Saving                                                                                                                                      

## Search lines containing the pattern 'mu' in file bank.lst
```
grep mu bank.lst
```
Since mu is not there in bank.lst, it displays nothing on screen

## Search lines containing the pattern 'Mu' in file bank.lst
```
grep Mu bank.lst
```
106 Mukesh 14000 20/12/2009 Current

## Search lines containing the pattern 'current' in file bank.lst
```
grep current bank.lst
```
101 Aditya 0 14/11/2000 current                                                                                                                                      
103 Naman 0 20/08/2009 current

## Search lines containing the pattern 'Chirag' in file bank.lst
```
grep 'Chirag' bank.lst
```
or
```
grep Chirag bank.lst
```
108 Chirag 0 15/12/2012 Current

## Count the number of lines containing the pattern 'Current' in file bank.lst
```
grep -c Current bank.lst
```
3

## Display line numbers along with lines containing the pattern 'current' in file bank.lst
```
grep -n current bank.lst
```
1:101 Aditya 0 14/11/2000 current                                                                                                                                      
3:103 Naman0 20/08/2009 current

## Display lines not containing the pattern 'current' in file bank.lst
```
grep -v current bank.lst
```
102 Anil 10000 20/05/2011 saving                                                                                                                                      
104 Ram 10000 15/08/2010 saving                                                                                                                                      
105 Jyotsna 5000 16/06/2012 saving                                                                                                                                     
106 Mukesh 14000 20/12/2009 Current                                                                                                                                     
107 Vishal 14500 30/11/2011 saving                                                                                                                                     
108 Chirag 0 15/12/2012 Current                                                                                                                                      
109 Arya 16000 14/12/2010 Current                                                                                                                                      
110 Priya 130 16/11/2009 Saving                                                                                                                                      

## List the file names containing the pattern 'current' in file bank.lst
```
grep -l current *.lst
```
bank.lst                                                                                                                                      
clist.lst                                                                                                                                      
newbank.lst                                                                                                                                      

## List the file names not containing the pattern 'current' in file bank.lst
```
grep -L current *.java~
```
convolution.java~                                                                                                                                      
ITU.java~                                                                                                                                      
ks.java~                                                                                                                                      

## Search lines containing the pattern 'Current' or 'current' in file bank.lst (i.e. case insensitive)
```
grep -i current bank.lst
```
or
```
grep -e current -e Current bank.lst
```
101 Aditya 0 14/11/2000 current                                                                                                                         
103 Naman0 20/08/2009 current                                                                                                                         
106 Mukesh 14000 20/12/2009 Current                                                                                                                         
108 Chirag 0 15/12/2012 Current
109 Arya 16000 14/12/2010 Current

## Prints 2 lines before and after the line containing pattern 'Jyotsna'
```
grep -2 -i Jyotsna bank.lst
```
103 Naman0 20/08/2009 current                                                                                                                      
104 Ram 10000 15/08/2010 saving                                                                                                                      
105 Jyotsna 5000 16/06/2012 saving                                                                                                                      
106 Mukesh 14000 20/12/2009 Current                                                                                                                      
107 Vishal 14500 30/11/2011 saving                                                                                                                      

## Prints lines containing letter 'r'
```
 grep r bank.lst
```
101 Aditya 0 14/11/2000 current                                                                                                                      
103 Naman0 20/08/2009 current                                                                                                                      
106 Mukesh 14000 20/12/2009 Current                                                                                                                      
108 Chirag 0 15/12/2012 Current                                                                                                                      
109 Arya 16000 14/12/2010 Current                                                                                                                      
110 Priya 130 16/11/2009 Saving                                                                                                                      

## Display all records that have or do not have letter 'b'
```
grep "b*" bank.lst
```
101 Aditya 0 14/11/2000 current
102 Anil 10000 20/05/2011 saving
103 Naman0 20/08/2009 current
104 Ram 10000 15/08/2010 saving
105 Jyotsna 5000 16/06/2012 saving
106 Mukesh 14000 20/12/2009 Current
107 Vishal 14500 30/11/2011 saving
108 Chirag 0 15/12/2012 Current
109 Arya 16000 14/12/2010 Current
110 Priya 130 16/11/2009 Saving

## Display all records starting with 1
```
grep "^1" bank.lst
```
101 Aditya 0 14/11/2000 current
102 Anil 10000 20/05/2011 saving
103 Naman0 20/08/2009 current
104 Ram 10000 15/08/2010 saving
105 Jyotsna 5000 16/06/2012 saving
106 Mukesh 14000 20/12/2009 Current
107 Vishal 14500 30/11/2011 saving
108 Chirag 0 15/12/2012 Current
109 Arya 16000 14/12/2010 Current
110 Priya 130 16/11/2009 Saving

## Display all records ending with 'nt'
```
grep "nt$" bank.lst
```
101 Aditya 0 14/11/2000 current
103 Naman0 20/08/2009 current
106 Mukesh 14000 20/12/2009 Current
108 Chirag 0 15/12/2012 Current
109 Arya 16000 14/12/2010 Current

## Display all records containing current without the file names on its left
```
grep -h current bank.lst
```
101 Aditya 0 14/11/2000 current                                                                                                                 
103 Naman0 20/08/2009 current                                                                                                                 

## Display all records containing current from all .lst files with file names on its left.
```
grep -H current *.lst
```
bank.lst:101 Aditya 0 14/11/2000 current                                                                                                                 
bank.lst:103 Naman0 20/08/2009 current                                                                                                                 
clist.lst:101 Aditya 0 14/11/2000 current                                                                                                                 
clist.lst:103 Naman0 20/08/2009 current                                                                                                                 
newbank.lst:101 Aditya 0 14/11/2000 current                                                                                                                 
newbank.lst:103 Naman0 20/08/2009 current       

## Display all records containing pattern di.ya (a letter between di and ya)
```
grep di.ya bank.lst
```
101 Aditya 0 14/11/2000 current

## Display all records containing pattern that starts with A, ends with a and inbetween contains anytwo letters.
```
grep A..a bank.lst
```
109 Arya 16000 14/12/2010 Current

## Write the pattern to be searched in a file pattern.txt. Pass this file using -f option in grep command from where pattern will be read and searched.
```
cat > pattern.txt
``` 
current                                                                                                                               
Saving                                                                                                                                      
^d
```
grep -f pattern.txt bank.lst
```
101 Aditya 0 14/11/2000 current                                                                                                                         
103 Naman0 20/08/2009 current                                                                                                                         
110 Priya 130 16/11/2009 Saving                                                                                                                         

## Append/Add few records as shown below to bank.lst file
```
 cat >> bank.lst
 ```
 ```
201 Bina 3000 11/03/2010 saving
202 Diya 4000 13/04/2018 Saving
203 Gargi 2000 21/01/2015 current
```
Check the contents of file (this three wld be added)

## Following command will list all those records in which 2 occurs anywhere in row.
```
grep [^2] bank.lst
```

## To print lines which do not start with digit in range 2 to 3
```
grep ^[^2-3] bank.lst
```

## To print *all records containing letters* in the range H to K
```
grep [H-K] bank.lst
```

## To print lines *begining with letter* in the range H to K
```
grep ^[H-K] bank.lst
```

## To print lines which *do not start with letters* in range H to K
```
grep ^[^H-K] bank.lst
```








































































