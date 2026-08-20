package org.apache.ldap.server.invocation;

import java.io.Serializable;
import java.util.Stack;
import javax.naming.NamingException;
import org.apache.ldap.server.BackingStore;
import org.apache.ldap.server.jndi.ProviderNexusAspect;
/* loaded from: classes3.dex */
public abstract class Invocation implements Serializable {
    protected transient Stack contextStack;
    protected transient Object returnValue;

    protected abstract Object doExecute(BackingStore backingStore) throws NamingException;

    /* JADX INFO: Access modifiers changed from: protected */
    public Invocation() {
        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$3$3f85eec1(this);
    }

    public Object getReturnValue() {
        return this.returnValue;
    }

    public void setReturnValue(Object obj) {
        this.returnValue = obj;
    }

    public Stack getContextStack() {
        return this.contextStack;
    }

    public void setContextStack(Stack stack) {
        this.contextStack = stack;
    }

    public void execute(BackingStore backingStore) throws NamingException {
        setReturnValue(doExecute(backingStore));
    }
}
