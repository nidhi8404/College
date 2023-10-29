1.create two text file(f1.txt and f2.txt)--- touch f1.txt

2.create output.text where hash value will be saved

3.hashdeep f1.txt > output.txt(to redirect output to another files)

4.hashdeep -a -r -k output.txt /home/nidhishinde/Documents/hash/--- for auditing

5.make sure output.txt is not in the same folder as the files which are hased

6.for +ve matching (hashdeep -m -k output.txt)

7.fr -ve matching (hashdeep -s -x output.txt)


Hashing is a process of converting data (such as text or files) into a fixed-length string of characters, which is typically a hexadecimal number. This output is called a hash value or checksum. Hashing is used for various purposes, including data integrity verification, password storage, and indexing.

Here's a simple explanation of hashing:

What is Hashing: Hashing is like taking a unique fingerprint of data. It converts data into a fixed-size string of characters (the hash value) using a specific algorithm (hash function). Even a small change in the input data results in a significantly different hash value.

Why it is Used: Hashing is used for a variety of purposes:

Data Integrity: To verify if data has been tampered with, you can hash the original data and compare it with the hash of the received data.
Password Storage: Hashing is used to securely store passwords in a way that makes it difficult for attackers to reverse-engineer the original password.
Data Retrieval: In databases and data structures, hashing is used to quickly locate and retrieve information.
Hashdeep is a specific tool for hashing and comparing files. It's used to create hash values for files and directories, and it's particularly useful for verifying the integrity of large sets of files or for digital forensics. Here's a simple explanation of hashdeep:

What is Hashdeep: Hashdeep is a command-line tool that calculates and verifies hash values for files and directories. It can create hash values based on various hash algorithms (such as MD5, SHA-1, and SHA-256) and compare them to verify file integrity.

Why it is Used: Hashdeep is used for ensuring the integrity of files and directories. It's often employed in scenarios where you need to confirm that files haven't been altered or corrupted. For example, it can be used in digital forensics to verify the integrity of evidence files or in data archiving to ensure that archived files remain unchanged.

In essence, hashing, including tools like hashdeep, is a fundamental technique for ensuring data integrity and security, making it a valuable tool in various fields, including computer science, cybersecurity, and data management.
