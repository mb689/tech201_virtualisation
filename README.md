# DevOps and Development Environments 

## DevOps



## Reason for a DevOps Engineer
- Ease of use -> User friendly tools for all works in the project
- Flexibility -> Able to change tech based on business needs
- Robustness -> Aim for 100% uptime
- Cost -> Lower cost used to complete tasks

## Infrastructure and architecture
- Monolith - Everything needed to run a software/app (storage) is placed all in one machine. Problem with this is if the big machine is down then it will effect the entire app/software
- 2 Tier architecture - This is a concept where everything needed to run an app is shared between two different machines. This is much better than monolith as if one goes down then the app or software can still run for users.
- Microservices - This infrastructure allows us to break up the needs of the app into different machines. Containers are the thing used to implement a microservice infastructure.   

## DevOps risk table
- Includes all the risks possible and the level os severity 
- Table : Description -> chance of occurence -> potential damage -> risk



# Dev Environments

## What is a dev environments
- A development environment is the collection of processes and tools that are used to develop the source code for a program or software product. This involves the entire environment that supports the process end to end, including development, staging and production servers.

## What makes a good dev environment?
- User-friendly, fast and robust
- It should be easy to update
- It should match the production environment as closely as possiblex
- It should be the same for everyone, everywhere    
- It should support one application 
    - App 1 may use a version of a program that may conflict what app 2 is using


## Making a dev environment
- 1. Install ruby (https://rubyinstaller.org/downloads/)
- 2. Check it is installed by going on git bash and typing in `ruby --version` in the terminal.
    - ![](./Images/Git%20Bash%20(Ruby%20version).png)
- 3. Install virtual box via -> (https://www.virtualbox.org/wiki/Download_Old_Builds_6_1)
    - For virtual box to work we need to enable some window feature for virtualisation
    ![](./Images/windows%20features.png)
- 4. Next download vagrant -> (https://developer.hashicorp.com/vagrant/downloads)
    - Check for version on bash:
    - ![](./Images/Git%20Bash%20(Vargrant%20version).png)
- 5. Make the configuration file for vagrant by typing in `vagrant init ubuntu/xenial64` in git bash.
    - ![](./Images/Vagrant%20setup.png)
    - Once this is done a new file will be added to our directory:
    - ![](./Images/Vagrant%20(config%20file).png)
- 6. Now we need to send the information to virtual box by using the command `vagrant up` on git bash.
- 7. We now need to connect virtual box by entering the command `vagrant ssh` in git bash.
    - Below is an indication of us being connected:
    - ![](./Images/connected%20to%20virtualbox.png)
- 8. We now need to install `nginx` by entering the command `sudo apt-get install nginx -y`
- 9. Now we start nginx using `nginx start`
- 8. In our vagrant file we need to include `config.vm.network "private_network", ip: "192.168.10.100"` to access it in a web-page
- 10. In order for this to work we need `exit` the virtual box and then type in the command `virtual reload` to update any new additions in the vagrant file.


## Testing tools
- `gem install bundler` ruby testing bundle.
- `bundle`
- `rake bundle` runs all the tests to check if everything is downloaded
- `app` Includes all the tools and software to run program.
- `sudo apt-get update -y` update every tool in the program
- `sudo apt-get upgrade -y` upgrades all the tools in the program (should be careful)

## Install nginx 
- `sudo apt-get install nginx -y`
- `sudo systemctl enable / * nginx`

## Install node js (specific version)
- `sudo apt-get install python-software-properties`
- `curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`
- `sudo apt-get install nodejs -y`

## Install pm2 
- `sudo npm install pm2 -g`

## Running the app
- `npm install`
- `node app.js`
- Access app through port `3000`


## Testing the webhook
## Testing to see if these will merge the changes to main
