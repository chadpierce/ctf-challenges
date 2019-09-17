# Keep Counting

For this challenge the "countserv.py" file should be listening on a host that the user can reach.  

I used an ncat listener like this, running on a tmux shell:  
`ncat -lkp port# -c countserv.py'  

The player connects to that port and must "count" up to 1000.  
The count.py script is a possible solution that automates this task.  