<#macro objectToJson object>
    <@compress single_line=true>
    	<#if object?is_node>
           ${object?node_name}=${object} : {
          <#list object?children as child>
          	<@objectToJson object=child />
          </#list>
          }
        <#elseif object?is_hash || object?is_hash_ex>
            <#assign first="true">
        {
            <#list object?keys as key>
                <#if first="false">,</#if>
                <#assign foo = key />
                <#assign value><@objectToJson object=object[key]!"" /></#assign>
            "${key}": ${value?trim}
                <#assign first="false">
            </#list>
        }
        <#elseif object?is_enumerable>
            <#assign first="true">
        [
            <#list object as item>
                <#if first="false">,</#if>
                <#assign value><@objectToJson object=item /></#assign>
            ${value?trim}
                <#assign first="false">
            </#list>
        ]
        <#else>
        "${object?trim}"
        </#if>
    </@compress>
</#macro>