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
Create `salt.txt` isnide root directory and paste hash
you can generate one for your project with following command :
```drush -l youphrases.lndo.site eval "var_dump(Drupal\Component\Utility\Crypt::randomBytesBase64(55))"```

For every site you will need to update
```web/sites/sites.php```

With following properties : ```$sites["website_url"] = 'webside_label';```

and database for website in lando configuration:
```- mysql -h database -P 3306 -u root -e "CREATE DATABASE IF NOT EXISTS db_{webside_label}; GRANT ALL PRIVILEGES ON db_{webside_label}.* TO 'drupal'@'%' IDENTIFIED by 'drupal';"```
