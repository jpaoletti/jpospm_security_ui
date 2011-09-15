<%@include file="../inc/inc-full.jsp" %>
<pm:page title="titles.add">
    <div id="add" class="boxed">
        <pm:std-header ctx="${ctx}" />
        <div class="content">
            <pmfn:message key="pm.security.ui.generatedpsw.user" arg0="${ctx.map.username}" /><br/>
            <pmfn:message key="pm.security.ui.generatedpsw.psw" arg0="${ctx.map.generatedpsw}" />
        </div>
    </div>
</pm:page>

