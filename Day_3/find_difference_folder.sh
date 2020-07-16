#!/bin/bash

mkdir original updated;
touch original-file.sh updated-file.sh;
cp original-file.sh original;
cp updated-file.sh updated;
diff -rq original updated;
mkdir original-backup;
cp original original-backup;
cp updated-file.sh original-backup.sh;
mv original-backup.sh original-backup;
cmp updated original-backup;
