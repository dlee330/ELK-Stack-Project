## 2. Lists and Loops

Use loops to automate repetitive tasks in your script.

Loops facilitate code reuse, by allowing commands to be run many times without actually typing them repeatedly.


### Task 1. 

Create a variable that holds a list of 5 of your favirite U.S (e.g. Nebraska, California, Texas, Hawaii, Washington)

Create a `for` loop that checks for the state 'Hawaii' in your list of states. If the 'Hawaii' is there, print "Hawaii is the best!". If is not there, print "I'm not fond of Hawaii".

```
#!/bin/bash

# Create Variables
nums=$(echo {0..9})
states=('Nebraska' 'California' 'Texas' 'Hawaii' 'Washington')
ls_out=$(ls)

# Create a loop that looks for 'Hawaii'
for state in ${states[@]}; do
  if [ $state == 'Hawaii' ]; then
    echo "Hawaii is the best!"
  else
    echo "I'm not a fan of Hawaii."
  fi
done



```



### Task 2.

Create a variable that holds a list of numbers from `0-9`.

Then create a `for` loop that prints out only the numbers 3, 5 and 7 from your list of numbers.

```
#!/bin/bash

# Create For Loops
# Create a loop that prints only 3, 5 and 7
for num in ${nums[@]}; do
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]; then
    echo $num
  fi
done

```


### Task 3.

Create another variable that holds the output of the command `ls`

Then create a `for` loop that prints out each item in your variable that holds the output of the `ls` command.

```
#!/bin/bash

# Create a `for` loop that prints out each item in your variable that holds the output of the `ls` command.
for x in ${ls_out[@]}
do
  echo $x
done

```


#### Task 4.

During the last exercise, you created a variable that holds the command `find / -type f -perm /4000 2> /dev/null` and then you used `echo` to print out your variable later in the script.

You may have noticed that this produces an output that is a bit jumbled together:

Exec Files:
/home/sysadmin/Documents/setup_scripts/sysadmin/day3_stu_setup.sh /home/instructor/Documents/setup_scripts/sysadmin/day3_stu_setup.sh /home/instructor/Documents/setup_scripts/instructor/day3_setup.sh

##### Challenge
Instead of using `echo` to print out this variable, use a `for` loop to print out each file on it's own line.

```
#!/bin/bash

# Create a for loop to print out execs on one line for each entry
execs=$(find /home -type f -perm 777 2>/dev/null)
for exec in ${execs[@]}
do
  echo $exec

done

```


#### Task 5.

Using a for loop to Install package only if it doesn't exist.

```
#!/bin/bash

# Using for loop to Install package only if it doesn't exist.
packages=('nano' 'wget' 'net-tools')

for package in ${packages[@]}
do
  if [ $(which $package)]
  then
    echo "$package is installed."
  else
    echo "$package is not installed, proceeding to install"
    apt update
    apt install $package -y
  fi
done

```

#### Task 6.
Look for script files in user's home directory

```
#!/bin/bash

# Look for script files in user's home directory
for user in $(ls /home)
do
  if [ -d /home/$user ]
  then
    for item in $(find /home/$user -iname '*.sh')
    do  
      echo "Script found in $users's home directory: $item"
    done
  fi
done
```


---
[for_loops.sh](./for_loops.sh)

```bash
#!/bin/bash

# Create Variables
nums=$(echo {0..9})
states=('Nebraska' 'California' 'Texas' 'Hawaii' 'Washington')
ls_out=$(ls)

execs=$(find /home -type f -perm 777 2>/dev/null)

# Create For Loops
# Create a loop that prints only 3, 5 and 7
for num in ${nums[@]}; do
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]; then
    echo $num
  fi
done

# Create a loop that looks for 'Hawaii'
for state in ${states[@]}; do
  if [ $state == 'Hawaii' ]; then
    echo "Hawaii is the best!"
  else
    echo "I'm not a fan of Hawaii."
  fi
done

# Create a `for` loop that prints out each item in your variable that holds the output of the `ls` command.
for x in ${ls_out[@]}; do
  echo $x
done

# Bonus
# Create a for loop to print out execs on one line for each entry
for exec in ${execs[@]}; do
  echo $exec

done

# Using for loop to Install package only if it doesn't exist.
packages=('nano' 'wget' 'net-tools')

for package in ${packages[@]}
do
  if [ $(which $package)]
  then
    echo "$package is installed."
  else
    echo "$package is not installed, proceeding to install"
    apt update
    apt install $package -y
  fi
done

# Look for script files in user's home directory
for user in $(ls /home)
do
  if [ -d /home/$user ]
  then
    for item in $(find /home/$user -iname '*.sh')
    do  
      echo "Script found in $users's home directory: $item"
    done
  fi
done

```
