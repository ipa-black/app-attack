package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.Normalizer;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapNormalizerRegistry;
/* loaded from: classes3.dex */
public class GlobalNormalizerRegistry implements NormalizerRegistry {
    private BootstrapNormalizerRegistry bootstrap;
    private SystemPartition systemPartition;
    private final Map oidToSchema = new HashMap();
    private final Map normalizers = new HashMap();
    private NormalizerRegistryMonitor monitor = new NormalizerRegistryMonitorAdapter();

    public GlobalNormalizerRegistry(SystemPartition systemPartition, BootstrapNormalizerRegistry bootstrapNormalizerRegistry) {
        this.bootstrap = bootstrapNormalizerRegistry;
        if (bootstrapNormalizerRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(NormalizerRegistryMonitor normalizerRegistryMonitor) {
        this.monitor = normalizerRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistry
    public void register(String str, String str2, Normalizer normalizer) throws NamingException {
        if (this.normalizers.containsKey(str2) || this.bootstrap.hasNormalizer(str2)) {
            NamingException namingException = new NamingException(new StringBuffer("Normalizer with OID ").append(str2).append(" already registered!").toString());
            this.monitor.registerFailed(str2, normalizer, namingException);
            throw namingException;
        }
        this.oidToSchema.put(str2, str);
        this.normalizers.put(str2, normalizer);
        this.monitor.registered(str2, normalizer);
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistry
    public Normalizer lookup(String str) throws NamingException {
        if (this.normalizers.containsKey(str)) {
            Normalizer normalizer = (Normalizer) this.normalizers.get(str);
            this.monitor.lookedUp(str, normalizer);
            return normalizer;
        } else if (this.bootstrap.hasNormalizer(str)) {
            Normalizer lookup = this.bootstrap.lookup(str);
            this.monitor.lookedUp(str, lookup);
            return lookup;
        } else {
            NamingException namingException = new NamingException(new StringBuffer("Normalizer not found for OID: ").append(str).toString());
            this.monitor.lookupFailed(str, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistry
    public boolean hasNormalizer(String str) {
        return this.normalizers.containsKey(str) || this.bootstrap.hasNormalizer(str);
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistry
    public String getSchemaName(String str) throws NamingException {
        if (!Character.isDigit(str.charAt(0))) {
            throw new NamingException(new StringBuffer("OID ").append(str).append(" is not a numeric OID").toString());
        }
        if (this.oidToSchema.containsKey(str)) {
            return (String) this.oidToSchema.get(str);
        }
        if (this.bootstrap.hasNormalizer(str)) {
            return this.bootstrap.getSchemaName(str);
        }
        throw new NamingException(new StringBuffer("OID ").append(str).append(" not found in oid to schema name map!").toString());
    }
}
