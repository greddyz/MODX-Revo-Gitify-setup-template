id: 24
name: filterbytag
category: MIGX
properties: ''

-----

if (!is_array($subject)) {
    $subject = explode(',',str_replace(array('||',' '),array(',',''),$subject));
}

return (in_array($operand,$subject));