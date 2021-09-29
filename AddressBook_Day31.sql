-- AddressBook Service
-- UC1 Creating database as AddessBookService
create database AddressBookService;
show databases;
use AddressBookService;

-- UC2  creating table as AddressBook with attributes
create table AddressBook (
firstName varchar(50) not null,
lastName varchar(50) not null,
address varchar(100) not null,
city varchar(50) not null,
state varchar(50) not null,
zip int not null,
phoneNumber double not null,
email varchar(100) not null );
desc AddressBook;

-- UC3 inserting new Contacts to AddressBook table
 insert into AddressBook (firstname, lastname, address,city, state, zip,phoneNumber,email) values
 ('Prashanth N', 'Palegar','Yelahanka','Bengaluru','Karnataka',560064,8310133663,'imprash4u@gmail.com'),
 ('Praveen N ','Palegar','Ramapura','Bengaluru','Karnataka',561210,999999999,'praven@gmail.com'),
 ('Bharath S R','Jalgar','Santhebidnur','Hindupur','Andra Pradesh',520102,888888888,'bharath@gmail.com'),
 ('Ajeeth','V','sirinagara','chennai','Tamilnadu',3021402,777777777,'ajith@gmail.com');

desc AddressBook;
select * from AddressBook;

-- UC4 editing the existing contact by their firstname
update AddressBook set  lastName='vishwam' where firstname='Ajeeth';
update addressbook set phoneNumber=9876543210 where firstname='Bharath S R';
select * from addressBook;


-- UC5 -deleting the contact by their lastname
delete from addressBook where lastname='Vishwam';
select * from AddressBook;
 
 -- uc6 retrieving the contact by city or state
 select * from AddressBook where city = 'Bengaluru' or State='Karnataka';

 -- UC7 size of addressbook by city and state
 select count(firstname) from AddressBook where city = 'Bengaluru';
 select count(firstName) from AddressBook where state = 'Karnataka';
select count(firstname) from AddressBook where city='hindupur'; 
 
 -- UC8 soriting the name alphbetically for given city
 
 insert into AddressBook(firstname,lastname,address,city,state,zip,phoneNumber,email)
values ('Abhi','V','coorg','Chikkamagalur','Karnatak',50102,9874561023,'abhi@gmail.com');

insert into AddressBook(firstname,lastname,address,city,state,zip,phoneNumber,email)
 values('Vijay','vepula','tkota','kakinada','telangana',851026,9874563201,'Vijay@gmail.com');

 insert into AddressBook(firstname,lastname,address,city,state,zip,phoneNumber,email) 
 values('uday','reddy','gauribidanur','benagaluru','karnataka',652142,8520147963,'Uday@gmail.com');
 
 select * from AddressBook;
 
 select firstname,city from AddressBook order by city;

-- UC9- altering the table with addressbook name and contact type

alter table addressbook add bookName varchar(25) not null, add contactType varchar(25)  not null;
desc addressBook;
update AddressBook set bookname='one', contactType='Family' where lastname='palegar' ;
update addressBook set bookname='two' ,contactType='Friends' where firstname='uday'; 
update addressBook set bookName='one', contactType='family' where fristname='jalgar';
update addressbook set bookname='two',contactType='Profession' where  lastname='V';
select * from addressbook;

select * from addressbook where contactType='Family';
select * from AddressBook where contacttype='Friends';

-- UC10 ability to get count of contacts by contacttype

select count(firstname) from AddressBook where contactType='family';

