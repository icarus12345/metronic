<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  [{assign 'f' 0}]
  [{foreach $aCategory 'cat'}]
    <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion" href="#collapse-[{$cat->cat_id}]" aria-expanded="true" aria-controls="collapse-[{$cat->cat_id}]">
        [{$cat->title[$lang]}]
      </h4>
    </div>
    <div id="collapse-[{$cat->cat_id}]" class="panel-collapse collapse [{if $f==0}]in[{/if}]" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
      <ul>
        [{foreach $cat->cat_children 'subcat'}]
        <li><a href='#'>[{$subcat->title[$lang]}]</a></li>
        [{/foreach}]
      </ul> 
      </div>
    </div>
  </div>
  [{assign 'f' $f+1}]
  [{/foreach}]
</div>