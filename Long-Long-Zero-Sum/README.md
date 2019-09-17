# Long Long Zero Sum

Run the binary on a server with the following command:  
    
    ncat -lkp port# -c zerosum  

Place a file named "flag.txt" in the same directory that includes the flag.  
The player must connect to the server and run the binary to retrieve that flag.  
This allows you to provide the source code without revealing the flag.  

I used a tmux shell to run ncat and left it running. ncat seems more stable than nc for accepting 
multiple connections.  


