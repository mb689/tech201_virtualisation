# Nginx Reverse Proxy 

## What are ports
- A port is a virtual point where network connections start and end. Ports are software-based and managed by a computer's operating system. Each port is associated with a specific process or service.

## What is reverse proxy and how is it differnt to proxy?
- A traditional forward proxy server allows multiple clients to route traffic to an external network. For instance, a business may have a proxy that routes and filters employee traffic to the public Internet. A reverse proxy, on the other hand, routes traffic on behalf of multiple servers.

## Diagram explaining proxies 
![](./Images/Proxies.avif)

## Default nginx configuration:
``` 
server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;

        server_name _;

        location / {
                try_files $uri $uri/ =404;
        }
}
```

# How to setup nginx reverse proxy
- Step1 -> Install Nginx from Default Repositories `sudo apt-get install nginx`
- Step2 -> Start Nginx and Configure to Launch on Reboot `sudo systemctl start nginx`
- Step3 -> Unlink Default Configuration File `sudo unlink /etc/nginx/sites-enabled/default`
- Step4 -> Create New Configuration File `sudo vi custom_server.conf`
- Step5 -> In the new conf file enter:
    ```
    server {

        listen 80;

        location / {

            proxy_pass http://my_server;

        }

    }       
    ```
    - Just change http://my_server to the location of your choice, and Nginx will intercept client requests and route them to the location you specify. Once you’ve finished, save the file and exit.
- Step6 -> Link and Activate Configuration File `ln -s /etc/nginx/sites-available/custom_server.conf`
- Step7 -> Test and Restart Nginx `sudo service nginx configtest` & `sudo service nginx restart`