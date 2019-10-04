<div class="container">
    <div class="grid-sizer"></div>
    <#if contentModel.gallery_o?? && contentModel.gallery_o.item??>
        <#list contentModel.gallery_o.item as image>
        <a href="${image.photo!""}" data-gallery>
            <img src="${image.photo!""}">
        </a>
        </#list>
    </#if>
</div>