<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="col-md-3 col-xs-12">
    <div class="single_team m-t-2" <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl label="${contentModel.fullName}" /> >
        <div class="team_social_area text-center m-b-1">
            <#list (contentModel.socialLinks.item)![] as social>
                <a href="${social.url}"><i class="fa ${social.network}"></i></a>
            </#list>
        </div>
        <img src="${contentModel.photo_s}" alt="" />
        <div class="single_team_text text-center">
            <h6>${contentModel.fullName}</h6>
            <p>${contentModel.title_t}</p>
        </div>
    </div>
</div>