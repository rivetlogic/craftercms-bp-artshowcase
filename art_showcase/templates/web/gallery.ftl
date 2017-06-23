<div class="container">
  <#if contentModel.gallery?? && contentModel.gallery.item??>
      <#list contentModel.gallery.item as image>
          <div class="col-sm-4 wowload fadeInUp">
              <a href="${image.photo!""}" class="gallery-image" data-gallery>
                  <img src="${image.photo!""}" class="img-responsive">
              </a>
          </div>
      </#list>
  </#if>
</div>