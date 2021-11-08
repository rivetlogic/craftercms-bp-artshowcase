<#import "/templates/system/common/crafter.ftl" as crafter />
<#import "/templates/web/common/macros.ftl" as theme />

<#assign sectionId><@theme.internalNameToID name=contentModel.navigationName_t /></#assign>
<section class="scroll-section" <#if (contentModel.navigationName_t)??>id="${sectionId}"</#if>>
  <#if contentModel.backgroundVideo_s?? && (contentModel.backgroundVideo_s?length>0) >
    <div class="fullscreen-bg">
      <@crafter.video $field="backgroundVideo_s" playsinline="true" autoplay="true" muted="true" loop="true">
        <source src="${contentModel.backgroundVideo_s}" type="video/mp4">
      </@crafter.video>
      <video playsinline autoplay muted loop>
        <source src="${contentModel.backgroundVideo_s}" type="video/mp4">
      </video>
    </div>
    <div class="overlay"></div>
  </#if>
  <div class="container-fluid <#if contentModel.backgroundVideo_s?? && (contentModel.backgroundVideo_s?length>0)>hasVideoBackground</#if>">
    <div class="row">
      <div class="col-md-12 ">
        <div class="main_area p-t-3" >
          <@crafter.renderComponentCollection $field="components_o" $containerAttributes={'class': 'components-container'} />
        </div>
      </div>
    </div>
  </div>
</section>