<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="carousel-container text-center p-y-3 m-b-3" <@studio.componentAttr path=contentModel.storeUrl /> >
	<div class="carousel" <@studio.componentContainerAttr target="components" objectId=model.objectId /> >
    	<#if (contentModel.components.item)?? >
        <#list contentModel.components.item as module>
          <@renderComponent component=module />
        </#list>
      </#if>
  </div>
</div>
