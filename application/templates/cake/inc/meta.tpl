<html lang="en">
    <head>
        <title>[{if $site.title}][{$site.title}] - [{/if}][{$setting_data.meta_title.data_data.value[$lang]}]</title>
        [{if $setting_data.meta_image.data_data.image && $setting_data.meta_image.data_data.image|strpos:'http' === false}]
            [{assign 'meta_image' $setting_data.meta_image.data_data.image|base_url}]
        [{/if}]
        [{if $site.image && $site.image|strpos:'http' === false}]
            [{assign 'meta_image' $site.image|base_url}]
        [{/if}]
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width; initial-scale=1.0, minimum-scale=1.0, user-scalable=no" />
        <meta name="description" content="[{$site.desc|default:$setting_data.meta_description.data_data.value[$lang]}]">
        <meta name="keywords" content="[{if $site.tag}][{$site.tag}] [{/if}][{$setting_data.meta_keyword.data_data.value[$lang]}]">

        
        <meta itemprop="name" content="[{if $site.title}][{$site.title}] - [{/if}][{$setting_data.meta_title.data_data.value[$lang]}]"/>
        <meta itemprop="description" content="[{$site.desc|default:$setting_data.meta_description.data_data.value[$lang]}]"/>
        <meta itemprop="image" content="[{$meta_image}]"/>
        <meta name="twitter:card" content="summary"/>  <!-- Card type -->
        <meta name="twitter:site" content="[{if $site.title}][{$site.title}] - [{/if}][{$setting_data.meta_title.data_data.value[$lang]}]"/>
        <meta name="twitter:title" content="[{if $site.title}][{$site.title}] - [{/if}][{$setting_data.meta_title.data_data.value[$lang]}]">
        <meta name="twitter:description" content="[{$site.desc|default:$setting_data.meta_description.data_data.value[$lang]}]"/>
        <meta name="twitter:creator" content="[{if $site.title}][{$site.title}] - [{/if}][{$setting_data.meta_title.data_data.value[$lang]}]"/>
        <meta name="twitter:image:src" content="[{$meta_image}]"/>
        <meta name="twitter:domain" content="http://dungculambanhanphu.com"/>
        
        <!--<meta property="fb:admins" content="579622216,709634581">-->
        <!--<meta property="fb:app_id" content="368469929920029">-->
        <meta property="og:url" content="[{current_url()}]">
        <meta property="og:type" content="article">
        <meta property="og:title" content="[{if $site.title}][{$site.title}] - [{/if}][{$setting_data.meta_title.data_data.value[$lang]}]">
        <meta property="og:image" content="[{$meta_image}]"/>
        <meta property="og:description" content="[{$site.desc|default:$setting_data.meta_description.data_data.value[$lang]}]">
        <meta property="og:site_name" content="[{if $site.title}][{$site.title}] - [{/if}][{$setting_data.meta_title.data_data.value[$lang]}]">
        <meta property="article:author" content="[{$setting_data.fb_link.data_data.value[$lang]}]">
        <meta property="article:publisher" content="[{$setting_data.fb_link.data_data.value[$lang]}]">

        <meta name="geo.region" content="VN" />
        <meta name="geo.placename" content="HCM" />
        <meta name="geo.position" content="10.792048;106.679982" />
        <meta name="ICBM" content="10.792048,106.679982"/>

        
        <link rel="stylesheet" type="text/css" href="/libraries/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="/libraries/bootstrap/css/hover.css"/>
        <link rel="stylesheet" type="text/css" href="/libraries/bootstrap/css/bootstrap-select.min.css"/>
        <link rel="stylesheet" type="text/css" href="/libraries/bootstrap/css/font-awesome.min.css?t=1">
        <link rel="stylesheet" type="text/css" href="/assets/cake/css/cake.css"/>
        <link rel="stylesheet" type="text/css" href="/libraries/plugin/owl-carousel/owl.carousel.css"/>
        <link rel="stylesheet" type="text/css" href="/libraries/plugin/swipebox/swipebox-dark-1.3.css" >
        <link rel="stylesheet" type="text/css" href="/libraries/ckeditor/contents.css" >
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro&subset=latin,latin-ext,vietnamese' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700&subset=latin,vietnamese' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="/libraries/metronic/theme/assets/global/plugins/bootstrap-toastr/toastr.min.css"/>
        <script type="text/javascript" src="/libraries/bootstrap/js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="/libraries/bootstrap/js/bootstrap.js"></script>
        <script src="/libraries/metronic/theme/assets/global/plugins/bootstrap-toastr/toastr.min.js"></script>
        <script src="/libraries/metronic/theme/assets/admin/pages/scripts/ui-toastr.js"></script>
        <script type="text/javascript" src="/libraries/plugin/owl-carousel/owl.carousel.js"></script>
        <script type="text/javascript" src="/libraries/plugin/jquery.nailthumb.1.1.js"></script>
        <script type="text/javascript" src="/libraries/plugin/jquery.lazyload.min.js"></script>
        <script type="text/javascript" src="/assets/cake/js/cake.js"></script>

        <!--[if IE]>
            <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
        <![endif]-->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-75259532-1', 'auto');
          ga('send', 'pageview');

        </script>
    </head>
    <body>