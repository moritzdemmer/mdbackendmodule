<?php
namespace OxidEsales\MdModul\Controller\Admin;

class VoucherSerieGroups extends VoucherSerieGroups_parent
{
    public function render()
    {
echo "lol";

       return parent::render();
    }


    public function getBirthday()
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
        echo $results[0];
    }

}
