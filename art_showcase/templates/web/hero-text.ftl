<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="container">
    <div class="row">
        <div class="col-md-12 ">
            <div class="main_home text-center wow fadeInUp" data-wow-duration="700ms" <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl /> >
                <h1>${(contentModel.text!)?html?replace("\n", "<br>")}</h1>
            </div>
        </div><!-- End of col-md-12 -->
    </div><!-- End of row -->
</div>