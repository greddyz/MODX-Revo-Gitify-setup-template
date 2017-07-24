id: 13
name: smarty
description: 'Include Smarty-template'
category: modxSmarty
properties: 'a:0:{}'

-----

foreach($scriptProperties as $key => $value){
    $modx->smarty->assign($key, $value);
}

// return $modx->smarty->fetch($tpl);
return preg_replace("/[ \r\n\t]+$/sm", "", $modx->smarty->fetch($tpl.'.tpl'));