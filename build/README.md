AWS Services
------

| AWS Service              | Configuration                                                                                 |
| -------------------------|:-------------------------------------------------------------------------------------------|
| AMI                      | Ubuntu             |
| Instance Type (Minimium) | t2.micro - 1 vcpu, 2gb ram, $0.023 per hour                                                |
| Instance Type (Ideal)    | t2.medium  - 2 vcpu, 4gb ram, $0.047 por hora                                              |
| IAM Role                 | EC2 with full-access                                                                       |
| EBS (Ideal)              | SSD general purpose (GP2) 100/3000 IOPS                                                    |

Security Group:
------

* TCP Ports

| User Interfaces      | Port  |
| ---------------------|:------|
| Consul UI            | 8500  |
| Neo4J UI             | 7474  |
| Finder View          | 10000 |

| Services             | Port |
| ---------------------|:-----|
| Finder               | 9090 |
| Neo4J Connection     | 7687 |

| Microservice         | Port |
| ---------------------|:-----|
| Product              | 8080 |
| Fare                 | 8090 |
| Access Management    | 8091 |
| Inventory            | 8092 |
| Order                | 8093 |
| User Management      | 8094 |
| Postal Code          | 3000 |
| Billing              | 3001 |
| Calendar             | 3002 |
| Mail Relay           | 3003 |
| Newsletter           | 3004 |
| Product Rating       | 3005 |
| Product Rating       | 3006 |
| Category             | 3007 |
| Banner               | 3008 |

Create a new keypair


