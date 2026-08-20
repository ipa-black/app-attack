package org.apache.ldap.server.schema.bootstrap;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.server.schema.ComparatorRegistry;
import org.apache.ldap.server.schema.ComparatorRegistryMonitor;
import org.apache.ldap.server.schema.ComparatorRegistryMonitorAdapter;
import org.apache.ldap.server.schema.SerializableComparator;
/* loaded from: classes3.dex */
public class BootstrapComparatorRegistry implements ComparatorRegistry {
    private final Map oidToSchema = new HashMap();
    private final Map comparators = new HashMap();
    private ComparatorRegistryMonitor monitor = new ComparatorRegistryMonitorAdapter();

    public BootstrapComparatorRegistry() {
        SerializableComparator.setRegistry(this);
    }

    public void setMonitor(ComparatorRegistryMonitor comparatorRegistryMonitor) {
        this.monitor = comparatorRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.ComparatorRegistry
    public void register(String str, String str2, Comparator comparator) throws NamingException {
        if (this.comparators.containsKey(str2)) {
            NamingException namingException = new NamingException(new StringBuffer("Comparator with OID ").append(str2).append(" already registered!").toString());
            this.monitor.registerFailed(str2, comparator, namingException);
            throw namingException;
        }
        this.oidToSchema.put(str2, str);
        this.comparators.put(str2, comparator);
        this.monitor.registered(str2, comparator);
    }

    @Override // org.apache.ldap.server.schema.ComparatorRegistry
    public Comparator lookup(String str) throws NamingException {
        if (this.comparators.containsKey(str)) {
            Comparator comparator = (Comparator) this.comparators.get(str);
            this.monitor.lookedUp(str, comparator);
            return comparator;
        }
        NamingException namingException = new NamingException(new StringBuffer("Comparator not found for OID: ").append(str).toString());
        this.monitor.lookupFailed(str, namingException);
        throw namingException;
    }

    @Override // org.apache.ldap.server.schema.ComparatorRegistry
    public boolean hasComparator(String str) {
        return this.comparators.containsKey(str);
    }

    @Override // org.apache.ldap.server.schema.ComparatorRegistry
    public String getSchemaName(String str) throws NamingException {
        if (!Character.isDigit(str.charAt(0))) {
            throw new NamingException(new StringBuffer("OID ").append(str).append(" is not a numeric OID").toString());
        }
        if (this.oidToSchema.containsKey(str)) {
            return (String) this.oidToSchema.get(str);
        }
        throw new NamingException(new StringBuffer("OID ").append(str).append(" not found in oid to schema name map!").toString());
    }
}
