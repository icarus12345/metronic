[{if $action.ispopup!=1}]
<div class="widget">
    <div class="modal-header">
        <h4>User <small>[{if $item}]Edit Item[{else}]Add Item[{/if}]</small></h4>
        <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
            <li><a href="JavaScript:myApp.onSave()" title="Save" onclick=""><i class="fa fa-save"></i></a></li>
            <li><a href="JavaScript:myApp.onCancel()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
        </ul>
    </div>
    <div class="modal-body" >
[{/if}]
<input
type="hidden"
value="[{$item->ause_id|default:''}]"
id="EntryId"
/>
<form name="entryForm" id="entryForm" target="integration_asynchronous">
  <div class="row half">
    <div class="col-mb-6 half">
      <div class="pull-bottom control-group">
        <div>Authority :</div>
        <select class="form-control selectpicker" name="ause_authority" multiple >
          <option [{if $item->ause_authority=="Guest"}]selected="1"[{/if}] value="Guest">Guest</option>
          <option [{if $item->ause_authority=="Admin"}]selected="1"[{/if}] value="Admin">Admin</option>
          <option [{if $item->ause_authority=="User"}]selected="1"[{/if}] value="User">User</option>
          <option [{if $item->ause_authority=="View"}]selected="1"[{/if}] value="View">View</option>
          <option [{if $item->ause_authority|strpos:"CP"!==false}]selected="1"[{/if}] value="CP">Content Provider</option>
          <option [{if $item->ause_authority|strpos:"SO"!==false}]selected="1"[{/if}] value="SO">Service Operator</option>
        </select>
      </div>
    </div>
    <div class="col-mb-6 half">
      <div class=" pull-bottom control-group">
        <div>Status :</div>
        <select class="form-control selectpicker" name="ause_status">
          <option [{if $item->ause_status=="true"}]selected="1"[{/if}] value="true">Enable</option>
          <option [{if $item->ause_status=="false"}]selected="1"[{/if}] value="false">Disable</option>
        </select>
      </div>
    </div>
  </div>
  <div class="row  half">
    <div class="col-mb-6 half">
      <div class="pull-bottom control-group">
        <div>Account Name :</div>
        <input type="text" 
          class="form-control validate[required]"
          data-prompt-position="topLeft:0,20"
          name="ause_name"
          value="[{$item->ause_name|quotes_to_entities|default:''}]"
          />
      </div>
    </div>
    <div class="col-mb-6 half">
      <div class="pull-bottom control-group">
        <div>Email :</div>
        <input type="text" 
          class="form-control validate[required]"
          data-prompt-position="topLeft:0,20"
          name="ause_email"
          value="[{$item->ause_email|quotes_to_entities|default:''}]"
          />
      </div>
    </div>
  </div>
  <div class="row  half">
    <div class="col-mb-6 half">
      <div class="pull-bottom control-group">
        <div>Username :</div>
        <input type="text" 
          class="form-control validate[required]"
          data-prompt-position="topLeft:0,20"
          name="ause_username"
          value="[{$item->ause_username|quotes_to_entities|default:''}]"
          />
      </div>
    </div>
    <div class="col-mb-6 half">
      <div class=" pull-bottom control-group">
        <div>Password :</div>
        <div class="input-append">
          <input type="text" 
            class="form-control [{if empty($item)}]validate[required][{/if}]"
            data-prompt-position="topLeft:0,20"
            placeholder="Current password"
            name="ause_password"
            value=""
            />
          <span class="add-on" title="Random new password" onclick="document.entryForm.ause_password.value = getNewPass()">
            <i class="fa fa-random"></i>
          </span>
        </div>
      </div>
    </div>
  </div>
  <div class="bs-callout bs-callout-danger">
    <b>Note</b>
    <div>
      User : can't create new cms account.<br/>
      Admin : can create new cms account and update cms user account<br/>
      View : only view data, can't create, update entry data.
    </div>
  </div>
</form>
[{if $action.ispopup!=1}]
    </div>
</div>
<div class="space-line"></div>
[{/if}]
