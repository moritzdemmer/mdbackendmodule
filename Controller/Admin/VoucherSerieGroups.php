<?php

namespace OxidEsales\MdModul\Controller\Admin;

class VoucherSerieGroups extends VoucherSerieGroups_parent
{
    public function render()
    {

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
        $sSql = "SELECT oxusername FROM oxuser WHERE oxbirthdate LIKE '%-" . $birthmonth . "-" . $birthday . "'";
        $resultSet = \OxidEsales\Eshop\Core\DatabaseProvider::getDb()->select($sSql);

        $allResults = $resultSet->fetchAll();
        $results = array();
        foreach ($allResults as $row) {
            $results[] = $row[0];
        };

        return $results;
    }




    public function getBirthdayChildsGroup()
    {

        $objectIDsql = "SELECT oxobjectid FROM oxobject2group WHERE oxgroupsid = 'oxidbirthdaychilds'";
        $objectIDresultSet = \OxidEsales\Eshop\Core\DatabaseProvider::getDb()->select($objectIDsql);
        $oxidgroup = array();
        $oxusernames = array();
        $objectIDallResults = $objectIDresultSet->fetchAll();
        $objectIDresult = array();
        foreach ($objectIDallResults as $row) {
            $objectIDresult[] = $row[0];
        }


        for ($i = 0; $i < sizeof($objectIDresult); $i++) {

            $oxuseridsql = "SELECT oxusername FROM oxuser WHERE oxid = '$objectIDresult[$i]'";
            $oxuserresultSet = \OxidEsales\Eshop\Core\DatabaseProvider::getDb()->select($oxuseridsql);

            $oxusersAllResult = $oxuserresultSet->fetchAll();

            foreach ($oxusersAllResult as $row) {
                echo $row[0];
                $oxusernames[] = $row[0];
            }

            return $oxusernames;
        }

    }


    public function addUserToGroup()
    {
        $usersbirthday = $this->getBirthdayChilds();
        $userbirthdaygroup = $this->getBirthdayChildsGroup();
        $newusersadd = array_diff($usersbirthday, $userbirthdaygroup);

        /*for ($i = 0; $i < sizeof($newusersadd); $i++) {
            $oNewGroup = oxNew(\OxidEsales\Eshop\Application\Model\Object2Group::class);
            $oNewGroup->oxobject2group__oxobjectid = new \OxidEsales\Eshop\Core\Field($newusersadd[$i]);
            $oNewGroup->oxobject2group__oxgroupsid = new \OxidEsales\Eshop\Core\Field('oxidbirthdaychilds');
            $oNewGroup->save();
        }*/

    }
}
