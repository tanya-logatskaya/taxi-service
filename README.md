# TAXI SERVICE
![drawing](https://misadventureswithandi.com/wp-content/uploads/2015/06/Taxis-in-New-York-City-New-York-USA.jpg)
### This project is designed to imitate the work of the simple taxi service app with driver authentication
During the first launch you’re granted access to:
- login page for previously authorized users
- registration page

#### After registration, feel free to test full app functionality. Such as:
- creating manufacturers
- creating cars, using the list of existing manufacturers
- connecting drivers to cars, using related lists of options
- displaying all manufacturers, cars, or drivers
- displaying cars exclusively for the authorized drivers
- deleting manufacturers, cars, or drivers
---
### The diagram below represents connections, built inside this app
![](src/main/resources/images/127296817-e1af8215-1819-49ed-ba0a-6526e71e6542.png)
### Implementation details

#### Project is based on 3-layered architecture:

- Data access layer (DAO)
- Application layer (service)
- Presentation layer (controllers)

#### Technologies:
- Apache Tomcat (v9.0.50)
- MySQL
- JDBC
- Servlet
- JSP
- JSTL
- HTML, CSS
- Maven
- Maven Checkstyle Plugin
---
### Run Project

#### Tools to run this project:

- IntelliJ IDEA Ultimate IDEA
- ApacheTomcat Tomcat
- MySQL and MySQL Workbench MySQL

1. Clone the project on your IDE
2. In MySQL Workbench run the script from resources/init_db_my.sql

Warning!!! if you already have a database named "taxi", this script will delete it and create a new database with the same name.

3. In src/main/java/taxi/util/ConnectionUtil change URL, USERNAME and PASSWORD with your data. JDBC Driver is already provided, but you can change it with a more suitable as well
4. In the src/main/resources/log4j2.xml at line File name = "File" fileName = "logs\app.log" replace "logs\app.log" with absolute path to .log file
5. Configure TomCat Local server
   (Add New Configuration -> TomCat -> Local -> Fix -> taxi-service:war exploded -> OK)
---
### Login page:
![](src/main/resources/images/548B2BDB-316D-49C3-B2DF-0A73915C87DE.png)
### Registration page:
![](src/main/resources/images/FEED2D6A-2CA8-43C5-91B1-B964185888BC.png)
### Main menu:
![](src/main/resources/images/468E6A65-13AB-4037-87C2-16352162DB6B.png)
### After choosing to show all available cars you have an option to create a new car
![](src/main/resources/images/14920C77-C592-4B5C-A744-364A9D9597BB.png)
### Here you can create new car, using existing manufacturers, or create a new manufacturer first
![](src/main/resources/images/4E4B49B2-AF88-4B2E-A380-A623CB9754A1.png)
![](src/main/resources/images/1F207E1A-4F2C-4B8A-AE8A-2A28C26DE11F.png)
### Now you can connect driver to a car and display cars, available for current driver
![](src/main/resources/images/20514EBE-87FD-4E93-B16D-C90C0BDD5768.png)
![](src/main/resources/images/9D1593A0-9E1F-45CB-BA60-5A3AE41EF6B0.png)
