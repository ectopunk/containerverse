# Containerverse

Containerverse is rudimentary x86_64 test bed container group.  The test bed is built from Dockerhub CentOS official base images Dockerfile and customizations. There is one each Dockerfile for CentOS 5, 6 and 7 latest.  Two pair of each image is deployed into a container.  Each one should be independent, fully containerized with no outside network, SSHD running, and never logged into by the tester and pushed into the background.  All commands must depend on exercising Docker commands on a control host for future automation opportunities or the idea of containerization becomes ridiculous.

The following table was confirmed as of July 28, 2015.

* CentOS-7	7 (1503) 64	
** EOL=06/30/2024
CentOS-6	6.6 	 32	
EOL=11/30/2020 (no Dockerfile at this time)
CentOS-6	6.6 	 64	
EOL=11/30/2020
CentOS-5	5.11	 32	
EOL=03/31/2017 (no Dockerfile at this time)
CentOS-5	5.11	 64	
EOL=03/31/2017

Confusion surrounding Oracle UEK, versus Ora-can't on RHEL 5.  I386 archetecture is out there, somewhere, I just know it.  There are some shocking differences in RHEL 7 that need to be understood, namely how common shell tools have gone missing potentially wiping out older automation.
