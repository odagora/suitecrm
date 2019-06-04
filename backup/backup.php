<?php

require_once 'vendor/autoload.php';
use Kunnu\Dropbox\Dropbox;
use Kunnu\Dropbox\DropboxApp;
use Kunnu\Dropbox\DropboxFile;

//Configure server - localhost or web server
$whitelist = [
    '127.0.0.1',
    '::1'
];
if(!in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
    $filename = $_SERVER["DOCUMENT_ROOT"].'../config.ini';
    // echo "You are working in webserver";
} 
else {
    $filename = $_SERVER["DOCUMENT_ROOT"].'/config.ini';
    // echo "You are working in localhost";
}

$data = parse_ini_file($filename, true);

// //Configure Dropbox Application
$app = new DropboxApp($data['dropbox_app_config']['client_id'],$data['dropbox_app_config']['client_secret'],$data['dropbox_app_config']['access_token']);

// //Configure Dropbox service
$dropbox = new Dropbox($app);

//Configure Database Connection
$dbuser = $data['crm_db_config']['username'];
$dbpass = $data['crm_db_config']['password'];
$dbname = $data['crm_db_config']['dbname'];

//Launch backup via command
if(!in_array($_SERVER['REMOTE_ADDR'], $whitelist)){    
    exec("mysqldump -u $dbuser -p$dbpass $dbname | gzip > db_backup.sql.gz");
}
else {
    exec('C:\xampp\mysql\bin\mysqldump -u '.$dbuser.' -p'.$dbpass.' '.$dbname.' > db_backup.sql');
}

// //Prepare file for upload
if(!in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
    $dropboxFile = new DropboxFile(__DIR__ . "/db_backup.sql.gz");
}
else {
    $dropboxFile = new DropboxFile(__DIR__ . "/db_backup.sql");
}
$dt = (new DateTime()) -> format("Y-m-d_H-i_s");

try{
    $file = $dropbox->upload($dropboxFile, "/backups/bcp".$dt, ['autorename' => true]);
    echo $file->getName();
}catch(Exception $e){
    echo $e;
}