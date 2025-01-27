create table actor (
    actor_id integer primary key,
    birthDay date not null,
    first_name varchar(30) not null,
    last_name varchar(30) not null
);

create table show (
    show_id integer primary key,
    rating float not null,
    title varchar(70) not null,
    seasons integer not null,
    yearStart date not null,
    yearEnd date,
    genre varchar(30)
);

create table show_actor (
    actor_id integer,
    show_id integer,
    foreign key (actor_id) references actor (actor_id),
    foreign key (show_id) references show (show_id),
    primary key (actor_id, show_id)
);

create table actor_emmys (
    emmy_id integer primary key,
    actor_id integer,
    type varchar(50) not null,
    foreign key (actor_id) references actor (actor_id)
);

create table show_emmys (
    emmy_id integer primary key,
    show_id integer,
    type varchar(50) not null,
    foreign key (show_id) references show (show_id)
);

create table streaming_service (
    streaming_id integer primary key,
    name varchar(50) not null,
    price float not null,
    show_id integer,
    foreign key (show_id) references show (show_id)
);