DROP TABLE members;

#1. Buat tabel
CREATE TABLE members(
	id INTEGER primary key autoincrement,
    name varchar(50) not null,
    city varchar(15) not null,
    age INTEGER not null,
    is_active tinyint not null
);

#2. Input data yang telah disediakan
-- Taruh query di bawah
INSERT INTO members VALUES (1, 'Sana Huynh', 'Ranzan', 27, 1);
INSERT INTO members VALUES (2, 'Luke Anderson', 'Itoda',  26, 1);
INSERT INTO members VALUES (3, 'Nawal Hodges', 'Tokyo', 30, 0);
INSERT INTO members VALUES (4, 'Khadijah Williamson', 'Osaka', 28, 0);
INSERT INTO members VALUES (5, 'Carla Proctor', 'Osaka', 27, 1);
INSERT INTO members VALUES (6, 'Sadie Cuevas', 'Nagoya', 32, 1);
INSERT INTO members VALUES (7, 'Cayson Busby', 'Kyoto', 26, 0);
INSERT INTO members VALUES (8, 'Phyllis Richards', 'Nara', 29, 1);
INSERT INTO members VALUES (9, 'Jordi Rudd', 'Tokyo', 31, 1);
INSERT INTO members VALUES (10, 'Stacy Holcomb', 'Tokyo', 29, 1);


select * from members;

#3. Edit data yang diperintahkan
-- Taruh query di bawah
UPDATE members
SET is_active = 0
WHERE name = 'Sadie Cuevas';

select * from members;

#4. Hapus semua member yang sudah tidak aktif
-- Taruh query di bawah
DELETE FROM members WHERE is_active = 0;


select * from members;