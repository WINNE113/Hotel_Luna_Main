	
CREATE DATABASE LUNA_HOTEL;
	

USE LUNA_HOTEL;
	

	DROP TABLE IF EXISTS Room;
	DROP TABLE IF EXISTS RoomType;
	DROP TABLE IF EXISTS RoomStatus;
	DROP TABLE IF EXISTS RoomRate;
	DROP TABLE IF EXISTS Hotel;
	DROP TABLE IF EXISTS City;
	DROP TABLE IF EXISTS Booking;
	DROP TABLE IF EXISTS BookingStatus;
	DROP TABLE IF EXISTS Employee;
	DROP TABLE IF EXISTS EmployeeRole;
	DROP TABLE IF EXISTS Guest;
	DROP TABLE IF EXISTS Bill;
	DROP TABLE IF EXISTS Payment;
	DROP TABLE IF EXISTS PaymentStatus;
	DROP TABLE IF EXISTS PaymentType;
	DROP TABLE IF EXISTS HotelEvent;
	DROP TABLE IF EXISTS Discount;
	DROP TABLE IF EXISTS HotelService;
	

	CREATE TABLE Account(
		id int IDENTITY(1,1) PRIMARY KEY,
		username varchar(50),
		pass varchar(50),
		isAdmin BIT,
	)
	
	
	CREATE TABLE RoomAdmin(
		id int IDENTITY(1,1) PRIMARY KEY,
		name varchar(50),
		categoryID int DEFAULT NULL,
		price float,
		images varchar(200),
		description text,
		quantity int,
		
	)
		

	CREATE TABLE RoomType(
		RoomTypeName nvarchar(50) PRIMARY KEY,
		RoomPrice DECIMAL(7,2) CHECK (RoomPrice>0),
		RoomImg text,
		RoomDesc text,
	)
	

	CREATE TABLE RoomStatus(
		RoomStatusID smallint PRIMARY KEY,
		RoomStatus nvarchar(20) DEFAULT 'AVAILABLE',
		RoomStatusDesc text,
	)
	

	CREATE TABLE RoomRate(
		RoomRateID smallint PRIMARY KEY,
		StarRating float CHECK(StarRating >= 0 AND StarRating <= 5),
		RoomComment text,
	)
	

	CREATE TABLE City(
		CityID smallint PRIMARY KEY,
		CityName nvarchar(20),
		PostalCode int,
	)


	CREATE TABLE Events(
		id int IDENTITY(1,1) PRIMARY KEY,
		title nvarchar(50) NOT NULL,
		images varchar(300),
		details varchar(300),
	)
	
	CREATE TABLE EmployeeAdmin(
		id int IDENTITY(1,1) PRIMARY KEY,
		[name] varchar(50),
	)


	CREATE TABLE Hotel(
		HotelCode smallint PRIMARY KEY,
		CityID smallint FOREIGN KEY REFERENCES City(CityID),
		HotelAddress text NOT NULL,
		NumRooms smallint NOT NULL,
		PhoneHotelNo int NOT NULL,
		HotelDesc text,
	)
	


	CREATE TABLE Room(
		RoomNo smallint IDENTITY(1,1) PRIMARY KEY,
		Occupancy smallint NOT NULL CHECK (Occupancy>0),
		FloorNo smallint NOT NULL,
		RoomRateID smallint FOREIGN KEY REFERENCES RoomRate(RoomRateID),
		RoomTypeName nvarchar(50) FOREIGN KEY REFERENCES RoomType(RoomTypeName),
		HotelCode smallint FOREIGN KEY REFERENCES Hotel(HotelCode),
		RoomStatusID smallint FOREIGN KEY REFERENCES RoomStatus(RoomStatusID),
	)
	

	CREATE TABLE BookingStatus(
		BookingStatusID smallint PRIMARY KEY,
		BookingStatus nvarchar(30) DEFAULT 'AVAILABLE',
		BookingDesc nvarchar(50),
		BookingActive BIT,
	)
	

	CREATE TABLE Guest(
		GuestID int IDENTITY(1,1) PRIMARY KEY,
		FirstName nvarchar(30) NOT NULL,
		LastName nvarchar(30) NOT NULL,
		DOB date,
		Gen nvarchar(10),
		CONSTRAINT CHK_Gen CHECK(Gen = 'Male' or Gen = 'Female'),
		PhoneGuestNo int NOT NULL,
		Email varchar(50) NOT NULL,
		GuestPassword varchar(30) NOT NULL,
		PassportNo int NOT NULL,
		GuestAddress text,
		IsMemberShip BIT,
	)
	
	
        CREATE TABLE [dbo].[Comment](
    		[cmtID] int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    		[comment] NVARCHAR(200),
    		[rateStar] INT,
    		[RoomNo] SMALLINT FOREIGN KEY REFERENCES Room(RoomNo),
    		[GuestID] int FOREIGN KEY REFERENCES Guest(GuestID)
	)
	
	
	CREATE TABLE Booking(
		BookingID smallint IDENTITY(1,1)PRIMARY KEY,
		BookingDate date NOT NULL,
		CheckInDate  date NOT NULL,
		CheckOutDate  date NOT NULL,
		NumPerson smallint NOT NULL,
		BookingRoomCount int,
		HotelCode smallint FOREIGN KEY REFERENCES Hotel(HotelCode),
		GuestID int FOREIGN KEY REFERENCES Guest(GuestID),
		RoomNo smallint FOREIGN KEY REFERENCES Room(RoomNo),
		BookingStatusID smallint FOREIGN KEY REFERENCES BookingStatus(BookingStatusID),
	)
	

	CREATE TABLE EmployeeRole(
		RoleID smallint PRIMARY KEY,
		RoleTitle nvarchar(30) NOT NULL,
		RoleDesc text,
	)
	

	CREATE TABLE Employee(
		EmployeeID smallint IDENTITY(1,1) PRIMARY KEY,
		FirstName nvarchar(30) NOT NULL,
		LastName nvarchar(30) NOT NULL,
		DOB date,
		Gender nvarchar(10),
		CONSTRAINT CHK_Gender Check(Gender = 'Male' or Gender = 'Female'),
		PhoneNo int NOT NULL,
		Email varchar(50) NOT NULL,
		EmployeePassword varchar(30) DEFAULT 1,
		Salary bigint CHECK (Salary>0),
		CreatedTime time,
		UpdatedTime time,
		HotelCode smallint FOREIGN KEY REFERENCES Hotel(HotelCode),
		RoleID smallint FOREIGN KEY REFERENCES EmployeeRole(RoleID),
	)
	

	CREATE TABLE PaymentStatus(
		PaymentStatusID smallint PRIMARY KEY,
		PaymentStatus nvarchar(30),
		PaymentActive BIT,
		PaymentDesc text,
	)
	

	CREATE TABLE PaymentType(
		PaymentTypeID smallint PRIMARY KEY,
		CreditCard varchar(15) NOT NULL,
		PaymentExpireDate date NOT NULL,
		ChequeNo int NOT NULL,
	)
	

	CREATE TABLE Payment(
		PaymentID int IDENTITY(1,1) PRIMARY KEY,
		PaymentDate date,
		PaymentStatusID smallint FOREIGN KEY REFERENCES PaymentStatus(PaymentStatusID),
		PaymentTypeID smallint FOREIGN KEY REFERENCES PaymentType(PaymentTypeID),
	)
	

	

	CREATE TABLE Bill(
		InvoiceNo int IDENTITY(1,1) PRIMARY KEY,
		IfLateCheckOut BIT,
		Discount DECIMAL(7,2),
		BookingID smallint FOREIGN KEY REFERENCES Booking(BookingID),
		GuestID int FOREIGN KEY REFERENCES Guest(GuestID),
		RoomNo smallint FOREIGN KEY REFERENCES Room(RoomNo),
		PaymentID int FOREIGN KEY REFERENCES Payment(PaymentID),
	
	)
			 

