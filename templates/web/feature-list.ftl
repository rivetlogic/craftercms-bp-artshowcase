<#import "/templates/system/common/ice.ftl" as studio/>

<div class="container about_content center wow fadeInUp" data-wow-duration="700ms">
  <@studio.tag $field="features" class="row">
    <#list (contentModel.features.item)![] as feature>
      <#assign index = feature?index>
      <@studio.tag $field="features" $index=index class="col-md-4" $field="features" $index=index>
        <div class="single_abt single_about ${feature?is_last?then('m-t-3','m-y-3')}">
          <i class="fa">
            <@studio.img
              $field="features.logo_s"
              $index=index
              src=(feature.logo_s)
            />
          </i>
          <@studio.h3 $field="features.title_t" $index=index>
            ${feature.title_t}
          </@studio.h3>
          <@studio.span $field="features.description_t" $index=index>
            ${feature.description_t!}
          </@studio.span>
        </div>
      </@studio.tag>
      <#if feature?index%3==2 && !feature?is_last>
        </div>
        <div class="row">
      </#if>
    </#list>
  </@studio.tag>
</div>
