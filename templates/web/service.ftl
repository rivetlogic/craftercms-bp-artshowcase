<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="single_service_area m-t-3 p-t-2">
    <div class="row image-${contentModel.imagePosition_s}">
        <div class="col-md-6 no-padding">
            <div class="single_service_left text-sm-center wow fadeInleft">
                <img src="${contentModel.image_s}" alt="" />
            </div>
        </div>
        <div class="col-md-5">
            <div class="single_service p-r-1 wow fadeInUp">
                <h2 class="m-b-2">${contentModel.title_t}</h2>
                ${contentModel.description_t}
            </div>
        </div>
    </div>
</div><!-- End of single service area -->
