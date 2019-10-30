<td>

    [{assign var="birthdaychilds" value=$oView->getBirthdayChilds(true)}]
    [{php}]
    $birthdaychilds =  $this->get_template_vars('birthdaychilds');
    [{/php}]


    <select class="multiselect1" name="myselecttsms1"  size="10" style="height:400px; width:150px;">
        [{php}]
        for ($i = 0; $i < sizeof($birthdaychilds); $i++)
        {
        echo "<option value='$birthdaychilds[$i]'>" . $birthdaychilds[$i]. "</option>";
        }
        [{/php}]
    </select>
    [{assign var="birthdaychildsgroup" value=$oView->getBirthdayChildsGroup()}]
    [{php}]
    $birthdaychildsgroup =  $this->get_template_vars('birthdaychildsgroup');
    [{/php}]

    <select multiple="true" class="multiselect2" name="myselecttsms2" size="10" style="height:400px; width:150px;">
        [{php}]
        for ($i = 0; $i < sizeof($birthdaychildsgroup); $i++)
        {
        echo "<option value='$birthdaychildsgroup[$i]'>" . $birthdaychildsgroup[$i]. "</option>";
        }
        [{/php}]
    </select>



    <button class="add">Hinzufügen</button>
    <button class="addAll">Alle hinzufügen</button>
    <button class="remove">Entfernen</button>
    <button class="removeAll">Alle entfernen</button>
    <script type="text/javascript">
        $('.add').on('click', function() {
            var options = $('select.multiselect1 option:selected').sort().clone();
            $('select.multiselect2').append(options);
        });
        $('.addAll').on('click', function() {
            var options = $('select.multiselect1 option').sort().clone();
            $('select.multiselect2').append(options);
        });
        $('.remove').on('click', function() {
            $('select.multiselect2 option:selected').remove();
        });
        $('.removeAll').on('click', function() {
            $('select.multiselect2').empty();
        });
    </script>

</td>