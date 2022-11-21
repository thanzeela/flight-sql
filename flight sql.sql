CREATE DATABASE flightmanagement;
USE flightmanagement;
CREATE TABLE flight(
  flight_number  INT primary key,
  flight_name VARCHAR (100) NOT NULL, 
  flight_description VARCHAR(200) NOT NULL,
  flight_total_capacity INT NOT NULL
  );
  
CREATE TABLE flightschedule(
 id INT PRIMARY KEY AUTO_INCREMENT,
 flight_from VARCHAR (50) NOT NULL,
 flight_to VARCHAR (50) NOT NULL, 
 flight_date DATE NOT NULL ,
 flight_time TIME NOT NULL ,
 cost INT NOT NULL, 
 flight_number INT NOT NULL,
 CONSTRAINT FK_flight_flight_number FOREIGN KEY (flight_number)
 REFERENCES flight(flight_number)
);
CREATE TABLE passenger(
id INT PRIMARY KEY NOT NULL, 
name VARCHAR(100), 
user_name VARCHAR(100), 
email VARCHAR(100) UNIQUE NOT NULL, 
password VARCHAR (100) UNIQUE NOT NULL, 
mobile INT UNIQUE NOT NULL, 
address VARCHAR (100) NOT NULL, 
dob  DATE
);
CREATE TABLE bookedticket(
ticket_number INT NOT NULL, 
date_of_booking DATE NOT NULL, 
date_of_travel DATE NOT NULL , 
 flight_number INT NOT NULL,
 flight_from VARCHAR (50) NOT NULL,
 flight_to VARCHAR (50) NOT NULL,
 flight_time TIME NOT NULL,
 boarding_time TIME NOT NULL, 
 flight_seat INT NOT NULL,
 passenger_id INT NOT NULL,
 CONSTRAINT FK_passenger_id FOREIGN KEY(passenger_id)
 REFERENCES passenger(id),
 CONSTRAINT FK_flight_number FOREIGN KEY (flight_number)
 REFERENCES flight(flight_number));

