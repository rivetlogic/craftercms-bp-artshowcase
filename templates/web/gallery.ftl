<#import "/templates/system/common/ice.ftl" as studio />

<div class="container">
  <div class="grid-sizer"></div>
  <#if contentModel.gallery_o?? && contentModel.gallery_o.item??>
    <@studio.tag $field="gallery_o">
      <#list contentModel.gallery_o.item as image>
        <#assign index = image?index>
        <a href="${image.photo_s!""}" data-gallery>
          <@studio.img
            $field="gallery_o.photo_s"
            $index=index
            src=(image.photo_s)
          />
        </a>
      </#list>
    </@studio.tag>
  </#if>
</div>