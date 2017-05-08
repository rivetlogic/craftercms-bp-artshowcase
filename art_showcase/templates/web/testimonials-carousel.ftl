<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="carousel-container text-center p-y-3 m-b-3" <@studio.componentAttr path=contentModel.storeUrl /> >
	<div class="carousel" >
    	<#if (contentModel.testimonials.item)?? >
        <#list contentModel.testimonials.item as testimonial>
          <div class="testimonial">
            <h3 class="">${testimonial.testimonial}</h3>  
            <p>- ${testimonial.reviewer}</p>
          </div>
        </#list>
      </#if>
  </div>
</div>
