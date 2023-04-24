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

# Search lines containing the pattern 'mu' in file bank.lst
```
grep mu bank.lst
```
Since mu is not there in bank.lst, it displays nothing on screen

# Search lines containing the pattern 'Mu' in file bank.lst
```
grep Mu bank.lst
```
106 Mukesh 14000 20/12/2009 Current

# Search lines containing the pattern 'current' in file bank.lst
```
grep current bank.lst
```
101 Aditya 0 14/11/2000 current
103 Naman 0 20/08/2009 current

# Search lines containing the pattern 'Chirag' in file bank.lst
```
grep 'Chirag' bank.lst
```
or
```
grep Chirag bank.lst
```
108 Chirag 0 15/12/2012 Current

# Count the number of lines containing the pattern 'Current' in file bank.lst
```
grep -c Current bank.lst
```
3












