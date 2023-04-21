CREATE TABLE IF NOT EXISTS customer (
	customer_id integer NOT NULL,
	document_type varchar(8) NOT NULL,
	document_number varchar(50) NOT NULL,
	name varchar(100) NOT NULL,
	surname varchar(100) NOT NULL,
	lastame varchar(100),
	country varchar(3) NOT NULL,
	telephone integer,
	created_at timestamp NOT NULL DEFAULT (now() at time zone 'utc'),
	updated_at timestamp DEFAULT (now() at time zone 'utc'),
	CONSTRAINT customer_id_pkey PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS payment (
	payment_id bigserial NOT NULL,
	payment_type varchar(10) NOT NULL,
	amount decimal NOT NULL,
	created_at timestamp NOT NULL DEFAULT (now() at time zone 'utc'),
	updated_at timestamp DEFAULT (now() at time zone 'utc'),
	customer_id integer NOT NULL,
	CONSTRAINT payment_id_pkey PRIMARY KEY (payment_id)
);

ALTER TABLE payment ADD CONSTRAINT payment_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES customer (customer_id);
