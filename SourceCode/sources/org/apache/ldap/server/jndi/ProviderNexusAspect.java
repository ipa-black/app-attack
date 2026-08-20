package org.apache.ldap.server.jndi;

import java.util.EmptyStackException;
import java.util.Stack;
import javax.naming.Context;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.server.invocation.Invocation;
import org.aspectj.lang.NoAspectBoundException;
/* compiled from: ProviderNexusAspect.aj */
/* loaded from: classes3.dex */
public class ProviderNexusAspect {
    private static Throwable ajc$initFailureCause;
    public static final ProviderNexusAspect ajc$perSingletonInstance = null;

    public static LdapContext ajc$interMethodDispatch1$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$pop() {
        return JndiProvider.ajc$interMethodDispatch2$org_apache_ldap_server_jndi_ProviderNexusAspect$pop();
    }

    private static void ajc$postClinit() {
        ajc$perSingletonInstance = new ProviderNexusAspect();
    }

    public static ProviderNexusAspect aspectOf() {
        ProviderNexusAspect providerNexusAspect = ajc$perSingletonInstance;
        if (providerNexusAspect != null) {
            return providerNexusAspect;
        }
        throw new NoAspectBoundException("org_apache_ldap_server_jndi_ProviderNexusAspect", ajc$initFailureCause);
    }

    public static boolean hasAspect() {
        return ajc$perSingletonInstance != null;
    }

    static {
        try {
            ajc$postClinit();
        } catch (Throwable th) {
            ajc$initFailureCause = th;
        }
    }

    public static void ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$push(LdapContext ldapContext) {
        Stack stack = (Stack) JndiProvider.ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks.get();
        if (stack == null) {
            stack = new Stack();
            JndiProvider.ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks.set(stack);
        }
        stack.push(ldapContext);
    }

    public static LdapContext ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$pop() {
        Stack stack = (Stack) JndiProvider.ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks.get();
        if (stack == null) {
            throw new EmptyStackException();
        }
        return (LdapContext) stack.pop();
    }

    public static LdapContext ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$peek() {
        Stack stack = (Stack) JndiProvider.ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks.get();
        if (stack == null) {
            throw new EmptyStackException();
        }
        return (LdapContext) stack.peek();
    }

    private static Stack getContextStack() {
        Stack stack = (Stack) JndiProvider.ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks.get();
        if (stack == null) {
            return null;
        }
        return (Stack) stack.clone();
    }

    public void ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Context context) {
        JndiProvider.ajc$interMethodDispatch2$org_apache_ldap_server_jndi_ProviderNexusAspect$push((LdapContext) context);
    }

    public void ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Context context) {
        ajc$interMethodDispatch1$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$pop();
    }

    public void ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$3$3f85eec1(Invocation invocation) {
        invocation.setContextStack(getContextStack());
    }
}
