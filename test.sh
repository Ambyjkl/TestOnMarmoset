#! /bin/bash
ssh username@linux.student.cs.uwaterloo.ca "mkdir -p course/a$1"
if [ "$3" == "all" ] ; then
    for ((i=1;i<=$2;++i)); do 
        scp a$1q$i.cc username@linux.student.cs.uwaterloo.ca://u2/username/course/a$1
        ssh username@linux.student.cs.uwaterloo.ca "marmoset_submit course a$1q$i /u2/username/course/a$1/a$1q$i.cc"
    done
else 
    scp a$1q$2.cc username@linux.student.cs.uwaterloo.ca://u2/username/course/a$1
    ssh username@linux.student.cs.uwaterloo.ca "marmoset_submit course a$1q$2 /u2/username/course/a$1/a$1q$2.cc"
fi
