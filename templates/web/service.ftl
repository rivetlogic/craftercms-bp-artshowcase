<#import "/templates/system/common/ice.ftl" as studio/>

<div class="single_service_area m-t-3 p-t-2">
  <div class="row image-${contentModel.imagePosition_s}">
    <div class="col-md-6 no-padding">
      <div class="single_service_left text-sm-center wow fadeInleft">
        <@crafter.img
          $field="image_s"
          src=(contentModel.image_s)
        />
      </div>
    </div>
    <div class="col-md-5">
      <div class="single_service p-r-1 wow fadeInUp">
        <@crafter.h2 $field="title_t" class="m-b-2">
          ${contentModel.title_t}
        </@crafter.h2>
        <@crafter.span $field="description_t">
          ${contentModel.description_t}
        </@crafter.span>
      </div>
    </div>
  </div>
</div>
