<div class="container">
    <div class="grid-sizer"></div>
    <#if contentModel.gallery?? && contentModel.gallery.item??>
        <#list contentModel.gallery.item as image>
        <a href="${image.photo!""}" data-gallery>
            <img src="${image.photo!""}">
        </a>
        </#list>
    </#if>
</div>