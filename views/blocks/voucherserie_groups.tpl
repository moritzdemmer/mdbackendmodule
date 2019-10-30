[{if $oxid != "-1"}]
    <table width="100%">
        <colgroup span="3" width="33%">
            <tr>
                &nbsp;&nbsp;   &nbsp;&nbsp;   Geburtstagskinder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gutscheingruppe
                <td>

                    [{assign var="birthdaychilds" value=$oView->getBirthdayChilds()}]
                    [{assign var="dumm" value=$oView->addUserToGroup()}]
                    [{php}]
                    $birthdaychilds = $this->get_template_vars('birthdaychilds');
                    [{/php}]

                    <select class="multiselect1" name="myselecttsms1" size="10" style="height:400px; width:150px;">
                        [{php}]
                        for ($i = 0; $i < sizeof($birthdaychilds); $i++)
                        {
                        echo "
                        <option value='$birthdaychilds[$i]'>" . $birthdaychilds[$i]. "</option>
                        ";
                        }
                        [{/php}]
                    </select>
                    [{assign var="birthdaychildsgroup" value=$oView->getBirthdayChildsGroup()}]
                    [{php}]
                    $birthdaychildsgroup = $this->get_template_vars('birthdaychildsgroup');
                    [{/php}]

                    <select multiple="true" class="multiselect2" name="myselecttsms2" size="10" style="height:400px; width:150px;">
                        [{php}]
                        for ($i = 0; $i < sizeof($birthdaychildsgroup); $i++)
                        {
                        echo "
                        <option value='$birthdaychildsgroup[$i]'>" . $birthdaychildsgroup[$i]. "</option>
                        ";
                        }
                        [{/php}]
                    </select>

                </td>
                <td>
                    [{block name="admin_voucherserie_groups_form"}]
                    <form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post">
                        [{$oViewConf->getHiddenSid()}]
                        <input type="hidden" name="cl" value="voucherserie_groups">
                        <input type="hidden" name="fnc" value="">
                        <input type="hidden" name="oxid" value="[{$oxid}]">
                        <input type="hidden" name="editval[oxuser__oxid]" value="[{$oxid}]">
                        <input [{$readonly}] type="button" value="[{oxmultilang ident="GENERAL_ASSIGNGROUPS"}]" class="edittext" onclick="JavaScript:showDialog('&cl=voucherserie_groups&aoc=1&oxid=[{$oxid}]');">
                    </form>
                    [{/block}]
                </td>
                <td>
                    [{block name="admin_voucherserie_categories_form"}]
                    <form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post">
                        [{$oViewConf->getHiddenSid()}]
                        <input type="hidden" name="cl" value="discount_articles">
                        <input type="hidden" name="fnc" value="">
                        <input type="hidden" name="oxid" value="[{$oxid}]">
                        <input type="hidden" name="editval[discount__oxid]" value="[{$oxid}]">
                        <input [{$readonly}] type="button" value="[{oxmultilang ident="GENERAL_ASSIGNCATEGORIES"}]" class="edittext" onclick="JavaScript:showDialog('&cl=discount_articles&aoc=2&oxid=[{$oxid}]');">
                    </form>
                    [{/block}]
                </td>
                <td>
                    [{block name="admin_voucherserie_articles_form"}]
                    <form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post">
                        [{$oViewConf->getHiddenSid()}]
                        <input type="hidden" name="cl" value="discount_articles">
                        <input type="hidden" name="fnc" value="">
                        <input type="hidden" name="oxid" value="[{$oxid}]">
                        <input type="hidden" name="editval[discount__oxid]" value="[{$oxid}]">
                        <input [{$readonly}] type="button" value="[{oxmultilang ident="GENERAL_ASSIGNARTICLES"}]" class="edittext" onclick="JavaScript:showDialog('&cl=discount_articles&aoc=1&oxid=[{$oxid}]');">
                    </form>
                    [{/block}]
                </td>
            </tr>
    </table>
    [{/if}]
