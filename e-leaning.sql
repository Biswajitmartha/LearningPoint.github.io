create database EDatabase
create table ELN_LogIn(ELN_SlNo bigint identity(1,1),
                   		ELN_RegdNo nvarchar(50) primary key,
                   		ELN_Passward nvarchar(max),
                   		ELN_Category nvarchar(10),
                   		ELN_Status nvarchar(10)
                   		)
create table ELN_Profiles(ELN_SlNo bigint identity(1,1),
						 ELN_RegdNo nvarchar(max) unique,
						 ELN_CName nvarchar(max),
						ELN_BranchNM nvarchar(max),
						ELN_FName nvarchar(max),
						ELN_PhoneNo nvarchar(50) primary key,
						ELN_EMail nvarchar(max),
						ELN_Geder nvarchar(39),
						ELN_DOB nvarchar(50),
						ELN_Password nvarchar(max),
						ELN_Photo nvarchar(max),
						ELN_Date Datetime
						)
create table ELN_Notice(ELN_SlNo bigint identity(1,1),
						ELN_Notice_no nvarchar(100)primary key,
						ELN_Notice_Name nvarchar(50),
						ELN_Notice_Path nvarchar(max),
						ELN_Notice_Date Datetime
						)
create table ELN_Video(ELN_SlNo bigint identity(1,1),
					   ELN_vid_no nvarchar(100) primary key,
					   ELN_vid_Name nvarchar(50),
					   ELN_vid_Subject nvarchar(50),
					   ELN_vid_Path nvarchar(max),
					   ELN_vid_Date Datetime
					   )
create table ELN_Material(ELN_SlNo bigint identity(1,1),
					   ELN_mat_no nvarchar(100) primary key,
					   ELN_mat_Name nvarchar(50),
					   ELN_mat_Subject nvarchar(50),
					   ELN_mat_Path nvarchar(max),
					   ELN_mat_Date Datetime
					   )
create table ELN_Books(ELN_SlNo bigint identity(1,1),
					   ELN_books_no nvarchar(100) primary key,
					   ELN_books_Name nvarchar(50),
					   ELN_books_Subject nvarchar(50),
					   ELN_books_Path nvarchar(max),
					   ELN_books_Date Datetime
					   )
create table blogs(bid bigint identity(1,1) primary key,
				   uid nvarchar(100),
				   title nvarchar(100),
				   text text,
				   postedon datetime
				   )
create table comments(cid bigint identity(1,1) primary key,
                      bid bigint ,
                      email nvarchar(100),
                      text text,
                      postedon datetime
                      )
                      
				   
				   
				   