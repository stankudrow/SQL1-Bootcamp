# SQL1-Bootcamp

School 21 SQL1 Bootcamp \[Piscine\].

## Preparations

Please install the latest versions of:

* postgresql and psql;
* pgadmin.

## Commands

* `psql -U postgres` - connect to a database ___user name___.

  * `\l` or `\list` - list all databases;
  * `\c database_name` or `\connect database_name` - connect to a database by its name;
  * `\d` - list all relations within the connection;
  * `\q`, or `\quit` - leave the PostgreSQL interactive session.

Executing an SQL script: `psql -U %dbuser% -d %dbname% -a -f filepath.sql` (make sure the user, database and sql script exist).

## References

The following references are Manjaro-Linux-specific.

* [How to install PostgreSQL in Manjaro Linux](https://dev.to/lobo_tuerto/how-to-install-postgresql-in-manjaro-linux--24bj) or [How to setup PostgreSQL and PgAdmin on Manjaro Linux / Arch](https://dev.to/tusharsadhwani/how-to-setup-postgresql-on-manjaro-linux-arch-412l);
* [How to install PgAdmin4 on Manjaro Linux](https://linuxhint.com/install-pgadmin4-manjaro-linux/);
* [PostgreSQL Tutorial](https://www.postgresqltutorial.com/);
* [PostgreSQL - ArchWiki](https://wiki.archlinux.org/title/PostgreSQL).
