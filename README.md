## Docker PHP Apache Tester Image
Docker PHP Apache tester image is used in conjuction with my PHP Apache image. This image has Composer installed and is used for running one off commands to do things like migrate database and run unit tests.

### Build
To build this image yourself from the code follow these command
```sh
$ docker build -t <name>/php-apache-tester .
```

### Demo Usage
```sh
$ docker run --volumes-from data-container --link mysql:mysql --rm --name php-apache-tester <name>/php-apache-tester php -v
```

### TODO
- 

### License
This code is maintained by Jason Michels (http://jasonmichels.com) and open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT)