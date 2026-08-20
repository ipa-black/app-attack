package org.apache.ldap.server.authn;

import androidx.room.FtsOptions;
import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import org.apache.ldap.common.exception.LdapAuthenticationException;
import org.apache.ldap.common.exception.LdapNameNotFoundException;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.util.ArrayUtils;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.jndi.ProviderNexusAspect;
import org.apache.ldap.server.jndi.ServerContext;
/* loaded from: classes3.dex */
public class SimpleAuthenticator extends AbstractAuthenticator {
    public SimpleAuthenticator() {
        super(FtsOptions.TOKENIZER_SIMPLE);
    }

    @Override // org.apache.ldap.server.authn.AbstractAuthenticator, org.apache.ldap.server.authn.Authenticator
    public LdapPrincipal authenticate(ServerContext serverContext) throws NamingException {
        Object obj;
        Object obj2 = serverContext.getEnvironment().get("java.naming.security.credentials");
        if (obj2 == null) {
            obj2 = ArrayUtils.EMPTY_BYTE_ARRAY;
        } else if (obj2 instanceof String) {
            obj2 = ((String) obj2).getBytes();
        }
        if (!serverContext.getEnvironment().containsKey("java.naming.security.principal")) {
            throw new LdapAuthenticationException();
        }
        String str = (String) serverContext.getEnvironment().get("java.naming.security.principal");
        if (str == null) {
            throw new LdapAuthenticationException();
        }
        LdapName ldapName = new LdapName(str);
        PartitionNexus partitionNexus = getAuthenticatorContext().getPartitionNexus();
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            Attributes lookup = partitionNexus.lookup(ldapName);
            if (lookup == null) {
                throw new LdapNameNotFoundException();
            }
            Attribute attribute = lookup.get("userPassword");
            if (attribute == null) {
                obj = ArrayUtils.EMPTY_BYTE_ARRAY;
            } else {
                obj = attribute.get();
                if (obj instanceof String) {
                    obj = ((String) obj).getBytes();
                }
            }
            if (!ArrayUtils.isEquals(obj2, obj)) {
                throw new LdapAuthenticationException();
            }
            return new LdapPrincipal(ldapName);
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }
}
