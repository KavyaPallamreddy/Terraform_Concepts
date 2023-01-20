#!/bin/bash
    #1.Set up jenkins
    sudo su -

    # Install java-openjdk11

    sudo amazon-linux-extras install java-openjdk11 -y
    # Install wget

    yum install wget -y

    # Install Jenkins Repostiory

    sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo

    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

    # Install Jenkins
    yum install jenkins -y

    # Install Docker

    yum install docker -y 

    # Install maven 
    cd /opt
    sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.7/binaries/apache-maven-3.8.7-bin.tar.gz
    tar -xvzf apache-maven-3.8.7-bin.tar.gz  
    
    

    #Add environment Variables to bash_profile
    echo 'JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.16.0.8-1.amzn2.0.1.x86_64' >> ~/.bash_profile
    echo 'export JAVA_HOME' >> ~/.bash_profile
    echo 'M2_HOME=/opt/apache-maven-3.8.7' >> ~/.bash_profile
    echo 'M2=/opt/apache-maven-3.8.7/bin' >> ~/.bash_profile
    echo 'export M2_HOME' >> ~/.bash_profile
    echo 'export M2' >> ~/.bash_profile
    echo 'PATH=$JAVA_HOME:$M2_HOME:$M2' >> ~/.bash_profile

    source ~/.bash_profile
    
    
 
    
    
    
    
    
    
   
    
    
    
    
    
    
    
    
    


   
    
    








 
 
 
 
 
 
 
 
 








 
 
 
 
 
 
 
 
 