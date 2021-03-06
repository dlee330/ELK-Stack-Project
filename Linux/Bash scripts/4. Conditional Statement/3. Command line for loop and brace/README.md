## 3. For Loops on the Command Line

Not every `for` loop we write requires a script. Bash allows us to write `for` loops directly on the command line in order to quickly complete tasks. Command line usage will really start to speed up your work and will really come in handy.

The only difference between `for` loops on the command line and in scripts is the syntax: on command lines, we're writing the loop on a single line.

- Open a bash command line.

- Type: 

```
$ for user in $(ls /home); do echo "Username is: $user"; done
```

The only difference in syntax between writing it on the command line and writing it in a script is the `;` after your `do` section and before your `done` statement.

- Run:

```
$ for user in $(ls /home); do echo "Username is: $user"; done
```

Syntax Breakdown:

- `for user in $(ls /home);` is exactly the same way we would start the loop in a script.
- `do echo "Username is: $user"` Here the `do` is on the same line as our command.
- `;` You must separate the `do` section from the `done` statement
- `done` closes the for loop.

Result:

```
Username is: adam
Username is: admin
Username is: amy
Username is: badguy
Username is: billy
Username is: criminal
Username is: engineers
Username is: hacker
Username is: http
Username is: instructor
Username is: jane
Username is: joe
Username is: john
Username is: max
Username is: sally
Username is: sam
Username is: sara
Username is: student
Username is: sysadmin
Username is: user.hashes
Username is: vagrant

```


#### Brace Expansion and For Loops

You can also use brace expansion directly with a for loop.

- Create a new directory with `mkdir brace`

- Move into your new 'brace' directory with `cd brace`

- Type `for num in {1..10}; do mkdir my_dir_$num; done`

Pause for a moment and try to guess what this command will do.

- Run `for num in {1..10}; do mkdir my_dir_$num; done`

- Run `ls`.

Result:

```
my_dir_1   my_dir_2  my_dir_4  my_dir_6  my_dir_8
my_dir_10  my_dir_3  my_dir_5  my_dir_7  my_dir_9
```

Syntax Breakdown:

- `for num in {1..10};` is exactly the same way we would start the loop in a script.
- `do mkdir my_dir_$num;` `do` is on the same line with your command, followed by a `;`.
- `done` closes the `for` loop.
