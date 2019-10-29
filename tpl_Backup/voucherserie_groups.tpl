[{block name="admin_voucher_birthday_form"}]
    [{assign var="birthdaychilds" value=$oView->getBirthday()}]
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
    <select multiple="true" class="multiselect2" name="myselecttsms2" size="10" style="height:400px; width:150px;">

    </select>


    <button class="add">Add</button>
    <button class="addAll">Add All</button>
    <button class="remove">Remove</button>
    <button class="removeAll">Remove All</button>
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
    [{/block}]
</td>