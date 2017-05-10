<#import "/templates/system/common/cstudio-support.ftl" as studio/>
<#import "/templates/web/common/macros.ftl" as theme />

<#assign sectionId><@theme.internalNameToID name=contentModel.navigationName /></#assign>
<section class="scroll-section" <#if (contentModel.navigationName)??>id="${sectionId}"</#if> <@studio.componentAttr path=contentModel.storeUrl /> >
  <#if contentModel.backgroundVideo?? && (contentModel.backgroundVideo?length>0) >
    <div class="fullscreen-bg">
        <video loop muted autoplay>
            <source src="${contentModel.backgroundVideo}" type="video/mp4">
        </video>
    </div>
    <div class="overlay"></div>
  </#if>
  <div class="container-fluid <#if contentModel.backgroundVideo?? && (contentModel.backgroundVideo?length>0)>hasVideoBackground</#if>">
    <div class="row">
      <div class="col-md-12 ">
        <div class="main_area p-t-3" >
          <#if (contentModel.components.item)?? >
            <#list contentModel.components.item as module>
              <@renderComponent component=module />
            </#list>
          </#if>
        </div>
      </div>
    </div>
  </div>
</section>