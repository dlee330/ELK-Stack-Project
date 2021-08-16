## 1. Log Analysis and Filtering


- Using **sed**, replace all instances of INCORRECT_PASSWORD with ACCESS_DENIED so the data is consistent. Write result to **access_denied.txt**

- Using **awk**, filter several fields from the log file to determine the primary username being used to log in. Write result to **filtered_logs.txt**


[Log_analysis.sh](./Log_analysis.sh)


```
#!/bin/bash

# change INCORRECT_PASSWORD to ACCESS_DENIED in LogA.txt and write to access_denied.txt
sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > access_denied.txt

# printout the column 4 and 6 from LogA.txt to filtered_logs.txt
awk '{print $4, $6}' LogA.txt > filtered_logs.txt

```

Command to run:

```
sh ./Log_analysis.sh
```
