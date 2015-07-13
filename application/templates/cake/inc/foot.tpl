[{strip}]
<div class="space-line"></div>
<div class="space-line"></div>
<div class="footer">
    <div class="foot-rem"></div>
    <div>
        <div class="container">
            <div class="socials">

                <a href="[{$settting_data['facebook']|default:''|escape:'html'}]"><img src="/assets/cake/images/f.png"/></a>
                <a href="[{$settting_data['google']|default:''|escape:'html'}]"><img src="/assets/cake/images/g.png"/></a>
                <a href="[{$settting_data['twitter']|default:''|escape:'html'}]"><img src="/assets/cake/images/t.png"/></a>
            </div>
            <div class="foot-hr"></div>
            <div class="foot-info">
                <span><i class="fa fa-home"></i> [{$settting_data['address']|default:''|escape:'html'}]</span>
                <span><i class="fa fa-envelope-o"></i> [{$settting_data['email']|default:''|escape:'html'}]</span>
                <span><i class="fa fa-phone"></i> [{$settting_data['phone']|default:''|escape:'html'}]</span>
            </div>
        </div>
    </div>
</div>
[{/strip}]