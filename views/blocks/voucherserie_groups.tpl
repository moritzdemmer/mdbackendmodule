<td>

    [{assign var="birthdaychilds" value=$oView->getBirthdayChilds()}]
    [{assign var="dumm" value=$oView->addUserToGroup($birthdaychilds)}]
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
    <input type="button" value="Aktualisieren" class="edittext"
           onclick="JavaScript:showDialog('&cl=voucherserie_group&fnc=test&oxid=[{$oxid}]');">


    <button class="addAll">Alle hinzufügen</button>

    <button class="removeAll">Alle entfernen</button>
    <script type="text/javascript">

        $('.addAll').on('click', function () {
            var options = $('select.multiselect1 option').sort().clone();
            $('select.multiselect2').append(options);
        });

        $('.removeAll').on('click', function () {
            $('select.multiselect2').empty();
        });
    </script>

</td>