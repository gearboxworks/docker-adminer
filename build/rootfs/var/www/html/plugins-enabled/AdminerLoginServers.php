<?php
require_once('./plugins/AdminerLoginServers.php');

$servers = [
        "Default by host" => array( "server" => "mysql://gearbox:gearbox@dbserver:3306" ),
        "Default by IP" => array( "server" => "mysql://gearbox:gearbox@172.42.0.1:3306" ),
        "Default" => array( "server" => "mysql://dbserver:3306", "username" => "gearbox", "password" => "gearbox" )
];

/*
	array("Another server" => array("server" => "172.42.0.1", "driver" => "server", "username" => "gearbox", "password" => "gearbox"))
	array("Default server" => array("server" => "dbserver", "driver" => "server", "username" => "gearbox", "password" => "gearbox"))
*/

return new AdminerLoginServers($servers);

?>
