<h1 align="center">Minishell 🐚</h1>
<h4 align="center">As beautiful as a shell </h4>

<p align="center">

 <img alt="Github top language" src="https://img.shields.io/badge/c-97.0%25-brightgreen">

  <img alt="Github language count" src="https://img.shields.io/badge/languages-2-brightgreen">

  <img alt="Repository size" src="https://img.shields.io/badge/repo%20size-1.4MB-brightgreen">

  <img alt="Success" src="https://img.shields.io/badge/success-101%25-brightgreen">
</p>

<p align="center">
 <img alt="School21_profile" src="https://badge42.vercel.app/api/v2/clfroilq2010708mcz522te2p/stats?cursusId=21&coalitionId=92">
</p>

<p align="center">
  <a href="#about">About</a> &#xa0; | &#xa0;
  <a href="#features">Features</a> &#xa0; | &#xa0;
  <a href="#summary">What you should know (Summary)</a> &#xa0; | &#xa0;
  <a href="#starting">Starting</a>
</p>


![minishell](https://i.imgur.com/z40TNtL.jpeg)

## About ##

- Minishell is a project at school 42 and the instructions were given in the [subject](https://github.com/andy-ahmedov/minishell/en.subject.pdf).

- The objective of this project is to create a simple shell to learn a lot about processes and file descriptors.

- The existence of shells is linked to the very existence of IT. At the time, all coders agreed that communicating with a computer using aligned 1/0 switches was seriously irritating. It was only logical that they came up with the idea to communicate with
a computer using interactive lines of commands in a language somewhat close to english.
With Minishell, you’ll be able to travel through time and come back to problems people faced when Windows didn’t exist.

## Features ##

- ``cd``
- ``pwd``
- ``echo``
- ``export``
- ``unset``
- ``env``
- ``exit``
- ``CTRL-C``
- ``CTRL-\``
- ``CTRL-D``
- ``|`` pipes
- ``;`` semicolons
- ``>`` ``>>`` ``<`` ``<<`` redirections
- ``&&`` ``||`` operators
- ``*`` wildcard
- local variable
- env expansions + ``$?``
- line edition
- termcaps
- history (up/down arrows)
- move cursor (left/right arrows)
- move word by word (CTRL-left/CTRL-right)
- move to beginning/end of line (HOME/END)
- change line (CTRL-UP/CTRL-DOWN)
- copy/paste/cut from cursor position (ALT-X/ALT-C/ALT-V)

## Summary ##
#### I- Parsing
- .1. Separation commande_line
- .1,1. Quote close and quoting rules
- .2. Separation of word in commande_line
- .2,1. Type of word
- .2,2. Expende word
- .2,3. Expende env
- .3. Prepare execution
- .4. Error parsing

#### II- Builtin
- .1. Env
- .2. Export
- .3. Unset
- .4. Pwd
- .5. Cd
- .6. Exit

#### III- Redirection
- .1. Pipe
- .2. Open Close file
- .3. Here_doc /// this part is not posix prouf, see end of point
 
#### IV- Execution
- .1. When fork
- .2. Command exist or right to execute?
- .3. Execution
- .4. Close fd
- .5. Exit_status

## Starting ##

```bash
# Clone this project
$ git clone https://github.com/andy-ahmedov/minishell

# Access
$ cd minishell

# Compile the project
$ make

# Run the project
$ ./minishell
```
