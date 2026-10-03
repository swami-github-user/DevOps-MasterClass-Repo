Launch EC2 Instance

Launch Ubuntu 26.04 EC2 instance.

Recommended:

Component	Value
AMI	Ubuntu 26.04 LTS
Instance Type	t3.medium
RAM	4 GB minimum
Storage	20 GB
Security Group	22, 8080


sudo apt update
sudo apt upgrade -y

cat /etc/os-release


sudo apt install -y openjdk-21-jre-headless

java -version

mkdir ~/jenkins
cd ~/jenkins

wget https://get.jenkins.io/war-stable/latest/jenkins.war
ls -lh
java -jar jenkins.war --httpPort=8080

http://<PUBLIC-IP>:8080

cat ~/.jenkins/secrets/initialAdminPassword


# Command to set timezone in jenkins on script consol
System.setProperty('org.apache.commons.jelly.tags.fmt.timeZone', 'Asia/Kolkata')