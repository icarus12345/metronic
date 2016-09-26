<!DOCTYPE html>
<html lang="en">
    <head>
        <title>404 Page Not Found</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width" />
        <link href="/libraries/bootstrap/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- <script src="/libraries/bootstrap/js/jquery-1.9.1.min.js"></script> -->
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
            .glyphicon,.awesome {position: relative;top: 1px;display: inline-block;font-style: normal;font-weight: normal;line-height: 1;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;}
            .awesome{font-family: FontAwesome}
            .awesome-f120:before {content: "\f120";}
            .awesome-f188:before {content: "\f188";}
            .awesome-f180:before {content: "\f180";}
            .awesome-f140:before {content: "\f140";}
            .bug{
                position: fixed;z-index: 10;
                /*-webkit-animation:spin 4s linear infinite;
                -moz-animation:spin 4s linear infinite;
                animation:spin 4s linear infinite;*/
            }
            .btn {display: inline-block;padding: 6px 12px;margin-bottom: 0;font-size: 14px;font-weight: normal;line-height: 1.42857143;text-align: center;white-space: nowrap;vertical-align: middle;cursor: pointer;-webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;background-image: none;}
            .btn{border: 1px solid #bdc7d8;background: #fff;color: #777;}
            a.btn{text-decoration: none}
            @-moz-keyframes spin { 100% { -moz-transform: rotate(360deg); } }
            @-webkit-keyframes spin { 100% { -webkit-transform: rotate(360deg); } }
            @keyframes spin { 100% { -webkit-transform: rotate(360deg); transform:rotate(360deg); } }
        </style>
        
    </head>
    <body>
        <p class="notice">And you may ask yourself, well, how did I get here ?</p>
        <div class="content-wrapper">
            <div class="panel error-mobile">
                <div class="eight columns">
                    <h1>Error 404</h1>
                    <div>Ooops, page not found...</div>
                    <div class="divider"></div>
                    <img class="error-img" alt="error" src="/libraries/images/bg/404.jpg">
                    <p class="char-bugs">We're sorry, but we can't find the page you were looking for.It's probably some thing we've done wrong but now we know about it we'll try to fix it.</p><br>
                    <a class="btn btn-default" href="/">
                        <i class="awesome  fa-home"></i> Home 
                    </a>
                    <img class="error-img-mobile" alt="error" src="/libraries/images/bg/404.jpg">
                    
                    <i class="awesome fa-ambulance"></i>
                    <i class="awesome fa-ambulance"></i>
                    <i class="awesome fa-ambulance"></i>
                    <i class="awesome fa-ambulance"></i>
                    <i class="awesome fa-ambulance"></i>
                    <i class="awesome fa-ambulance"></i>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </body>
</html>