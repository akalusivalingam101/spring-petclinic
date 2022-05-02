Requirement
1.	Use https://github.com/spring-projects/spring-petclinic  
2.	Use JCenter for dependencies 
3.	Build a Jenkins pipeline for compile, test , package
4.	Build a Docker Image
5.	Bonus : use Jfrog Repository in the pipeline
Deliverables

1.	Forked the assignment from https://github.com/spring-projects/spring-petclinic to https://github.com/akalusivalingam101/spring-petclinic . Branch is Main
2.	POM file is located at https://github.com/akalusivalingam101/spring-petclinic/blob/main/pom.xml and updated for JCenter references
3.	Dockerfile is located at https://github.com/akalusivalingam101/spring-petclinic/blob/main/Dockerfile
4.	Jenkinsfile is located at https://github.com/akalusivalingam101/spring-petclinic/blob/main/Jenkinsfile
Verification

1.	Screenshot from Jenkins that all stages completed successfully.

 

2.	Jenkins log file “Jenkinslog.txt” has been attached with this as well for further validation.
3.	Image is available in the Docker Desktop. 

 

4.	RUN the docker image and operate at port 8079.

docker run -p 8079:8080 ananthakalusivalingam.jfrog.io/default-docker-local/spring-petclinic-jfrog-demo
5.	 


 
6.	Please verify the image in the Jfrog repository
7.	 
8.	
How to RUN the Docker container..

1.	The image got pushed into JFROG artifactory.
2.	docker pull ananthakalusivalingam.jfrog.io/default-docker-local/spring-petclinic-jfrog-demo
3.	docker run -p 8079:8080 ananthakalusivalingam.jfrog.io/default-docker-local/spring-petclinic-jfrog-demo
4.	Open http://localhost:8079/


