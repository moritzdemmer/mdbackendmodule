<td>

    [{assign var="birthdaychilds" value=$oView->getBirthdayChilds(true)}]
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
    [{assign var="birthdaychildsgroup" value=$oView->getBirthdayChildsGroup(true)}]
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