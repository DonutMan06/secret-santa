# secret-santa

A small Secret Santa program written in Bash !

This script will :
- perform shuffle in a list of people, while avoiding p(x) = x
- send customized e-mail to all these people, telling their associated secret Santa
- send a copy of the script at the end of the e-mail

## Script set up

Open the script and update the emails and names lists accordingly to your need.

You can also update the message that will be sent, as well as the return adress.

The script assumes that your account has been correcty configured to use the `mail` command.

## Usage

Once all is configured, simply execute the script.

## Improvement

Looking at this script that I wrote in 2019, I see that the shuffle stuff could be improved. We should be able to shuffle the list once without drafting an identity permutation (basically when someone becomes his own secret Santa...)

