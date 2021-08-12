<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="container">
  <div class="main_team_content wow fadeInUp">
    <@crafter.div $field="teammates_o" class="row repeating-container">
      <#list (contentModel.teammates_o.item)![] as teammate>
        <#assign index = teammate?index />
        <@crafter.div $field="teammates_o" $index=index class="col-md-3 col-xs-12">
          <@renderComponent component=teammate />
        </@crafter.div>
        <#if teammate?index%4==3 && !teammate?is_last>
          </div>
          <div class="row">
        </#if>
      </#list>
    </@crafter.div>
  </div>
</div>