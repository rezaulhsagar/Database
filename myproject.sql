drop table term_result;
drop table student;
drop table teacher;

create table teacher(
    name varchar(40) not null,
	email varchar(20),
    phone_no number(11),
	assigned_class integer unique,
	teacher_id integer,
    primary key(teacher_id)
    );

create table student(
	name varchar(40) not null,
    roll integer,
    phone_no number(11),
    gender varchar(10),
	Class integer,
	student_id integer,
    primary key(student_id),
    foreign key(Class) references teacher(assigned_class)
    );

create table term_result(
	student_id integer,
	foreign key(student_id) references student(student_id) on delete cascade,
	gpa number(3,2) default 0.00 check(gpa >= 0.00 and gpa <= 5.00),
	primary key (student_id)
	);



insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('A.I.M Abdul Haque', 'ah@glhs.com', 01700000001, 1, 001);
insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('Md. Ramiz Uddin Mollah', 'rum@glhs.com', 01700000002, 2, 002);
insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('Md. Golam Mostofa', 'gm@glhs.com', 01700000003, 3, 003);
insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('Md. Nazrul Islam Khan', 'nik@glhs.com', 01700000004, 4, 004);
insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('Abu Noman Md. Sherajul Haque', 'an@glhs.com', 01700000005, 5, 005);
insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('Md. Ataher Hossain', 'ath@glhs.com', 01700000006, 6, 006);
insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('Md. Ekin Uddin', 'eu@glhs.com', 01700000007, 7, 007);
insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('Md. Tajul Islam', 'ti@glhs.com', 01700000008, 8, 008);
insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('Md. Shahjahan Siraj', 'ss@glhs.com', 01700000009, 9, 009);
insert into teacher (name, email, phone_no, assigned_class, teacher_id)
			 values ('Shailendra Nath Biswas', 'snb@glhs.com', 01700000010, 10, 010);



insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('M.ASIFUR RAHMAN', 001, 01800000001, 'male', 1, 001001);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('ANGKUR MONDAL', 002, 01800000002, 'male', 1, 001002);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SOHANA AKTER', 003, 01800000003, 'male', 1, 001003);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('S.M. MOHAIMINUL ISLAM RAFI', 004, 01800000004, 'male', 2, 001004);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('REDWANUL HAQUE SOURAVE', 005, 01800000005, 'male', 2, 001005);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('MD.RAHAT-UZ-ZAMAN', 006, 01800000006, 'male', 2, 001006);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SAKIB REZA', 007, 01800000007, 'male', 3, 001007);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('FAISAL AHMED', 008, 01800000008, 'male', 3, 001008);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('MD. ABRAR HASIN', 009, 01800000009, 'male', 3, 001009);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SHAHJALAL SAKIL', 010, 01800000010, 'male', 4, 001010);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('MOST. TAHMINA RAHMAN', 011, 01800000011, 'male', 4, 001011);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SAMIUL AZIM', 012, 01800000012, 'male', 4, 001012);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('FABLIHA HAQUE', 013, 01800000013, 'male', 5, 001013);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SALIM SHADMAN ANKUR', 014, 01800000014, 'male', 5, 001014);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SAIFUR RAHMAN', 015, 01800000015, 'male', 5, 001015);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('NAZIA ZAMAN', 016, 01800000016, 'male', 6, 001016);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('ARAFAT ISLAM KHAN', 017, 01800000017, 'male', 6, 001017);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SADIQUZZAMAN SHOVON', 018, 01800000018, 'male', 6, 001018);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('NAHIN KUMAR DEY', 019, 01800000019, 'male', 7, 001019);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('DIBYA SARKER', 020, 01800000020, 'male', 7, 001020);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SALAH UDDIN AHAMMAD', 021, 01800000021, 'male', 7, 001021);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('MD. ABDUL HANNAN', 022, 01800000022, 'male', 8, 001022);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SAIMA ZERIN', 023, 01800000023, 'male', 8, 001023);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('MD. AZAHAR ALAM', 024, 01800000024, 'male', 8, 001024);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SHIDUL MURSALIN YEAD', 025, 01800000025, 'male', 9, 001025);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('MD. TASNIM SHAHRIAR', 026, 01800000026, 'male', 9, 001026);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('CHANDAN KUNDU', 027, 01800000027, 'male', 9, 001027);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('MD. MUSHFIQUR AZAM', 028, 01800000028, 'male', 10, 001028);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('MD. FAZLE RASUL', 029, 01800000029, 'male', 10, 001029);
insert into student (name, roll, phone_no, gender, Class, student_id)
			 values ('SADIA MUBASHSHIRA', 030, 01800000030, 'male', 10, 001030);



insert into term_result (student_id, gpa)
			     values (001001, 2.00);
insert into term_result (student_id, gpa)
			     values (001002, 3.69);
insert into term_result (student_id, gpa)
			     values (001003, 2.58);
insert into term_result (student_id, gpa)
			     values (001004, 4.43);
insert into term_result (student_id, gpa)
			     values (001005, 3.76);
insert into term_result (student_id, gpa)
			     values (001006, 3.44);
insert into term_result (student_id, gpa)
			     values (001007, 3.05);
insert into term_result (student_id, gpa)
			     values (001008, 4.69);
insert into term_result (student_id, gpa)
			     values (001009, 4.47);
insert into term_result (student_id, gpa)
			     values (001010, 4.24);
insert into term_result (student_id, gpa)
			     values (001011, 2.52);
insert into term_result (student_id, gpa)
			     values (001012, 4.58);
insert into term_result (student_id, gpa)
			     values (001013, 4.13);
insert into term_result (student_id, gpa)
			     values (001014, 3.54);
insert into term_result (student_id, gpa)
			     values (001015, 2.91);
insert into term_result (student_id, gpa)
			     values (001016, 2.04);
insert into term_result (student_id, gpa)
			     values (001017, 2.27);
insert into term_result (student_id, gpa)
			     values (001018, 3.09);
insert into term_result (student_id, gpa)
			     values (001019, 2.44);
insert into term_result (student_id, gpa)
			     values (001020, 2.50);
insert into term_result (student_id, gpa)
			     values (001021, 4.97);
insert into term_result (student_id, gpa)
			     values (001022, 3.34);
insert into term_result (student_id, gpa)
			     values (001023, 2.36);
insert into term_result (student_id, gpa)
			     values (001024, 2.01);
insert into term_result (student_id, gpa)
			     values (001025, 2.03);
insert into term_result (student_id, gpa)
			     values (001026, 3.13);
insert into term_result (student_id, gpa)
			     values (001027, 3.59);
insert into term_result (student_id, gpa)
			     values (001028, 3.71);
insert into term_result (student_id, gpa)
			     values (001029, 3.81);
insert into term_result (student_id, gpa)
			     values (001030, 3.82);

SET SERVEROUTPUT ON
declare
    counter number;
    name student.name%type;
    Class student.Class%type;
begin
    for counter in 1..30
    loop
        select name, Class into name, Class
        from student
        where roll = counter;
        if mod(counter,2) = 1 
            then dbms_output.put_line (name || ' - ' || Class);
        else dbms_output.put_line ('-');
        end if;
    end loop;
end;
