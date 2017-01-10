# TestOnMarmoset
Upload your programs to marmoset easily
## Instructions
First you need to be able to ssh without a password using an RSA key pair.

Run this and press enter three times:

```bash
$ ssh-keygen -t rsa -b 2048
```

Now run this to copy your credentials over:

```bash
$ ssh-copy-id username@linux.student.cs.uwaterloo.ca
```

Now run this:

```bash
$ ssh username@linux.student.cs.uwaterloo.ca 'echo "source /u/cs241/setup" >> .bashrc'
```

If that ran without a password you are good. Now you can use test.sh. But first replace "username" with your username and "course" with your course:

```bash
$ sed -i 's/username/yourusername/g;s/course/cs138/g' test.sh
```

And make it executable:

```bash
$ chmod +x test.sh
```

## Usage
Option 1: assignment number (1,2,3 for a1, a2, a3)

Option 2: question number (1,2,3 for q1, q2, q3)

Optional Option 3: all for testing all question numbers from q1 to the number specified by option 2

Example (testing everything from q1 to q5 in a1):

```bash
$ ./test.sh 1 5 all
```
