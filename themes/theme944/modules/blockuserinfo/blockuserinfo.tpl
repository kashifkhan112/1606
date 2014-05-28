<!-- Block user information module NAV  -->
<div id="blocktopinfo" class="user_info col-sm-4 col-lg-3 pull-right">
<ul>
    {if $is_logged}
        <li class="header_user_info user_login">
            <a class="logout" href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log me out' mod='blockuserinfo'}"><i class="icon-unlock"></i>
                {l s='' mod='blockuserinfo'}
            </a>
        </li>
    	<li class="header_user_info admin">
        	<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow"><span>{$cookie->customer_firstname|truncate:2:'.'|escape:'html':'UTF-8'} {$cookie->customer_lastname}</span></a>
        </li>
    
    {else}
      <li class="header_user_info user_login">
            <a class="login" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Login to your customer account' mod='blockuserinfo'}"><i class="icon-lock"></i>
                {l s='' mod='blockuserinfo'}
            </a>
        </li>
    	<li class=" header_user_info admin">
        	<a href="{$link->getPageLink('my-account', true)}" title="{l s='View my customer account' mod='blockuserinfo'}" rel="nofollow">{l s='Your Account' mod='blockuserinfo'}</a>
        </li>
      
    {/if}
</ul>
</div>
<!-- /Block usmodule NAV -->