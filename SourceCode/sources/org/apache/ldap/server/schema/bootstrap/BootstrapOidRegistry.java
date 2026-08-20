package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.naming.NamingException;
import org.apache.ldap.server.schema.OidRegistry;
import org.apache.ldap.server.schema.OidRegistryMonitor;
import org.apache.ldap.server.schema.OidRegistryMonitorAdapter;
/* loaded from: classes3.dex */
public class BootstrapOidRegistry implements OidRegistry {
    private Hashtable byOid = new Hashtable();
    private Hashtable byName = new Hashtable();
    private OidRegistryMonitor monitor = new OidRegistryMonitorAdapter();

    @Override // org.apache.ldap.server.schema.OidRegistry
    public String getOid(String str) throws NamingException {
        if (str == null) {
            throw new NamingException("name should not be null");
        }
        if (Character.isDigit(str.charAt(0))) {
            this.monitor.getOidWithOid(str);
            return str;
        } else if (this.byName.containsKey(str)) {
            String str2 = (String) this.byName.get(str);
            this.monitor.oidResolved(str, str2);
            return str2;
        } else {
            String lowerCase = str.trim().toLowerCase();
            if (!str.equals(lowerCase) && this.byName.containsKey(lowerCase)) {
                String str3 = (String) this.byName.get(lowerCase);
                this.monitor.oidResolved(str, lowerCase, str3);
                this.byName.put(str, str3);
                return str3;
            }
            NamingException namingException = new NamingException(new StringBuffer("OID for name '").append(str).append("' was not found within the OID registry").toString());
            this.monitor.oidResolutionFailed(str, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.OidRegistry
    public boolean hasOid(String str) {
        return this.byName.containsKey(str) || this.byOid.containsKey(str);
    }

    @Override // org.apache.ldap.server.schema.OidRegistry
    public String getPrimaryName(String str) throws NamingException {
        Object obj = this.byOid.get(str);
        if (obj == null) {
            NamingException namingException = new NamingException(new StringBuffer("OID '").append(str).append("' was not found within the OID registry").toString());
            this.monitor.oidDoesNotExist(str, namingException);
            throw namingException;
        } else if (obj instanceof String) {
            String str2 = (String) obj;
            this.monitor.nameResolved(str, str2);
            return str2;
        } else {
            String str3 = (String) ((List) obj).get(0);
            this.monitor.nameResolved(str, str3);
            return str3;
        }
    }

    @Override // org.apache.ldap.server.schema.OidRegistry
    public List getNameSet(String str) throws NamingException {
        Object obj = this.byOid.get(str);
        if (obj == null) {
            NamingException namingException = new NamingException(new StringBuffer("OID '").append(str).append("' was not found within the OID registry").toString());
            this.monitor.oidDoesNotExist(str, namingException);
            throw namingException;
        } else if (obj instanceof String) {
            List singletonList = Collections.singletonList(obj);
            this.monitor.namesResolved(str, singletonList);
            return singletonList;
        } else {
            List list = (List) obj;
            this.monitor.namesResolved(str, list);
            return list;
        }
    }

    @Override // org.apache.ldap.server.schema.OidRegistry
    public Iterator list() {
        return Collections.unmodifiableSet(this.byOid.keySet()).iterator();
    }

    @Override // org.apache.ldap.server.schema.OidRegistry
    public void register(String str, String str2) {
        Object obj;
        if (!Character.isDigit(str2.charAt(0))) {
            throw new RuntimeException("Swap the parameter order: the oid does not start with a digit!");
        }
        String lowerCase = str.toLowerCase();
        if (!lowerCase.equals(str)) {
            this.byName.put(lowerCase, str2);
        }
        this.byName.put(str, str2);
        this.byName.put(str2, str2);
        if (this.byOid.containsKey(str2)) {
            obj = this.byOid.get(str2);
            if (obj instanceof String) {
                if (((String) obj).equalsIgnoreCase(str)) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(obj);
                obj = arrayList;
            } else if (obj instanceof ArrayList) {
                ArrayList arrayList2 = (ArrayList) obj;
                for (int i = 0; i < arrayList2.size(); i++) {
                    if (!str.equalsIgnoreCase((String) arrayList2.get(i))) {
                        return;
                    }
                }
                arrayList2.add(str);
            }
        } else {
            obj = str;
        }
        this.byOid.put(str2, obj);
        this.monitor.registered(str, str2);
    }

    OidRegistryMonitor getMonitor() {
        return this.monitor;
    }

    void setMonitor(OidRegistryMonitor oidRegistryMonitor) {
        this.monitor = oidRegistryMonitor;
    }
}
