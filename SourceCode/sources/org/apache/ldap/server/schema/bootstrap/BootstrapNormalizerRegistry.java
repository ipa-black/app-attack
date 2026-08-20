package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.Normalizer;
import org.apache.ldap.server.schema.NormalizerRegistry;
import org.apache.ldap.server.schema.NormalizerRegistryMonitor;
import org.apache.ldap.server.schema.NormalizerRegistryMonitorAdapter;
/* loaded from: classes3.dex */
public class BootstrapNormalizerRegistry implements NormalizerRegistry {
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private NormalizerRegistryMonitor monitor = new NormalizerRegistryMonitorAdapter();

    public void setMonitor(NormalizerRegistryMonitor normalizerRegistryMonitor) {
        this.monitor = normalizerRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistry
    public void register(String str, String str2, Normalizer normalizer) throws NamingException {
        if (this.byOid.containsKey(str2)) {
            NamingException namingException = new NamingException(new StringBuffer("Normalizer already registered for OID ").append(str2).toString());
            this.monitor.registerFailed(str2, normalizer, namingException);
            throw namingException;
        }
        this.oidToSchema.put(str2, str);
        this.byOid.put(str2, normalizer);
        this.monitor.registered(str2, normalizer);
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistry
    public Normalizer lookup(String str) throws NamingException {
        if (!this.byOid.containsKey(str)) {
            NamingException namingException = new NamingException(new StringBuffer("Normalizer for OID ").append(str).append(" does not exist!").toString());
            this.monitor.lookupFailed(str, namingException);
            throw namingException;
        }
        Normalizer normalizer = (Normalizer) this.byOid.get(str);
        this.monitor.lookedUp(str, normalizer);
        return normalizer;
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistry
    public boolean hasNormalizer(String str) {
        return this.byOid.containsKey(str);
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistry
    public String getSchemaName(String str) throws NamingException {
        if (Character.isDigit(str.charAt(0))) {
            throw new NamingException("Looks like the arg is not a numeric OID");
        }
        if (this.oidToSchema.containsKey(str)) {
            return (String) this.oidToSchema.get(str);
        }
        throw new NamingException(new StringBuffer("OID ").append(str).append(" not found in oid to schema name map!").toString());
    }
}
