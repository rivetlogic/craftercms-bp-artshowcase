<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<div class="container" <@studio.componentAttr path=contentModel.storeUrl /> >
    <div class="main_team_content wow fadeInUp">
        <div class="row">
            <#list contentModel.curators.item as curator>
                <div class="col-md-3 col-xs-12">
                    <div class="single_team m-t-2">
                        <div class="team_social_area text-center m-b-1">
                            <#if curator.facebookURL?? && (curator.facebookURL?length>0)>
                                <a href="${curator.facebookURL}"><i class="fa fa-facebook"></i></a>
                            </#if>
                            <#if curator.googlePlusURL?? && (curator.googlePlusURL?length>0)>
                                <a href="${curator.googlePlusURL}"><i class="fa fa-google-plus"></i></a>
                            </#if>
                        </div>
                        <img src="${curator.photo}" alt="" />
                        <div class="single_team_text text-center">
                            <h6>${curator.fullName}</h6>
                            <p>${curator.title}</p>
                        </div>
                    </div>
                </div>
                <#if curator?index%4==3 && !curator?is_last>
        </div>
        <div class="row">
                </#if>
            </#list>
        </div>
    </div>
</div>