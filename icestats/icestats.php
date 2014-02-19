#!/usr/bin/php
<?php

$host = 'http://arouseosu.com:8800/admin/stats.xml';
$username = 'admin';
$password = 'arouseFTW!';

function make_request($host, $username, $password) {
  $request = curl_init();

  curl_setopt($request, CURLOPT_URL, $host);
  curl_setopt($request, CURLOPT_HEADER, 0);
  curl_setopt($request, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt($request, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
  curl_setopt($request, CURLOPT_USERPWD, $username . ':' . $password);

  return curl_exec($request);
}

// Get xml data from Icecast server.
$data = make_request($host, $username, $password);

// Initialize XML object.
$icestats = new SimpleXMLElement($data);

// Output the value of the outermost <listeners> node, since we only have one mountpoint.
echo $icestats->listeners;

?>
