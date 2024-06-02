# Secured and Monitored Web Infrastructure

1. Reasons for Adding New Components:
- Added firewalls for each server to protect them from attacks and exploitation
- Added 1 SSL certificate to serve the website over HTTPS, which is more secure than HTTP
- Added 3 monitoring clients to collect logs and send them to the data collector (Sumo Logic)

2. Purpose of Firewalls:
Firewalls monitor and control incoming and outgoing network traffic based on security rules. They act as a barrier between a trusted network and an untrusted network.

3. Importance of HTTPS:
HTTPS encrypts the data using Transport Layer Security (TLS), making the communication more secure compared to the unencrypted HTTP protocol.

4. Purpose of Monitoring:
Monitoring helps detect and diagnose any web application performance issues proactively.

5. How Monitoring Tool Collects Data:
The monitoring tool collects logs from the application server, MySQL database, and Nginx web server. These logs provide time-stamped documentation of relevant events.

6. Monitoring Web Server QPS:
To monitor the web server's queries per second (QPS), you would need to monitor it at both the network and application levels, as a single web server can handle 1K queries per second.

Issues:
A. SSL Termination at Load Balancer Level:
Terminating SSL at the load balancer level is an issue because decryption is resource and CPU-intensive. This may impact the server's ability to focus on application tasks.

B. Single MySQL Server for Writes:
Having only one MySQL server that can accept writes is an issue because if it goes down, no data can be added or updated, affecting certain application features.

C. Identical Server Components:
Having identical server components (database, web server, and application server) means that if there's a bug in one component, it will be present in the other servers as well.