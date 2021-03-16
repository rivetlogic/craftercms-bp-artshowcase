<#import "/templates/system/common/ice.ftl" as studio />

<div class="container">
  <div class="main_team_content wow fadeInUp">
    <@studio.tag $field="teammates_o" class="row">
      <#list (contentModel.teammates_o.item)![] as teammate>
        <#assign index = teammate?index />
        <@studio.tag $field="teammates_o" $index=index class="col-md-3 col-xs-12">
          <@renderComponent component=teammate />
        </@studio.tag>
        <#if teammate?index%4==3 && !teammate?is_last>
          </div>
          <div class="row">
        </#if>
      </#list>
    </@studio.tag>
  </div>
</div>