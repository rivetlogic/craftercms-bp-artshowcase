<#import "/templates/system/common/ice.ftl" as studio/>

<div class="container">
  <div class="head_title m-y-3  wow fadeInUp">
    <div class="row">
      <div class="col-md-4">
        <@studio.h2 $field="title_t">
          ${contentModel.title_t!}
        </@studio.h2>
      </div>
      <div class="col-md-8">
        <@studio.h6 $field="description_t">
          ${contentModel.description_t!}
        </@studio.h6>
        <#if contentModel.additional_html?? >
          <@studio.tag $field="additional_html">
            ${contentModel.additional_html}
          </@studio.tag>
        </#if>
      </div>
    </div>
  </div>
</div>