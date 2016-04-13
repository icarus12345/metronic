<div style="display:none">
    <div id='contextMenu' class="jqx-contextMenu">
        <ul>
            <li data-action="add" id="jqxAddAction"><i class="fa fa-plus"></i> Add</li>
            <li data-action="edit" id="jqxEditAction"><i class="fa fa-pencil-square"></i> Edit</li>
            <!-- <li data-action="price" id="jqxPriceAction"><i class="fa fa-dollar"></i> Prices</li> -->
            <li data-action="status" id="jqxStatusAction">
                <i class="fa fa-toggle-off"></i> Status
                <ul>
                    <li data-action="statuson" id="jqxStatusActionOn"><i class="fa fa-check-square-o"></i> Enable</li>
                    <li data-action="statusoff" id="jqxStatusActionOff"><i class="fa fa-square-o"></i> Disable</li>
                </ul>
            </li>
            [{if $smarty.session.auth.user->ause_authority=='Administrator'}]
            <li data-action="lock" id="jqxLockAction">
                <i class="fa fa-lock"></i> Lock Entry
                <ul>
                    <li data-action="lockon" id="jqxLockActionOn"><i class="fa fa-lock"></i> Lock</li>
                    <li data-action="lockoff" id="jqxLockActionOff"><i class="fa fa-unlock-alt"></i> Unlock</li>
                </ul>
            </li>
            [{/if}]
            <li data-action="delete" id="jqxDeleteAction"><i class="fa fa-trash-o"></i> Delete</li>
            <li data-action="view" id="jqxViewAction"><i class="fa fa-eye"></i> View</li>
            <li data-action="chart" id="jqxChartAction"><i class="fa fa-line-chart"></i> Chart</li>
        </ul>
    </div>
</div>