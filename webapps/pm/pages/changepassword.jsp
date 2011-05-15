<%--
 * jPOS Presentation Manager [http://jpospm.blogspot.com]
 * Copyright (C) 2011 Jeronimo Paoletti [jeronimo.paoletti@gmail.com]
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *--%>
<%@include file="../inc/inc-full.jsp" %>
<pm:page title="titles.add">
    <div id="add" class="boxed">
        <pm:pmtitle entity="${entity}" operation="${ctx.operation}" />
        <pm:operations labels="true" operations="${ctx.map.operations.operations}"/>
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
                            <tr><td colspan="2"><html:errors /></td></tr>
                        </tfoot>
                    </table>
                    <html:submit styleId="${entity.id}_submit">
                        <pm:message key="pm.security.ui.changepsw.submit" />
                    </html:submit>
                </fieldset>
            </form>
        </div>
    </div>
</pm:page>