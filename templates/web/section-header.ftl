<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="container">
  <div class="head_title m-y-3  wow fadeInUp">
    <div class="row" <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl label="Header" /> >
      <div class="col-md-4">
        <h2>${contentModel.title!}</h2>
      </div>
      <div class="col-md-8">
        <h6>${contentModel.description!}</h6>
        <#if contentModel.additional?? >
          <p>${contentModel.additional}</p>
        </#if>
      </div>
    </div>
  </div>
</div>