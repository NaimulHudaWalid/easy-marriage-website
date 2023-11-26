<?php
if (!defined('DB_SERVER')) {
    require_once("../initialize.php");
}
class DBConnection
{

    private $host = DB_SERVER;
    private $username = DB_USERNAME;
    private $password = DB_PASSWORD;
    private $database = DB_NAME;

    public $conn;

    public function __construct()
    {

        if (!isset($this->conn)) {

            $this->conn = new mysqli($this->host, $this->username, $this->password, $this->database);

            if (!$this->conn) {
                echo 'Cannot connect to database server';
                exit;
            }
        }
    }
    public function __destruct()
    {
        $this->conn->close();
    }
}


function create_unique_id()
{
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < 20; $i++) {
        $randomString .= $characters[mt_rand(0, $charactersLength - 1)];
    }
    return $randomString;
}
