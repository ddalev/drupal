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
DB_HOST=database
DB_USER=drupal
DB_PASS=drupal
DB_PORT=3306
AH_SITE_ENVIRONMENT=local
```
For every site you will need to update
```web/sites/sites.php```

With following properties : ```$sites["website_url"] = 'webside_label';```

and database for website in lando configuration:
```- mysql -h database -P 3306 -u root -e "CREATE DATABASE IF NOT EXISTS db_{webside_label}; GRANT ALL PRIVILEGES ON db_{webside_label}.* TO 'drupal'@'%' IDENTIFIED by 'drupal';"```
