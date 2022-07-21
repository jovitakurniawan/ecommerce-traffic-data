#!/bin/bash

DIR="/Users/jkurniawan/sql-tugas4/data"

#Test case 1:
echo "Running test case 1.."
cat ${DIR}/data_clean.csv | wc
echo "Done"

#Test case 2:
echo "Running test case 2.."
cat ${DIR}/data_clean.csv | grep electronics | grep smartphone| awk -F ',' '{print $5}'| sort | uniq -c | sort -nr
echo "Done"