# php-container-scripts
Scripts for managing PHP container commands - build, run, exec, remove etc.

## Installation
- add repository dependecy in your project's composer.json file, run `composer update`
- put your Dockerfile in root folder
- copy variables from .env.example file into your project's .env file, set CONTAINER_NAME at least
- put xdebug.ini file into root folder of your project

## Usage
```bash
vendor/bin/container-start.sh #to start your container
vendor/bin/container-composer.sh {parameters} #to run composer command in the container
vendor/bin/container-php.sh {parameters} #to run CLI PHP inside the container
vendor/bin/container-remove.sh #to remove your container from docker
vendor/bin/container-run.sh #to run previously built container
vendor/bin/container-stop.sh #to stop the container
vendor/bin/testdox.sh {optional-path-to-test-class} #to run unit test in testdox style
```
- to run container-composer.sh command, composer should be installed in a container via Dockerfile
- to run testdox.sh command, phpunit library should be added to your composer.json as a dependency
