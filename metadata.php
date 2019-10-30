<?php

$sMetadataVersion = '2.1';

$aModule = [
    'id'           => 'mdbackendmodule',
    'title'        => 'MD New Birthday Modul',


    'version'      => '1.0',
    'author'       => 'Moritz Demmer',
    'events'       => array(

    ),
    'blocks' => array(
        array('template' => 'layout/page.tpl', 'block'=>'content_main', 'file'=>'/views/blocks/md_start.tpl'),
    ),

    'settings' => array(
        array('group' => 'main', 'name' => 'Geburtstagstext', 'type' => 'str',      'value' => 'Alles Gute zum Geburtstag!'),
        array('group' => 'main', 'name' => 'Geburtstagstext_Hidden',    'type' => 'bool',     'value' => 'false'),
        array('group' => 'main', 'name' => 'nichtEingeloggtAufforderung',  'type' => 'str',      'value' => 'Log dich mal ein!'),
        array('group' => 'main', 'name' => 'nichtEingeloggtAufforderung_Hidden',  'type' => 'bool',      'value' => 'false')

    ),

    'extend' => array (
        \OxidEsales\Eshop\Application\Controller\Admin\VoucherSerieGroups::class => \OxidEsales\MdModul\Controller\Admin\VoucherSerieGroups::class
    )

];
