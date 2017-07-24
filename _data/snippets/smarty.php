id: 13
name: smarty
description: 'Include Smarty-template'
category: modxSmarty
properties: null

-----

foreach($scriptProperties as $key => $value){
    $modx->smarty->assign($key, $value);
}

return $modx->smarty->fetch($tpl);