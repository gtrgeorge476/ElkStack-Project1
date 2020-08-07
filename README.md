# ElkStack-Project1
 README.md
Automated ELK Stack Deployment
The files in this repository were used to configure the network depicted below.
These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the ansible roles file may be used to install only certain pieces of it, such as Filebeat.
---
- name: installing and launching filebeat
  hosts: webservers
  become: yes
  tasks:


  - name: download filebeat deb
    command: curl -L -O https://gist.githubusercontent.com/slape/5cc350109583af6cbe577bbcc0710c93/raw/eca603b72586fbe148c11f9c87bf96a63cb25760/Filebeat


  - name: install filebeat deb
    command: sudo dpkg -i filebeat-7.6.1-amd64.deb


  - name: drop in filebeat.yml
    copy:
      src: /etc/ansible/files/filebeat-config.yml
      dest: /etc/filebeat/filebeat.yml


  - name: enable and configure system module
    command: filebeat modules enable system


  - name: setup filebeat
    command: filebeat setup


  - name: start filebeat service
    command: service filebeat start


This document contains the following details:
Description of the Topology
Access Policies
ELK Configuration
Beats in Use
Machines Being Monitored
How to Use the Ansible Build
Description of the Topology
The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.
Load balancing ensures that the application will be highly reliable, in addition to restricting access to the network.
A load balancer ensures very restricted access to the machines behind it.  In this example, the load balancer has a public IP address and both vm’s only have private IP addresses.  A jumpbox allows you to access computers in different security groups.
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
TODO: What does filebeats look for?
For each file located, a harvester is started, which reads a single log for new content.
TODO: What does Metricbeat record?
It records the details about a service, how to connect, and how often to collect.
The configuration details of each machine may be found below. Note: Use the Markdown Table Generator to add/remove values from the table.
Name
Function
IP Address
Operating System
Jump Box
Gateway
10.0.0.1
Linux
Elk Server
Server
10.4.0.5
Linux
Web-1
Web server
10.0.0.5
Linux
Web-2
Web server
10.0.0.7
Linux
Access Policies
The machines on the internal network are not exposed to the public Internet.
Only the jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
TODO: Add whitelisted IP addresses
52.151.36.156 /private 10.0.0.4
Machines within the network can only be accessed by the jumpbox.
TODO: Which machine did you allow to access your ELK VM? What was its IP address?
Jumpbox address= 10.0.0.4
A summary of the access policies in place can be found in the table below.
Name
Publicly Accessible
Allowed IP Addresses
Jump Box
Yes
10.0.0.1 10.0.0.2












Elk Configuration
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
TODO: What is the main advantage of automating configuration with Ansible?
Less chance of typos or other errors, much faster when deploying multiple machines.


The playbook implements the following tasks:
TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc.
Install Docker .io
Install python3.pip
Install Docker module
Increase virtual memory
Download and launch a Docker Elk container
The following screenshot displays the result of running docker ps after successfully configuring the ELK instance.

Target Machines & Beats
This ELK server is configured to monitor the following machines:
TODO: List the IP addresses of the machines you are monitoring
Web-1 10.0.0.5  Web-2 10.0.0.7
We have installed the following Beats on these machines:
TODO: Specify which Beats you successfully installed
Filebeats and metricbeats
These Beats allow us to collect the following information from each machine:
TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., Winlogbeat collects Windows logs, which we use to track user logon events, etc.
Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:
SSH into the control node and follow the steps below:
Copy the _yml____ file to _ansible/roles____.
Update the _config____ file to include...private IP address for Elk Stack server.
Run the playbook, and navigate to _52.242.121.13 to check that the installation worked as expected.
TODO: Answer the following questions to fill in the blanks:
Which file is the playbook? Where do you copy it?
Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
_Which URL do you navigate to in order to check that the ELK server is running?
52.242.121.13
As a Bonus, provide the specific commands the user will need to run to download the playbook, update the files, etc.

