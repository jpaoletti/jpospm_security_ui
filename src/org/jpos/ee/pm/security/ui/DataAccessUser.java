/*
 * jPOS Presentation Manager [http://jpospm.blogspot.com]
 * Copyright (C) 2010 Jeronimo Paoletti [jeronimo.paoletti@gmail.com]
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
 */
package org.jpos.ee.pm.security.ui;

import java.util.List;
import org.jpos.ee.pm.core.DataAccess;
import org.jpos.ee.pm.core.Entity;
import org.jpos.ee.pm.core.EntityFilter;
import org.jpos.ee.pm.core.ListSort;
import org.jpos.ee.pm.core.PMContext;
import org.jpos.ee.pm.core.PMException;
import org.jpos.ee.pm.security.core.PMSecurityConnector;
import org.jpos.ee.pm.security.core.PMSecurityService;
import org.jpos.ee.pm.security.core.PMSecurityUser;

public class DataAccessUser implements DataAccess {

    private Entity entity;

    @Override
    public void delete(PMContext ctx, Object object) throws PMException {
        PMSecurityUser instance = (PMSecurityUser) object;
        getConnector(ctx).removeUser(instance);
    }

    @Override
    public Object refresh(PMContext ctx, Object o) throws PMException {
        if (o != null) {
            PMSecurityUser instance = (PMSecurityUser) o;
            return getItem(ctx, "", instance.getUsername());
        } else {
            return null;
        }
    }

    @Override
    public Object getItem(PMContext ctx, String property, String value) throws PMException {
        return getConnector(ctx).getUser(value);
    }

    private PMSecurityConnector getConnector(PMContext ctx) {
        return PMSecurityService.getService().getConnector(ctx);
    }

    @Override
    public List<?> list(PMContext ctx, EntityFilter filter, ListSort sort, Integer from, Integer count) throws PMException {
        List<PMSecurityUser> list = getConnector(ctx).getUsers();
        Integer f = (from == null) ? 0 : from;
        Integer t = (count == null) ? list.size() : (from + count > list.size() ? list.size() : from + count);
        return list.subList(f, t);
    }

    @Override
    public void update(PMContext ctx, Object instance) throws PMException {
        getConnector(ctx).updateUser((PMSecurityUser) instance);
    }

    @Override
    public void add(PMContext ctx, Object instance) throws PMException {
        getConnector(ctx).addUser((PMSecurityUser) instance);

    }

    @Override
    public Long count(PMContext ctx) throws PMException {
        return new Long(list(ctx, null, null, null, null).size());
    }

    @Override
    public EntityFilter createFilter(PMContext ctx) throws PMException {
        return new EntityFilter();
    }

    @Override
    public void setEntity(Entity entity) {
        this.entity = entity;
    }

    @Override
    public Entity getEntity() {
        return entity;
    }
}
