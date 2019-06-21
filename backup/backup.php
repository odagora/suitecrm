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
if(PHP_SAPI == 'cli'){
    define('ROOT', dirname(__FILE__));
    $filename = ROOT.'/../../../config.ini';
    // echo "You are working in webserver an using php-cli";
} 
elseif(!in_array($_SERVER['REMOTE_ADDR'], $whitelist)) {
    $filename = $_SERVER["DOCUMENT_ROOT"].'/../../../config.ini';
    // echo "You are working in webserver and using cgi-fcgi";
}
else{
    $filename = $_SERVER["DOCUMENT_ROOT"].'/config.ini';
    // echo "You are working in localhost";
}

$data = parse_ini_file($filename, true);
// print_r($data);

//Configure Dropbox Application
$app = new DropboxApp($data['dropbox_app_config']['client_id'],$data['dropbox_app_config']['client_secret'],$data['dropbox_app_config']['access_token']);

// //Configure Dropbox service
$dropbox = new Dropbox($app);

//Configure Database Connection
$dbuser = $data['crm_db_config']['username'];
$dbpass = $data['crm_db_config']['password'];
$dbname = $data['crm_db_config']['dbname'];

// //Launch backup via php-cli or cgi-fcgi
if(PHP_SAPI == 'cli' || !in_array($_SERVER['REMOTE_ADDR'], $whitelist)){    
    exec('mysqldump -u '.$dbuser.' -p'.$dbpass.' '.$dbname.' | gzip > db_backup.sql.gz');
}
else {
    exec('C:\xampp\mysql\bin\mysqldump -u '.$dbuser.' -p'.$dbpass.' '.$dbname.' > db_backup.sql');
}

// //Prepare file for upload
if(PHP_SAPI == 'cli'){
    $dropboxFile = new DropboxFile(ROOT . "/../../../db_backup.sql.gz");
}
elseif(!in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
    $dropboxFile = new DropboxFile(__DIR__ . "/db_backup.sql.gz");
}
else {
    $dropboxFile = new DropboxFile(__DIR__ . "/db_backup.sql");
}
$dt = (new DateTime()) -> format("Y-m-d_H-i_s");

try{
    if(PHP_SAPI == 'cli' || !in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
        $file = $dropbox->upload($dropboxFile, "/backups/bcp".$dt.".sql.gz", ['autorename' => true]);
        echo $file->getName();
    }
    else{
        $file = $dropbox->upload($dropboxFile, "/backups/bcp".$dt.".sql", ['autorename' => true]);
        echo $file->getName();
    }
}catch(Exception $e){
    echo $e;
}