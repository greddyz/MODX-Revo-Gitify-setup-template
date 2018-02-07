<!doctype html>
<html lang="ru">
<head>
    <title>{$longtitle|default:$pagetitle}</title>
    <base href="{config name="site_url"}">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{$description}">
    {block name="pagevars"}
        {$scriptFiles = []}
        {$cssFiles = []}
        {config name="assets_url" assign="assets_url"}
        {config name="site_start" assign="site_start"}

        {field name="pagetitle" assign="pagetitle"}
        {field name="longtitle" assign="longtitle"}
        {field name="description" assign="description"}
        {field name="id" assign="id"}
        {field name="content" assign="content"}
    {/block}
    {block name="css-files"}
        {$cssFiles[] = "/assets/css/main.css"}
    {/block}
    {block name="js-files"}
        {$scriptFiles[] = "/assets/js/main.js"}
    {/block}

    {snippet name="MinifyX@MinifyX"  params="cssSources=`{$cssFiles|implode:','}`&jsSources=`{$scriptFiles|implode:','}`"}

    <link type="image/x-icon" rel="shortcut icon" href="/assets/img/favicon.ico">
    <link type="image/png" rel="icon" href="/assets/img/favicon.png">

    {ph name="MinifyX.css"}
</head>
<body>
{block name="header"}

{/block}

{block name="main"}
    {block name="content"}{/block}
{/block}

{block name="footer"}

{/block}

{ph name="MinifyX.javascript"}

</body>
</html>