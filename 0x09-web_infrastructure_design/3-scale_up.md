# Scaled Up Web Infrastructure

1. Reasons for adding new components:

- Added 1 additional server:
  - Allows separating each component (web server, application server, and database) into their own dedicated servers
  - Adds an extra server with all the components to serve as a backup in case any component or server fails
  - Each server is being monitored and has a firewall

- Added 1 additional load balancer:
  - This extra load balancer will assist in handling more traffic across the whole infrastructure