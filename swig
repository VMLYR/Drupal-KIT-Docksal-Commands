#!/usr/bin/env php
<?php
## Wrapper for running front-end development tools
##
## Usage: fin swig gulp-watch
#: exec_target = cli

if (empty($argv[1])) {
  unset($_SERVER['argv'][1]);
  unset($argv[1]);
}

$loader = require_once '/var/www/' . $_ENV['DOCROOT'] . '/autoload.php';

use DrupalKit\Docksal\Util\SingleCommandApplication;
use DrupalKit\Docksal\Command\Swig;

$application = new SingleCommandApplication(new Swig());
$application->run();
