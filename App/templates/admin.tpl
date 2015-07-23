<!DOCTYPE html>
<html lang="en">
<head>
    <title>{$system_pageTitle} - Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="{$system_path}assets/css/admin.css" />
    <meta charset="utf-8">
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{$system_path}Admin/Home">QuantumCMS</a>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                {foreach from=$system_admin_menu item=title key=page}
                    <li{if $page eq $system_admin_menu_active} class="active"{/if}>
                        <a href="{$system_path}Admin/{$page}">{$title}</a>
                    </li>
                {/foreach}
            </ul>
        </div>
    </nav>
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        {$system_admin_title} <small>QuantumCMS</small>
                    </h1>
                </div>
            </div>

            <!-- Content -->
            {include file=$pageTemplate}
        </div>
    </div>
</div>
</body>
</html>