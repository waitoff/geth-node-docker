goQuorum-node-docker v.4.0 (27/03/2023)
================

node Docker Compose

History
--------------------
- v1.0 Proof of work (Homestead)
- v2.0 Proof of work (Constantinople) 
  - v2.2 - added fork2 (Istanbul)
  - v2.1 - new nodes added
- v3.0 Proof of Authority with Staking (PoAS)
  - New network and genesis
  - Transferred wallet balances
  - Ports changed from 30303 to 31323
  - Removed http permissions: admin,db,personal,shh 
- v4.0 Ethereum geth replaced with goQuorum Clique 

Deploying a node
--------------------

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
git clone https://github.com/waitoff/geth-node-docker
cd goQuorum-node-docker
sudo docker-compose -f docker-compose.yml up --build -d
sudo docker-compose --scale node=6
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
