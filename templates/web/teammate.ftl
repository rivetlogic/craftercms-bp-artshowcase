<#import "/templates/system/common/ice.ftl" as studio/>

<div class="single_team m-t-2">
  <div class="team_social_area text-center m-b-1">
    <#list (contentModel.socialLinks_o.item)![] as social>
      <a href="${social.url_s}">
        <i class="fa ${social.network_s}"></i>
      </a>
    </#list>
  </div>
  <@crafter.img
    $field="photo_s"
    src=(contentModel.photo_s)
  />
  <div class="single_team_text text-center">
    <@crafter.h6 $field="fullName_t">
      ${contentModel.fullName_t}
    </@crafter.h6>
    <@crafter.p $field="title_t">
      ${contentModel.title_t}
    </@crafter.p>
  </div>
</div>