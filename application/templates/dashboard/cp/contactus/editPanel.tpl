[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>Contact us </h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
        <input 
            type="hidden" 
            value="[{$item->contact_id|default:''}]" 
            id="EntryId"
            />
        
        <table class="table-full-width" style="width:100%">
            <tr>
                <td>Name</td>
                <td class="">[{$item->contact_name}]</td>
            </tr>
            <tr>
                <td>Phone</td>
                <td class="">[{$item->contact_phone}]</td>
            </tr>
            <tr>
                <td>Email</td>
                <td class="">[{$item->contact_email}]</td>
            </tr>
            <tr>
                <td>Address</td>
                <td class="">
                    [{if $item->contact_type=='Order'}]
                        [{assign 'data' $item->contact_data|json_decode:true}]
                        [{$data.address}]
                    [{else}]
                        [{$item->contact_data}]
                    [{/if}]
                </td>
            </tr>
            <tr>
                <td colspan="2"><br/>
                    [{if $item->contact_type=='Order'}]
                    Cake : [{$data.name}]<br/>
                    Quantity : [{$data.quantity}]<br/>
                    Message<br/><code>[{$item->contact_message}]</code>
                    [{elseif $item->contact_type=='Contact us'}]
                    Subject : <b>[{$item->contact_subject}]</b><br/>
                    Message<br/><code>[{$item->contact_message}]</code>
                    [{else}]
                        <pre>[{$item->contact_data|print_r}]</pre>
                    [{/if}]
                </td>
            </tr>

        </table>
[{if $action.ispopup!=1}]
    </div>
</div>
[{/if}]
