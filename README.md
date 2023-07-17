# drupal
This is a generic drupal multi website

In order to start the project you will need to have working [lando](https://lando.dev/download/) with docker

Execute following commands:

`lando start`

`lando ssh`

`composer install`

create env variable file: `defaults.env`

paste following credentials for local env
```
DB_HOST_DEFAULT=db_default
DB_DATABASE_DEFAULT=drupal
DB_USER_DEFAULT=drupal
DB_PASS_DEFAULT=drupal
DB_PORT_DEFAULT=3306

DB_HOST_YOUPHRASES=db_youphrases
DB_DATABASE_YOUPHRASES=drupal
DB_USER_YOUPHRASES=drupal
DB_PASS_YOUPHRASES=drupal
DB_PORT_YOUPHRASES=3306
```
