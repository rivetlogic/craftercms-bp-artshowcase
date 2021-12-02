<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="carousel-container text-center p-y-3 m-b-3">

  <@crafter.renderRepeatGroup
    $field="testimonials_o"
    $containerTag="div"
    $containerAttributes={'class': 'carousel owl-carousel'}
    $itemTag="div"
    $itemAttributes={'class': 'testimonial'};
    testimonial, index
  >
    <@crafter.h3 $field="testimonials_o.testimonial_t" $index=index>
      ${testimonial.testimonial_t}
    </@crafter.h3>
    <p>
      -
      <@crafter.span $field="testimonials_o.reviewer_t" $index=index>
        ${testimonial.reviewer_t}
      </@crafter.span>
    </p>

  </@crafter.renderRepeatGroup>
</div>
