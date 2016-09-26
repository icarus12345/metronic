[{strip}]
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel='shortcut icon' href='/favicon.ico' />
        <meta name="viewport" content="width=device-width; initial-scale=1.0, minimum-scale=1.0, user-scalable=no" />
        <title>[{$site.title|default:'Bánh sinh nhật - Bánh ngon Online'}]</title>
        <meta name="description" content="[{$site.desc|default:'Bánh sinh nhật, bánh kem, bánh cưới, bánh vẽ, bánh cupkes, dạy làm bánh tại nhà, đặt bánh theo yêu cầu, giao hàng tận nơi.'}]"/>
        <meta name="keywords" content="banh sinh nhat, banh, sinh nhat, banh cuoi, banh ve, banh cupkes, cake, hoc lam banh, banh kem, trang tri banh, lam banh, banh trung thu, banh hanh nhan"/>
        <meta property="place:location:latitude" content="10.792048"/>
        <meta property="place:location:longitude" content="106.679982"/>
        <meta property="business:contact_data:street_address" content="Lê Quý Đôn"/>
        <meta property="business:contact_data:locality" content="Hồ Chí Minh"/>
        <meta property="business:contact_data:postal_code" content="70000 "/>
        <meta property="business:contact_data:country_name" content="TP. Hồ Chí Minh"/>
        <meta property="business:contact_data:email" content="khuongxuantruong@gmail.com"/>
        <meta property="business:contact_data:phone_number" content="+84 982 636 618"/>
        <meta property="business:contact_data:website" content="http://banhngononline.com"/>
        <meta itemprop="name" content="[{$site.title|default:'Bánh sinh nhật - Bánh ngon Online'}]"/>
        <meta itemprop="description" content="[{$site.desc|default:'Bánh sinh nhật, bánh kem, bánh cưới, bánh vẽ, bánh cupkes, dạy làm bánh tại nhà, đặt bánh theo yêu cầu, giao hàng tận nơi.'}]"/>
        <meta itemprop="image" content="[{$site.image|default:('assets/cake/images/banh-sinh-nhat.jpg'|base_url)}]"/>

        <meta name="twitter:card" content="summary"/>  <!-- Card type -->
        <meta name="twitter:site" content="http://banhngononline.com"/>
        <meta name="twitter:title" content="[{$site.title|default:'Bánh sinh nhật - Bánh ngon Online'}]">
        <meta name="twitter:description" content="[{$site.desc|default:'Bánh sinh nhật, bánh kem, bánh cưới, bánh vẽ, bánh cupkes, dạy làm bánh tại nhà, đặt bánh theo yêu cầu, giao hàng tận nơi.'}]"/>
        <meta name="twitter:creator" content="http://banhngononline.com"/>
        <meta name="twitter:image:src" content="[{$site.image|default:('assets/cake/images/banh-sinh-nhat.jpg'|base_url)}]"/>
        <meta name="twitter:domain" content="http://banhngononline.com"/>

        <meta property="og:url" content="http://banhngononline.com">
        <meta property="og:type" content="article">
        <meta property="og:title" content="[{$site.title|default:'Bánh sinh nhật - Bánh ngon Online'}]">
        <meta property="og:image" content="[{$site.image|default:('assets/cake/images/banh-sinh-nhat.jpg'|base_url)}]"/>
        <meta property="og:description" content="[{$site.desc|default:'Bánh sinh nhật, bánh kem, bánh cưới, bánh vẽ, bánh cupkes, dạy làm bánh tại nhà, đặt bánh theo yêu cầu, giao hàng tận nơi.'}]">
        <meta property="og:site_name" content="http://banhngononline.com">
        <meta property="article:author" content="https://www.facebook.com/pages/B%C3%A1nh-Y%C3%AAu/368469929920029">
        <meta property="article:publisher" content="https://www.facebook.com/pages/B%C3%A1nh-Y%C3%AAu/368469929920029">

        <meta name="geo.region" content="VN" />
        <meta name="geo.placename" content="HCM" />
        <meta name="geo.position" content="10.792166;106.679810" />
        <meta name="ICBM" content="10.792166,106.679810"/>


        <link rel="stylesheet" type="text/css" href="/assets/cake/libraries/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="/assets/cake/libraries/bootstrap/css/bootstrap-select.min.css"/>
        <link rel="stylesheet" type="text/css" href="/assets/cake/libraries/plugin/select2/select2.css"/>
        <link rel="stylesheet" type="text/css" href="/assets/cake/libraries/bootstrap/css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="/assets/cake/libraries/plugin/owl-carousel/owl.carousel.css"/>
        <link rel="stylesheet" type="text/css" href="/assets/cake/libraries/plugin/swipebox/swipebox-dark-1.3.css" >
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700&subset=latin,vietnamese' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="/assets/cake/css/c.css"/>
        <link rel="stylesheet" type="text/css" href="/assets/cake/css/s.css"/>
        <link rel="stylesheet" type="text/css" href="/assets/cake/css/b.css"/>
        
        <script type="text/javascript" src="/assets/cake/libraries/bootstrap/js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="/assets/cake/libraries/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/assets/cake/libraries/plugin/owl-carousel/owl.carousel.js"></script>
        <script type="text/javascript" src="/assets/cake/libraries/plugin/jquery.nailthumb.1.1.js"></script>
        <script type="text/javascript" src="/libraries/plugin/jquery.lazyload.min.js"></script>
        <script type="text/javascript" src="/assets/cake/libraries/plugin/swipebox/jquery.swipebox-1.3.js"></script>

        <script type="text/javascript" src="/assets/cake/libraries/plugin/validation-engine/jquery.validationEngine.js"></script>
        <script type="text/javascript" src="/assets/cake/libraries/plugin/validation-engine/jquery.validationEngine-vi.js"></script>

        <script type="text/javascript" src="/assets/cake/js/b.js"></script>
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-54751825-1', 'auto');
        ga('send', 'pageview');

        </script>

        <!--[if IE]>
            <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
        <![endif]-->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
        <!-- Begin AutoSURF.VN Backlinks Exchanges -->
<div id="Nlg72Ko"></div><script type="text/javascript">var lnkExghRght = true;var lnkExghIdNo = "Nlg72Ko";try {(function() {var _lxChtgJsVrsm = document.createElement('script'); _lxChtgJsVrsm.type = 'text/javascript'; _lxChtgJsVrsm.async = true;_lxChtgJsVrsm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'exchanges.autosurf.vn/backlinks.js.php?u=Nlg72Ko';(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(_lxChtgJsVrsm);})();} catch(err) {}</script>
<!-- End AutoSURF.VN Backlinks Exchanges -->

        <img src="/assets/cake/images/banh-sinh-nhat.jpg" class="cake-image-default">
[{/strip}]