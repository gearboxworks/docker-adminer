<?php
require_once('plugins/login-servers.php');

return new AdminerLoginServers(
    $servers = array("172.42.0.1"),
    $driver = 'server'
);

?>
