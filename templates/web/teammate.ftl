<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="col-md-3 col-xs-12">
    <div class="single_team m-t-2" <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl label="${contentModel.fullName_t}" /> >
        <div class="team_social_area text-center m-b-1">
            <#list (contentModel.socialLinks_o.item)![] as social>
                <a href="${social.url_s}"><i class="fa ${social.network_s}"></i></a>
            </#list>
        </div>
        <img src="${contentModel.photo_s}" alt="" />
        <div class="single_team_text text-center">
            <h6>${contentModel.fullName_t}</h6>
            <p>${contentModel.title_t}</p>
        </div>
    </div>
</div>