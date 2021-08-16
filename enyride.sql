create database enyridehome
CREATE TABLE PhoneBook (
    sl_no bigint NOT NULL identity(1,1) primary key,
    ContactName nvarchar(50) UNIQUE,
    PhoneNos nvarchar(max)
);
create table OurUsers(sl_no bigint identity(000000001,1),
					UserID as RIGHT(('00000000')+CAST(sl_no as nvarchar(70)),8) primary key,
					UserName nvarchar(max),
					FatherName nvarchar(max),
					DOB nvarchar(50),
					Gender nvarchar(50),
					Photo nvarchar(max),
					USER_TYPE nvarchar(10),
					
					Email nvarchar(max) unique,
					Phone_no nvarchar(50) unique,
					Watsapp_no nvarchar(50),
					Per_address nvarchar(max),
					Date_creation date default date,
					
					Bank_Acc_No nvarchar(max) unique,
					Bank_Acc_Holder nvarchar(max),
					Bank_Name nvarchar(max),
					Bank_BranchName nvarchar(max),
				    Bank_IFSC nvarchar(50),
				    Bank_PIN nvarchar(10)
				    )
create table LogIn(sl_no bigint identity(1,1),
				   Email nvarchar(max),
				   PhoneNo nvarchar(20),
				   passward nvarchar(max),
				   USER_TYPE nvarchar(10)
				   )
create table settings(sl_no bigint identity(1,1),
					  Reg_Email_Id nvarchar(max),
					  comp_Name nvarchar(max),
					  comp_Email nvarchar(max),
					  Comp_Adress nvarchar(max),
					  comp_PhoneNo nvarchar(max),
					  comp_helpine_No nvarchar(max),
					  GST_IN nvarchar(max),
					  Price_per_km bigint
					 )
create table bus_det(sl_no bigint identity(1,1),
					 bus_no nvarchar(100) primary key,
					 bus_name nvarchar(max),
					 amenities_id nvarchar(max),
					 bus_reg_no nvarchar(max),
					 max_seats bigint,
					 board_point nvarchar(max),
					 board_time time,
					 drop_point nvarchar(max),
					 drop_time time,
					 verified_by nvarchar(max),
					 manager_name nvarchar(max),
					 phone_no nvarchar(20),
					 alternet_no nvarchar(20),
					 bus_category nvarchar(50),
					 root_type nvarchar(50) default 'line bus',
					 bus_desc nvarchar(max),
					 Date_creation date default date,
					 bus_front nvarchar(max)
					 )
create table roots_drop_points(sl_no bigint identity(1,1) primary key,
				   root_name nvarchar(max),
				   board_area nvarchar(max),
				   board_time time,
				   drop_area nvarchar(max),
				   drop_time time,
				   drop_land_mark nvarchar(max),
				   via_root nvarchar(max),
				   is_stop bit default 0,
				   distance float,
				   Date_creation date default date,
				   fair float
				   )
create table rating (sl_no bigint identity(1,1),
				  bus_no nvarchar(100) primary key,
				  UserID nvarchar(250) NOT NULL,
				  bus_quality nvarchar(10) NOT NULL,
				  punctuality nvarchar(10) NOT NULL,
				  Staff_behaviour nvarchar(10) NOT NULL,
				  comments nvarchar(max)
) 
create table bus_benifits(sl_no bigint identity(1,1),
				 bus_no nvarchar(100) primary key,
				 WIFI bit default 0,
				 WaterBottle bit default 0,
				 Blankets bit default 0,
				 Pillow bit default 0,
				 TV bit default 0,
				 Music bit default 0,
				 breakfast bit default 0,
				 dinner bit default 0,
				 personal_ac bit default 0,
				 emergency_door bit default 0,
				 emergency_braker bit default 0,
				 toilet bit default 0
				 )
create table bus_layout(sl_no bigint identity(1,1),
				 bus_no nvarchar(100) primary key,
				 seat_no nvarchar(10),
				 seat_type nvarchar(10),
				 seat_cat nvarchar(20)
				 )
create table bus_book_user(sl_no bigint identity(1,1),
				 ticket_no as +'ER'+RIGHT(('00000000')+CAST(sl_no as nvarchar(70)),8) primary key,
				 bus_no nvarchar(100),
				 UserID nvarchar(max),
				 ticket_type nvarchar(20),
				 No_of_seat bigint,
				 seat_nos nvarchar(max),
				 from_location nvarchar(50),
				 arival_time time,
				 to_location nvarchar(50),
				 dipature_time time,
				 DateOfJourney Date,
				 ticket_fair float,
				 transection_no nvarchar(50),
				 extra_fee float,
				 total_fee float,
				 Is_paid bit
				 )
create table transection(sl_no bigint identity(1,1),
						 UserID nvarchar(max),
						 transection_no nvarchar(50),
						 date_time datetime,
						 vandor_tool nvarchar(50),
						 amount float,
						 tra_status bit,
						 tra_mode nvarchar(max)
						 ) 
---------------------------------------------------------------------------------------------------------------
create table dataPre(sl_no bigint identity(1,1),
					 country_name nvarchar(100),
					 state_name nvarchar(100),
					 district nvarchar(100),
					 area_pin nvarchar(100)
					)
create table agents(sl_no bigint identity(000000001,1),
					UserID as RIGHT(('00000000')+CAST(sl_no as nvarchar(70)),8) primary key,
					UserName nvarchar(max),
					FatherName nvarchar(max),
					DOB nvarchar(50),
					Gender nvarchar(50),
					Photo nvarchar(max),
					USER_TYPE nvarchar(10),
					Date_creation date default date,
					
					Email nvarchar(max) unique,
					Phone_no nvarchar(50) unique,
					Watsapp_no nvarchar(50),
					Per_address nvarchar(max),
					
					Identity_type nvarchar(50),
					Identity_no nvarchar(max),
					Identity_copy nvarchar(max),
					
					Bank_Acc_No nvarchar(max) unique,
					Bank_Acc_Holder nvarchar(max),
					Bank_Name nvarchar(max),
					Bank_BranchName nvarchar(max),
				    Bank_IFSC nvarchar(50),
				    Bank_PIN nvarchar(10)
				    )
create table user_pickup(sl_no bigint identity(1,1),					  
					     cab_id nvarchar(50),
					     pickup_date date,
					     pickup_time time,
					     pickup_location nvarchar(max),
					     drop_location nvarchar(max),
					     no_of_passenger nvarchar(max),
					     lauguage bit,
					     is_return bit,
					     waitng_time time,
					     extra_fair float,
					     normal_fair float,
					     total_fair float
					     )
create table cab_root(sl_no bigint identity(1,1),
					  
					     
				 
					  
