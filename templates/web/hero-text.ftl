<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="container">
  <div class="row">
    <div class="col-md-12 ">
      <div class="main_home text-center wow fadeInUp" data-wow-duration="700ms">
        <@crafter.h1 $field="text">
          ${(contentModel.text!)?html?replace("\n", "<br>")}
        </@crafter.h1>
      </div>
    </div><!-- End of col-md-12 -->
  </div><!-- End of row -->
</div>