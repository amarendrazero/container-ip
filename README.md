# container-ip
Collect container IP address &  display on website.

Project Steps:

*Step1. Dockerfile
Create a Dockerfile that sets up Apache and prepares it to serve a customized index.html file:

*Step2. Create index.html File
Create an index.html file that will display the IP address of the container dynamically using a shell script.

*Step3. Create a Shell Script to Get IP Address
Create a shell script to collect the container's IP address and serve it via Apache.

*Step4. Build and Run the Docker Image
    -Build the Docker image using the Dockerfile.

        $docker build -t container-ip .

   Explanations of above command:

       "docker build": Builds a new Docker image
    "-t container-ip": To specify the tag or name for the new image. Tags the image with the specified name, (here "container-ip"). 
                       The -t option is short for --tag.
        "The dot (.) :  represents the current working directory. Uses a Dockerfile in the current directory. 
                       It's the build context, means the directory that contains the Dockerfile 
                       and any other files required for the build process. 
 

*Step5.Run the Docker container based on the image just built.

       $docker run -d -p 8080:80 --name container-ip container-ip
	
  Explanations of above command:
  
           "docker run": Runs a new container from a Docker image
	                 "-d": Detaches the container from the terminal, running it in the background
           "-p 8080:80": Maps port 8080 on the host machine to port 80 in the container
 	"--name container-ip": Gives the container the name container-ip
         "container-ip": Uses the Docker image with the name container-ip to create the new container

*Step6. Access the Web Page
Open a web browser and navigate to see the dynamically displayed IP address of the container.

    http://<your-ec2-instance-public-ip>:8080    #From EC2 system of AWS
          or
    http://<localhost>:8080                      #From local System

-----------------------------------------------------------
Step for Verification if required:
  Apache Logs: Check the Docker container logs for any errors or warnings:
    
    $docker logs container-ip

  File Check: Ensure that the /usr/local/apache2/htdocs/ip file contains the correct IP address.
