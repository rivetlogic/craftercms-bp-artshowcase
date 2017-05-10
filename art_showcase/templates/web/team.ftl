<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="container">
    <div class="main_team_content wow fadeInUp">
        <div class="row">
            <#list (contentModel.teammates.item)![] as teammate>
                <@renderComponent component=teammate />
                <#if teammate?index%4==3 && !teammate?is_last>
        </div>
        <div class="row">
                </#if>
            </#list>
        </div>
    </div>
</div>