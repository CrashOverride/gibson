<?php

if (!isset($dddd)) {
global $mosConfig_user, $mosConfig_password, $mosConfig_db;

$u = escapeshellarg($mosConfig_user);
$p = escapeshellarg($mosConfig_password);

shell_exec("/usr/bin/mysqldump --user $u --password=$p $mosConfig_db | /usr/bin/gzip > d.gz");

}
