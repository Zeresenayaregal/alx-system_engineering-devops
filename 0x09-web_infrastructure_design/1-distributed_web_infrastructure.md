# Distributed Web Infrastructure

1. Reasons for Adding New Components:
- Added a new web server to enable load balancing and improve scalability
- Implemented a load balancer to distribute incoming traffic across the web servers
- Added a primary-replica (master-slave) database cluster to improve reliability and read scalability

2. Load Balancer Distribution Algorithm:
The load balancer uses the Round Robin algorithm to distribute incoming requests across the web servers. This algorithm sends requests to the servers in a circular fashion, one after the other, to ensure even load distribution.

3. Active-Active vs Active-Passive Setup:
The load balancer enables an Active-Active setup, where both web server nodes are actively serving requests simultaneously. This provides better performance and scalability compared to an Active-Passive setup, where one server is active while the other is in standby mode.

4. Database Primary-Replica (Master-Slave) Cluster:
The database setup uses a Primary-Replica (Master-Slave) cluster configuration. The master database server logs all updates, which are then replicated to the slave servers. This allows for improved read scalability by distributing read requests across the slave nodes, as well as providing redundancy and failover capabilities.

5. Difference between Primary and Replica Nodes:
- The primary database node is the main, authoritative source of the application data.
- The replica nodes are copies of the primary node, providing redundant instances of the data.
- Replica nodes help protect against hardware failures and increase the capacity to serve read-heavy requests.

Issues:
A. Single Point of Failure (SPOF):
The major SPOF in this infrastructure is having only one load balancer. If the load balancer fails, the entire system will be down, as there is no redundancy or failover mechanism.

B. Security Issues:
- The lack of HTTPS encryption means that the communication between the application and users is not secure, exposing sensitive information to potential eavesdroppers.
- The absence of firewalls leaves the system vulnerable to various attacks, such as denial-of-service (DoS) or data breaches.

C. Lack of Monitoring:
Without any monitoring in place, it becomes difficult to identify and address issues proactively. Monitoring is essential for understanding system performance, detecting problems, and improving the overall user experience.