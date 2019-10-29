[{assign var="oConf" value=$oViewConf->getConfig()}]
[{ if $oxcmp_user && $oConf->getConfigParam('Geburtstagstext_Hidden') }]
    [{assign var="date" value= $smarty.now|date_format:'%Y-%m-%d'|strstr:"-"}]
    [{assign var="birthday" value= $oxcmp_user->oxuser__oxbirthdate->value|strstr:"-"}]

    [{ if $date == $birthday }]
<div class="alert alert-info" style="font-size:30px; text-align:center">
        [{$oConf->getConfigParam('Geburtstagstext')}]
        [{$lolol}]
    [{$email}]
    </div>
    [{ /if }]

[{elseif !$oxcmp_user && $oConf->getConfigParam('nichtEingeloggtAufforderung_Hidden')}]
<div class="alert alert-warning" style="font-size:30px; text-align:center">
     [{$oConf->getConfigParam('nichtEingeloggtAufforderung')}]
</div>
[{/if}]


[{$smarty.block.parent}]
