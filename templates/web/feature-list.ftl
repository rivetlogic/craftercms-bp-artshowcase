<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="container about_content center wow fadeInUp" data-wow-duration="700ms" <@studio.iceAttr iceGroup="features" path=contentModel.storeUrl label="Features" /> >
  <div class="row">
  	<#list (contentModel.features.item)![] as feature>
      <div class="col-md-4">
        <div class="single_abt single_about ${feature?is_last?then('m-t-3','m-y-3')}">
          <i class="fa">
            <img src="${feature.logo}" />
          </i>
          <h3>${feature.title_t}</h3>
          <p>${feature.description!}</p>
        </div>
      </div>
      <#if feature?index%3==2 && !feature?is_last>
  </div>
  <div class="row">
      </#if>
    </#list>
  </div>
</div>
