docker-opensimulator
====================

OpenSimulator docker container 


### to run the container the fist time:

 docker run -d -p 9000:9000 -p 9000:9000/udp quantumobject/docker-opensimulator
 
## for the first configuration :

docker exec -it container_id after_install

- respond the questions relate to virtual word 

New region name []:     ==> need to entry region name that you want for it .(need to remember it)

RegionUUID [29923331-d238-40cc-a308-46d3a129b6e3]:     ===> press enter key to keep the same []

Region Location [1000,1000]:                           ===> press enter key to keep the same []

Internal IP address [0.0.0.0]:                         ===> press enter key to keep the same []

Internal port [9000]:                                  ===> press enter key to keep the same []

Allow alternate ports [False]:                         ===> press enter key to keep the same []

External host name [SYSTEMIP]:   ===> need to entry the external ip or your http address don't include the port

New estate name [My Estate]:     ===> press enter or change it 

Estate owner first name [Test]: ===> change or enter for default Test (need to remember it)

Estate owner last name [User]:  ===> change or enter for default User (need to remember it)

Password:                       ===> remember it for login (need to remember it)

Email:                          ===> ..... 

User ID [6e94775a-821e-4243-a616-366f2a83ea0c]:  ===> press enter key to keep the same []

after some process it will show :

Region (.....) # 

- 'quit' comand to continue.


## Use viewer to check the virtual world create by OpenSimulator:

(Imprudence)[http://wiki.kokuaviewer.org/wiki/Imprudence:Downloads]

Grid Manager  to add your virtual world to the application ...

where :

grid name ==> will be region name

login URL ==>  http://external_ip:9000/  

login page ==> http://external_ip:9000/?method=login

everything else no importand at this moment ... Apply and then use info to log in .




