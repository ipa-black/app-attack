package org.apache.kerberos.store.operations;

import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.BasicAttribute;
import javax.naming.directory.BasicAttributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.ModificationItem;
import javax.naming.directory.SearchResult;
import javax.security.auth.kerberos.KerberosKey;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.store.ContextOperation;
import org.apache.kerberos.store.KerberosAttribute;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.util.NestableRuntimeException;
/* loaded from: classes5.dex */
public class ChangePassword implements ContextOperation {
    protected KerberosKey newKey;
    protected KerberosPrincipal principal;

    public ChangePassword(KerberosPrincipal kerberosPrincipal, KerberosKey kerberosKey) {
        this.principal = kerberosPrincipal;
        this.newKey = kerberosKey;
    }

    @Override // org.apache.kerberos.store.ContextOperation
    public Object execute(DirContext dirContext, Name name) {
        if (this.principal == null) {
            return null;
        }
        ModificationItem[] modificationItemArr = {new ModificationItem(2, new BasicAttribute("krb5key", this.newKey.getEncoded()))};
        try {
            String search = search(dirContext, name, this.principal.getName());
            dirContext.modifyAttributes(getRelativeName(dirContext, search), modificationItemArr);
            return search;
        } catch (NamingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String search(DirContext dirContext, Name name, String str) throws NamingException {
        SearchResult searchResult;
        String[] strArr = {KerberosAttribute.PRINCIPAL, KerberosAttribute.VERSION, KerberosAttribute.TYPE, KerberosAttribute.KEY};
        BasicAttributes basicAttributes = new BasicAttributes(false);
        basicAttributes.put(new BasicAttribute(KerberosAttribute.PRINCIPAL, str));
        NamingEnumeration search = dirContext.search(name, basicAttributes, strArr);
        if (!search.hasMore() || (searchResult = (SearchResult) search.next()) == null) {
            return null;
        }
        return searchResult.getName();
    }

    private Name getRelativeName(DirContext dirContext, String str) {
        try {
            LdapName ldapName = new LdapName(dirContext.getNameInNamespace());
            LdapName ldapName2 = new LdapName(str);
            if (ldapName2.startsWith(ldapName)) {
                for (int i = 0; i < ldapName.size(); i++) {
                    ldapName2.remove(0);
                }
                return ldapName2;
            }
            throw new IllegalArgumentException("Failed to create initial context for ApacheDS provider");
        } catch (NamingException e2) {
            throw new NestableRuntimeException("Failed to find search base for ApacheDS store", e2);
        }
    }
}
