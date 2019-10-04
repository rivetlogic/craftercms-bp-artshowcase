<div class="container">
    <div class="grid-sizer"></div>
    <#if contentModel.gallery_o?? && contentModel.gallery_o.item??>
        <#list contentModel.gallery_o.item as image>
        <a href="${image.photo_s!""}" data-gallery>
            <img src="${image.photo_s!""}">
        </a>
        </#list>
    </#if>
</div>