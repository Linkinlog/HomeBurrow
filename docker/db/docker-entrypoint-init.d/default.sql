/**
 * HomeBurrow default set up 
 */

CREATE DATABASE IF NOT EXISTS HomeBurrow;
CREATE DATABASE IF NOT EXISTS HomeBurrow_test;

# Set up burrows table
CREATE TABLE IF NOT EXISTS HomeBurrow.burrows (
	id int(10) unsigned auto_increment,
	alias varchar(50) NULL,
	created_at timestamp default NOW(),
	deleted_at timestamp NULL,
	primary key (id),
	index (id)
);

# Set up rooms table
CREATE TABLE IF NOT EXISTS HomeBurrow.rooms (
	id int(10) unsigned auto_increment,
	alias varchar(50) NULL,
	burrow_id int(10) unsigned,
	created_at timestamp default NOW(),
	deleted_at timestamp NULL,
	primary key (id),
	index (id, burrow_id)
);

# Set up sensors table
CREATE TABLE IF NOT EXISTS HomeBurrow.sensors (
	id int(10) unsigned auto_increment,
	alias varchar(50) NULL,
	room_id int(10) unsigned,
	`type` varchar(50) NULL,
	mac varchar(20) NULL,
	ip varchar(15) NULL,
	created_at timestamp default NOW(),
	deleted_at timestamp NULL,
	primary key (id),
	index (id, room_id)
);

# Set up switches table 
CREATE TABLE IF NOT EXISTS HomeBurrow.switches (
	id int(10) unsigned auto_increment,
	alias varchar(50) NULL,
	pin int(10) NULL,
	created_at timestamp default NOW(),
	deleted_at timestamp NULL,
	primary key (id),
	index (id)
);

# Set up sensor switches pivot table
CREATE TABLE IF NOT EXISTS HomeBurrow.sensors_switches (
	id int(10) unsigned auto_increment,
	sensor_id int(50) NULL,
	switch_id int(10) NULL,
	created_at timestamp default NOW(),
	deleted_at timestamp NULL,
	primary key (id),
	index (id, sensor_id, switch_id)
);

# Set up sensors readings table
CREATE TABLE IF NOT EXISTS HomeBurrow.readings (
	id int(10) unsigned auto_increment,
	sensor_id varchar(50) NULL,
	`data` varchar (255) NULL,
	failed int(1) NULL,
	created_at timestamp default NOW(),
	deleted_at timestamp NULL,
	primary key (id),
	index (id, sensor_id)
);