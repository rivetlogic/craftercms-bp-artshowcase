<div class="container">
  <div class="main_portfolio_content gallery">
    <#list contentModel.gallery.item as art>
      <div class="brick">
        
      </div>
    </#list>
    <div class="image_preload_list">
      <#list contentModel.gallery.item as art>
        <img src="${art.photo}" width='auto'/>
      </#list>
    </div>
  </div>
</div>
