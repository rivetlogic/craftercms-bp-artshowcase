<#import "/templates/system/common/ice.ftl" as studio/>

<div class="carousel-container text-center p-y-3 m-b-3">

  <@studio.renderRepeatCollection
    $field="testimonials_o"
    $containerTag="div"
    $containerAttributes={'class': 'carousel owl-carousel'}
    $itemTag="div"
    $itemAttributes={'class': 'testimonial'};
    testimonial, index
  >
    <@studio.h3 $field="testimonials_o.testimonial_t" $index=index>
      ${testimonial.testimonial_t}
    </@studio.h3>
    <p>
      -
      <@studio.span $field="testimonials_o.reviewer_t" $index=index>
        ${testimonial.reviewer_t}
      </@studio.span>
    </p>

  </@studio.renderRepeatCollection>
</div>
