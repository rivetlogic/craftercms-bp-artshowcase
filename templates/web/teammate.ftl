<#import "/templates/system/common/ice.ftl" as studio/>

<@studio.componentRootTag $tag="div" class="col-md-3 col-xs-12">
  <div class="single_team m-t-2">
    <div class="team_social_area text-center m-b-1">
      <#list (contentModel.socialLinks_o.item)![] as social>
        <a href="${social.url_s}">
          <i class="fa ${social.network_s}"></i>
        </a>
      </#list>
    </div>
    <@studio.img
      $field="photo_s"
      src=(contentModel.photo_s)
    />
    <div class="single_team_text text-center">
      <@studio.h6 $field="fullName_t">
        ${contentModel.fullName_t}
      </@studio.h6>
      <@studio.p $field="title_t">
        ${contentModel.title_t}
      </@studio.p>
    </div>
  </div>
</@studio.componentRootTag>