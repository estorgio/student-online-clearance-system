<?php

/**
 * Administrator Model
 *
 * @author ronversa09, Ozy
 */
class User_Model extends Model {

    public $Username;
    public $Password;
    public $Surname;
    public $First_Name;
    public $Middle_Name;
    public $Account_Type;
    public $Picture;
    public $Assigned_Signatory;

    private $query;

    public function __construct() {
        parent::__construct();
        @$this->Username = Session::get_user();
    }

    // mutator

    public function getUser($tempUser, $tempPass) {

        return mysql_query("SELECT * FROM users WHERE username='$tempUser'and password='$tempPass' ");
    }

    public function isExist($tempUser, $tempPass) {

        $this->query = mysql_query("SELECT * FROM users WHERE username='$tempUser'and password='$tempPass' "); // where username = '$tempUser' and password = '$tempPass'");

        $rows = mysql_num_rows($this->query);


        //echo $this->getAccount_Type($tempUser, $tempPass) . ", " .$rows;

        if ($rows == 1) {
            return true;
        } else {
            //echo $tempPass;
            return false;
        }
    }

    public function getAccount_Type($tempUser, $tempPass) {
        $this->query = mysql_query("SELECT Account_Type FROM users WHERE username='$tempUser'and password='$tempPass' ");

        $sample = mysql_fetch_array($this->query);

        return $sample['Account_Type'];
    }

    public function update($account) {
        // $sql = "UPDATE users  SET Surname='".$Surname."',First_Name='".$First_Name."',Middle_Name='". $Middle_Name ."',Password='".$Password."' WHERE Username='".$Username."'";
        if ($account == "Admin") {
            $sql = "UPDATE users SET Surname='" . $this->Surname . "', First_Name='" . $this->First_Name . "', Middle_Name='" . $this->Middle_Name . "',Password='" . $this->Password . "' Where Username='" . $this->Username . "'";
        } else if ($account == "Student") {
            $sql = "UPDATE users SET password='" . $this->Password . "' Where username ='" . $this->Username . "'";
            echo "Student";
        } else if ($account == "Signatory") {
            echo "Signatory";

            $message = "";
            if (mysql_query($sql)) {
                $message = "Success";
                Session::set_password($this->Password);
                Session::set_firstname($this->First_Name);
                Session::set_middlename($this->Middle_Name);
                Session::set_surname($this->Surname);
            } else {
                $message = "failed";
            }
            // echo $this->Middle_Name;
            echo $message;
            echo $account;
        }
    }
    
    public function getListofUsers($searchName){
        return mysql_query("select Picture, concat(Surname, ', ', First_Name, ' ', Middle_Name) 
                        as Name, Account_Type from users 
                        where First_name like '%$searchName%' OR Surname like '%$searchName%' OR 
                        Middle_Name like '%$searchName%'");
               
    }

}

?>
