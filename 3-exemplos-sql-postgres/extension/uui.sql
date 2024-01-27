create extension "uuid-ossp";

create table clients (
  id uuid primary key default uuid_generate_v4(),
  name varchar(100)
);