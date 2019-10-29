<?php
namespace OxidEsales\MdModul\Controller\Admin;

class VoucherSerieGroups extends VoucherSerieGroups_parent
{
    public function render()
    {
    $this->getBirthdayChildsGroup();
       return parent::render();
    }


    public function getBirthdayChilds()
    {

        $today_date = getdate();
        if ($today_date["mon"] < 10)
            $birthmonth = "0" . $today_date["mon"];
        else
            $birthmonth = $today_date["mon"];
        if ($today_date["mday"] < 10)
            $birthday = "0" . $today_date["mday"];
        else
            $birthday = $today_date["mday"];
        $sSql = "SELECT oxusername FROM oxuser WHERE oxbirthdate LIKE '%-".$birthmonth."-".$birthday."'";
        $resultSet = \OxidEsales\Eshop\Core\DatabaseProvider::getDb()->select($sSql);

        $allResults = $resultSet->fetchAll();
        $results = array();
        foreach($allResults as $row) {
            $results[]= $row[0];
        };
     
        return $results;
    }
    public function getBirthdayChildsGroup()
    {

        $objectIDsql = "SELECT oxobjectid FROM oxobject2group WHERE oxgroupid = 'oxidbirthdaychilds'";
        $objectIDresultSet = \OxidEsales\Eshop\Core\DatabaseProvider::getDb()->select($objectIDsql);

        $allResults = $objectIDresultSet->fetchAll();
        $objectIDresult = array();
        foreach($allResults as $row) {
            $objectIDresult[]= $row[0];
        };
    echo $objectIDresult[0];
        $usersql = "SELECT oxusername FROM oxuser WHERE oxid = 'oxidbirthdaychilds'";


    }
}
