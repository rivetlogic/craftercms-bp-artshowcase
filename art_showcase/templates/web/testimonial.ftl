<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="testimonial" <@studio.componentAttr path=contentModel.storeUrl /> >
  <h3 class="">${contentModel.testimonial}</h3>  
  <p>- ${contentModel.reviewer}</p>
</div>