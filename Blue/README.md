# Blue

This is a web based challenge with a few steps  
I've included all files required to launch the challenge using Docker Compose  

## Setup
- Install Docker and Docker Compose
- Place the files wherever you'd like, in this example they were in the home dir of a user named "blue"  
- Edit the "docker-compose.yml file with the public port and IP  
- Change the paths if necessary  
- From the same directory as the yml file, run: "docker-compose up"  
- The necessary Docker files will be download and the container will launch  
- I ran this in a tmux shell  

## Walthrough:
- Upon visiting the site the player is taken to a page that mimics the Windows BSOD  
- At bottom of the page is a string of hex encoded text, convert this to text
- The hidden message points you to the "robots.txt" file
- Visit the robots.txt file and view the "hidden" directory
- Cookie monster wants a cookie
- Go to Dev Tools in your browser and change the value of the "have_cookie" cookie to TRUE, and refresh the page
- Alternatively you could POST a cookie with the correct value using curl
- The flag will be displayed