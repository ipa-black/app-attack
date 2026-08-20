package org.apache.kerberos.store.operations;

import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.BasicAttribute;
import javax.naming.directory.BasicAttributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.SearchResult;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.SamType;
import org.apache.kerberos.store.ContextOperation;
import org.apache.kerberos.store.KerberosAttribute;
import org.apache.kerberos.store.PrincipalStoreEntry;
import org.apache.kerberos.store.PrincipalStoreEntryModifier;
/* loaded from: classes5.dex */
public class GetPrincipal implements ContextOperation {
    private final KerberosPrincipal principal;

    public GetPrincipal(KerberosPrincipal kerberosPrincipal) {
        this.principal = kerberosPrincipal;
    }

    protected KerberosPrincipal getPrincipal() {
        return this.principal;
    }

    @Override // org.apache.kerberos.store.ContextOperation
    public Object execute(DirContext dirContext, Name name) {
        Attributes attributes;
        if (this.principal == null) {
            return null;
        }
        String[] strArr = {KerberosAttribute.PRINCIPAL, KerberosAttribute.VERSION, KerberosAttribute.TYPE, KerberosAttribute.KEY};
        BasicAttributes basicAttributes = new BasicAttributes(false);
        basicAttributes.put(new BasicAttribute(KerberosAttribute.PRINCIPAL, this.principal.getName()));
        try {
            NamingEnumeration search = dirContext.search(name, basicAttributes, strArr);
            if (!search.hasMore() || (attributes = ((SearchResult) search.next()).getAttributes()) == null) {
                return null;
            }
            return getEntry(attributes);
        } catch (NamingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private PrincipalStoreEntry getEntry(Attributes attributes) throws NamingException {
        PrincipalStoreEntryModifier principalStoreEntryModifier = new PrincipalStoreEntryModifier();
        String str = (String) attributes.get(KerberosAttribute.PRINCIPAL).get();
        String str2 = (String) attributes.get(KerberosAttribute.TYPE).get();
        String str3 = (String) attributes.get(KerberosAttribute.VERSION).get();
        if (attributes.get("apacheSamType") != null) {
            principalStoreEntryModifier.setSamType(SamType.getTypeByOrdinal(Integer.parseInt((String) attributes.get("apacheSamType").get())));
        }
        principalStoreEntryModifier.setPrincipal(new KerberosPrincipal(str));
        principalStoreEntryModifier.setEncryptionType(Integer.parseInt(str2));
        principalStoreEntryModifier.setKeyVersionNumber(Integer.parseInt(str3));
        principalStoreEntryModifier.setKey((byte[]) attributes.get(KerberosAttribute.KEY).get());
        return principalStoreEntryModifier.getEntry();
    }
}
