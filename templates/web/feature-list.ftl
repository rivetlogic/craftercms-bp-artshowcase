<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="container about_content center wow fadeInUp" data-wow-duration="700ms">
  <@crafter.div $field="features" class="row repeating-container">
    <#list (contentModel.features.item)![] as feature>
      <#assign index = feature?index>
      <@crafter.div $field="features" $index=index class="col-md-4" $field="features" $index=index>
        <div class="single_abt single_about ${feature?is_last?then('m-t-3','m-y-3')}">
          <i class="fa">
            <@crafter.img
              $field="features.logo_s"
              $index=index
              src=(feature.logo_s)
            />
          </i>
          <@crafter.h3 $field="features.title_t" $index=index>
            ${feature.title_t}
          </@crafter.h3>
          <@crafter.span $field="features.description_t" $index=index>
            ${feature.description_t!}
          </@crafter.span>
        </div>
      </@crafter.div>
      <#if feature?index%3==2 && !feature?is_last>
        </div>
        <div class="row">
      </#if>
    </#list>
  </@crafter.div>
</div>
