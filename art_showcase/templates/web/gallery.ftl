<div class="container">
  <div class="main_portfolio_content gallery">
    <#list contentModel.gallery.item as art>
      <div class="brick">
        <a href="${art.photo}" class="gallery-img"><img src="${art.photo}" width='auto'/></a>
      </div>
    </#list>
  </div>
</div>