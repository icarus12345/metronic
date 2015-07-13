<!DOCTYPE html>
<html lang="en">
    <head>
        <title>A PHP Error was encountered</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width" />
        <style type="text/css">
            *{
                margin: 0;
            }
            body{
                background: url('/libraries/images/bg/bg-body.png');
                font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
                font-size: 14px;
                line-height: 20px;
                color: #555;
            }
            body,html{
                display: block;
                height: 100%;
            }
            .content-wrapper{
                padding: 40px
            }
            .panel{
                background: #fff;
                border: 1px solid #dfdfdf;
                padding: 20px 20px 20px 20px;
                position: relative;
                max-width: 480px;
                margin: 0 auto;
            }
            
            p.notice{
                padding: 20px;margin: 0;
                background: #FAFBFC;
                border-bottom: 1px solid #dfdfdf;
                text-align: center;
            }
            .error-img{
                float: left;
                padding-right: 20px;
            }
            .error-img-mobile{
                display: none;
                
            }
            .clear{clear:both}
            .divider {
                height: 6px;
                margin: 20px 0px 25px 0px;
                background: url(/libraries/images/bg/divider.png) repeat;
                clear: both;
                display: block;
            }
            h1{
                line-height: 40px;
                font-weight: normal;
            }
            a,a:link,a:active{
                color: #aaa;
            }
            @media (max-width:768px){
                body,html{
                    display: block;
                    height: auto;
                }
                .content-wrapper{
                    padding: 20px;
                }
                .error-img{
                    display: none;
                }
                .error-img-mobile{
                    display: block;
                    margin: 0 auto;
                    max-width: 90%;
                    margin-top: 20px;
                }
            }
        </style>
    </head>
    <body>
        <p class="notice">And you may ask yourself, well, how did I get here ?</p>
        <div class="content-wrapper">
            <div class="panel error-mobile">
                <div class="eight columns">
                    <h1>A PHP Error was encountered</h1>
                    <div><?php echo $heading ?></div>
                    <div class="divider"></div>
                    <p>
                        Severity: <?php echo $severity ?></br>
                        Message:  <?php echo $message ?></br>
                        Filename: <?php echo $filepath ?></br>
                        Line Number: <?php echo $line ?><br>
                        In the meantime, click on the logo to return to the <a href="/">homepage</a>
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </body>
</html>
<?php
die();
?>
<?php
die();


