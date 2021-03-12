<#import "/templates/system/common/ice.ftl" as studio/>

<@studio.componentRootTag $tag="div" class="container about_content center wow fadeInUp" $attrs={'data-wow-duration': '700ms'}>
  <div class="row">
    <#list (contentModel.features.item)![] as feature>
      <#assign index = feature?index>
      <div class="col-md-4" $field="features" $index=index>
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
      </div>
        <#if feature?index%3==2 && !feature?is_last>
          </div>
          <div class="row">
        </#if>
    </#list>
  </div>
</@studio.componentRootTag>
