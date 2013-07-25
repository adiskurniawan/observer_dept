DROP SCHEMA IF EXISTS observer;
CREATE SCHEMA observer;
USE observer;

CREATE TABLE active_and_position (
id int(11) DEFAULT NULL,
fg_position varchar(255) DEFAULT NULL,
fg_active varchar(255) DEFAULT NULL,
af_active varchar(255) DEFAULT NULL,
af_position varchar(255) DEFAULT NULL,
module_position varchar(255) DEFAULT NULL,
module_active varchar(255) DEFAULT NULL,
active_bird varchar(255) DEFAULT NULL,
position_bird varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE address_agent (
comment varchar(255) DEFAULT NULL,
address_id double DEFAULT NULL,
name varchar(255) DEFAULT NULL,
address varchar(255) DEFAULT NULL,
city_and_zipcode varchar(255) DEFAULT NULL,
country varchar(255) DEFAULT NULL,
contact_person varchar(255) DEFAULT NULL,
tel_number varchar(255) DEFAULT NULL,
fax_number varchar(255) DEFAULT NULL,
email varchar(255) DEFAULT NULL,
item varchar(255) DEFAULT NULL,
id int(11) DEFAULT NULL,
shipment_number varchar(255) DEFAULT NULL,
agent_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE address_receipt (
comment varchar(255) DEFAULT NULL,
address_id double DEFAULT NULL,
name varchar(255) DEFAULT NULL,
address varchar(255) DEFAULT NULL,
city_and_zipcode varchar(255) DEFAULT NULL,
country varchar(255) DEFAULT NULL,
contact_person varchar(255) DEFAULT NULL,
tel_number varchar(255) DEFAULT NULL,
fax_number varchar(255) DEFAULT NULL,
email varchar(255) DEFAULT NULL,
item varchar(255) DEFAULT NULL,
id int(11) DEFAULT NULL,
shipment_number varchar(100) DEFAULT NULL,
id_number int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE aft_acoustic_bird (
id int(11) DEFAULT NULL,
bird_streamer_1 varchar(255) DEFAULT NULL,
bird_streamer_2 varchar(255) DEFAULT NULL,
bird_streamer_3 varchar(255) DEFAULT NULL,
bird_streamer_4 varchar(255) DEFAULT NULL,
bird_streamer_5 varchar(255) DEFAULT NULL,
bird_streamer_6 varchar(255) DEFAULT NULL,
bird_streamer_7 varchar(255) DEFAULT NULL,
bird_streamer_8 varchar(255) DEFAULT NULL,
bird_streamer_9 varchar(255) DEFAULT NULL,
bird_streamer_10 varchar(255) DEFAULT NULL,
bird_streamer_11 varchar(255) DEFAULT NULL,
bird_streamer_12 varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE aft_coil_acoustic (
id int(11) DEFAULT NULL,
acoustic_streamer_1 varchar(255) DEFAULT NULL,
acoustic_streamer_2 varchar(255) DEFAULT NULL,
acoustic_streamer_3 varchar(255) DEFAULT NULL,
acoustic_streamer_4 varchar(255) DEFAULT NULL,
acoustic_streamer_5 varchar(255) DEFAULT NULL,
acoustic_streamer_6 varchar(255) DEFAULT NULL,
acoustic_streamer_7 varchar(255) DEFAULT NULL,
acoustic_streamer_8 varchar(255) DEFAULT NULL,
acoustic_streamer_9 varchar(255) DEFAULT NULL,
acoustic_streamer_10 varchar(255) DEFAULT NULL,
acoustic_streamer_11 varchar(255) DEFAULT NULL,
acoustic_streamer_12 varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE aft_coil_digifin (
id int(11) DEFAULT NULL,
digifin_streamer_1 varchar(255) DEFAULT NULL,
digifin_streamer_2 varchar(255) DEFAULT NULL,
digifin_streamer_3 varchar(255) DEFAULT NULL,
digifin_streamer_4 varchar(255) DEFAULT NULL,
digifin_streamer_5 varchar(255) DEFAULT NULL,
digifin_streamer_6 varchar(255) DEFAULT NULL,
digifin_streamer_7 varchar(255) DEFAULT NULL,
digifin_streamer_8 varchar(255) DEFAULT NULL,
digifin_streamer_9 varchar(255) DEFAULT NULL,
digifin_streamer_10 varchar(255) DEFAULT NULL,
digifin_streamer_11 varchar(255) DEFAULT NULL,
digifin_streamer_12 varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE birds (
  item varchar(255) DEFAULT NULL,
  location varchar(255) DEFAULT NULL,
  position varchar(255) DEFAULT NULL,
  `id_location` varchar(255) DEFAULT NULL,
  active varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  history varchar(255) DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  `shipment_no` varchar(255) DEFAULT NULL,
  `date_Shipped_off` datetime DEFAULT NULL,
  id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE employees (
  username varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  person_id int(11) NOT NULL,
  deleted int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY username (username),
  KEY person_id (person_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO employees (username, password, person_id, deleted) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0);

CREATE TABLE fwd_acoustic_bird (
id int(11) DEFAULT NULL,
bird_streamer_1 varchar(255) DEFAULT NULL,
bird_streamer_2 varchar(255) DEFAULT NULL,
bird_streamer_3 varchar(255) DEFAULT NULL,
bird_streamer_4 varchar(255) DEFAULT NULL,
bird_streamer_5 varchar(255) DEFAULT NULL,
bird_streamer_6 varchar(255) DEFAULT NULL,
bird_streamer_7 varchar(255) DEFAULT NULL,
bird_streamer_8 varchar(255) DEFAULT NULL,
bird_streamer_9 varchar(255) DEFAULT NULL,
bird_streamer_10 varchar(255) DEFAULT NULL,
bird_streamer_11 varchar(255) DEFAULT NULL,
bird_streamer_12 varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE fwd_coil (
id int(11) DEFAULT NULL,
birds_streamer_1 varchar(255) DEFAULT NULL,
birds_streamer_2 varchar(255) DEFAULT NULL,
birds_streamer_3 varchar(255) DEFAULT NULL,
birds_streamer_4 varchar(255) DEFAULT NULL,
birds_streamer_5 varchar(255) DEFAULT NULL,
birds_streamer_6 varchar(255) DEFAULT NULL,
birds_streamer_7 varchar(255) DEFAULT NULL,
birds_streamer_8 varchar(255) DEFAULT NULL,
birds_streamer_9 varchar(255) DEFAULT NULL,
birds_streamer_10 varchar(255) DEFAULT NULL,
birds_streamer_11 varchar(255) DEFAULT NULL,
birds_streamer_12 varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE length_of_equipment (
id int(11) DEFAULT NULL,
item varchar(255) DEFAULT NULL,
length varchar(255) DEFAULT NULL,
part_number varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE location (
id int(11) DEFAULT NULL,
location varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE people (
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  phone_number varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  address_1 varchar(255) NOT NULL,
  address_2 varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  state varchar(255) NOT NULL,
  zip varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  comments text NOT NULL,
  person_id int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (person_id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO people (first_name, last_name, phone_number, email, address_1, address_2, city, state, zip, country, comments, person_id) VALUES
('Adi', 'Kurniawan', '555-555-5555', 'adi.s.kurniawan@gmail.com', 'Address 1', '', '', '', '', '', '', 1);

CREATE TABLE settings (
  setting_id int(11) NOT NULL AUTO_INCREMENT,
  setting_key varchar(50) NOT NULL,
  setting_value longtext NOT NULL,
  PRIMARY KEY (setting_id),
  KEY setting_key (setting_key)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

INSERT INTO settings (setting_id, setting_key, setting_value) VALUES
(1, 'default_language', 'english'),
(2, 'date_format', 'm/d/Y'),
(3, 'currency_symbol', 'Rp'),
(4, 'currency_symbol_placement', 'before'),
(5, 'invoices_due_after', '30'),
(6, 'quotes_expire_after', '15'),
(7, 'default_invoice_group', '1'),
(8, 'default_quote_group', '2'),
(9, 'default_invoice_template', 'default_invoice'),
(10, 'default_quote_template', 'default_quote'),
(11, 'thousands_separator', ','),
(12, 'decimal_point', '.'),
(13, 'cron_key', '5dP3BzlgO724marX'),
(14, 'tax_rate_decimal_places', '2');

CREATE TABLE shipment_paper_details (
id int(11) DEFAULT NULL,
total_value varchar(50) DEFAULT NULL,
value varchar(50) DEFAULT NULL,
quantity varchar(50) DEFAULT NULL,
total_quantity varchar(50) DEFAULT NULL,
dimension varchar(50) DEFAULT NULL,
weight_equipment varchar(50) DEFAULT NULL,
total_weight_equipment varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE srds (
  item varchar(255) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  location varchar(255) DEFAULT NULL,
  position varchar(255) DEFAULT NULL,
  `id_location` varchar(255) DEFAULT NULL,
  active varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  history varchar(255) DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  `shipment_no` varchar(255) DEFAULT NULL,
  `date_shipped_off` datetime DEFAULT NULL,
  id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE streamer_equipment (
  position double DEFAULT NULL,
  item varchar(255) DEFAULT NULL,
  location varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  history mediumtext,
  `serial_number` varchar(255) DEFAULT NULL,
  `fwd_coil` varchar(255) DEFAULT NULL,
  `sn_bird` varchar(255) DEFAULT NULL,
  `sn_srd` varchar(50) DEFAULT NULL,
  `tail_coil` varchar(255) DEFAULT NULL,
  `sn_acoustic` varchar(255) DEFAULT NULL,
  `first_ch` int(11) DEFAULT NULL,
  `last_ch` int(11) DEFAULT NULL,
  weight varchar(255) DEFAULT NULL,
  comments varchar(255) DEFAULT NULL,
  active varchar(255) DEFAULT NULL,
  `shipment_number` varchar(255) DEFAULT NULL,
  `date_shipped_off` datetime DEFAULT NULL,
  `total_qty` varchar(100) DEFAULT NULL,
  dimension varchar(100) DEFAULT NULL,
  `values` varchar(100) DEFAULT NULL,
  `total_values` varchar(100) DEFAULT NULL,
  `weight_equipment` varchar(100) DEFAULT NULL,
  `total_weight_equipment` varchar(100) DEFAULT NULL,
  `receipt_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  id int(11) DEFAULT NULL,
  qty varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE traces(
id int(11) DEFAULT NULL,
fg_position varchar(255) DEFAULT NULL,
fg_active varchar(50) DEFAULT NULL,
fg_first varchar(255) DEFAULT NULL,
fg_last varchar(255) DEFAULT NULL,
af_active varchar(255) DEFAULT NULL,
af_position varchar(255) DEFAULT NULL,
af_first varchar(255) DEFAULT NULL,
af_last varchar(255) DEFAULT NULL,
modules_first varchar(255) DEFAULT NULL,
modules_last varchar(255) DEFAULT NULL,
modules_number varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;