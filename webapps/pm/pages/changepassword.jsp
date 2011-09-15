<%@include file="../inc/inc-full.jsp" %>
<pm:page title="titles.add">
    <div id="add" class="boxed">
        <pm:std-header ctx="${ctx}" />
        <div class="content">
            <form action=""  method="GET">
                <fieldset>
                    <input type="hidden" value="1" name="finish" />
                    <table id="box-table-a">
                        <tbody id="list_body" >
                            <tr>
                                <th scope="row" width="175px"><bean:message key="chpass.actual" /></th>
                                <td><input type="password" name="actual" id="actual" value=""></td>
                            </tr>
                            <tr>
                                <th scope="row" width="175px"><bean:message key="chpass.newpass" /></th>
                                <td><input type="password" name="newpass" id="newpass" value=""></td>
                            </tr>
                            <tr>
                                <th scope="row" width="175px"><bean:message key="chpass.newrep"/></th>
                                <td><input type="password" name="newrep" id="newrep" value=""></td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr><td colspan="2"><div class="entity_message_container_${entity.id}">&nbsp;</div></td></tr>
                        </tfoot>
                    </table>
                    <html:submit styleId="${entity.id}_submit">
                        <pmfn:message key="pm.security.ui.changepsw.submit" />
                    </html:submit>
                </fieldset>
            </form>
        </div>
    </div>
</pm:page>