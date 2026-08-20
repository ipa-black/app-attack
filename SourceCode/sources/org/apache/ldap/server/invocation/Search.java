package org.apache.ldap.server.invocation;

import java.util.Map;
import javax.naming.Name;
import javax.naming.NamingException;
import javax.naming.directory.SearchControls;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.server.BackingStore;
/* loaded from: classes3.dex */
public class Search extends Invocation {
    private static final long serialVersionUID = 3258410651234678579L;
    private Name baseName;
    private final SearchControls controls;
    private final Map environment;
    private final ExprNode filter;

    public Search(Name name, Map map, ExprNode exprNode, SearchControls searchControls) {
        if (name == null) {
            throw new NullPointerException("baseName");
        }
        if (map == null) {
            throw new NullPointerException("environment");
        }
        if (exprNode == null) {
            throw new NullPointerException("filter");
        }
        if (searchControls == null) {
            throw new NullPointerException("controls");
        }
        this.baseName = name;
        this.environment = map;
        this.filter = exprNode;
        this.controls = searchControls;
    }

    public Name getBaseName() {
        return this.baseName;
    }

    public Map getEnvironment() {
        return this.environment;
    }

    public ExprNode getFilter() {
        return this.filter;
    }

    public SearchControls getControls() {
        return this.controls;
    }

    @Override // org.apache.ldap.server.invocation.Invocation
    protected Object doExecute(BackingStore backingStore) throws NamingException {
        return backingStore.search(this.baseName, this.environment, this.filter, this.controls);
    }

    public void setBaseName(Name name) {
        this.baseName = name;
    }
}
