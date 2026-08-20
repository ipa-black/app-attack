package org.apache.kerberos.kdc;

import com.appodeal.ads.modules.common.internal.Constants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Properties;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.store.KerberosAttribute;
/* loaded from: classes5.dex */
public class KdcConfiguration {
    private static final int BUFFER_SIZE = 1024;
    private static final int CHANGEPW_PORT = 464;
    private static final String DEFAULTS = "kerberos.properties";
    private static final int DEFAULT_PORT = 88;
    private static final String KDC_PRIMARY_REALM = "kdc.primary.realm";
    private static final String KDC_PRINCIPAL = "kdc.principal";
    private static final int MINUTE = 60000;
    private EncryptionType[] _encryptionTypes;
    private final Properties properties;

    public KdcConfiguration() {
        this.properties = new Properties();
        loadDefaults();
        prepareEncryptionTypes();
    }

    public KdcConfiguration(Properties properties) {
        Properties properties2 = new Properties();
        this.properties = properties2;
        loadDefaults();
        properties2.putAll(properties);
        prepareEncryptionTypes();
    }

    private void loadDefaults() {
        try {
            this.properties.load(getClass().getResourceAsStream(DEFAULTS));
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public String getPrimaryRealm() {
        return (String) this.properties.get(KDC_PRIMARY_REALM);
    }

    public KerberosPrincipal getKdcPrincipal() {
        return new KerberosPrincipal((String) this.properties.get(KDC_PRINCIPAL));
    }

    public String getKerberosKeysLocation() {
        return (String) this.properties.get("kdc.keys.location");
    }

    public EncryptionType[] getEncryptionTypes() {
        return this._encryptionTypes;
    }

    public Hashtable getProperties() {
        this.properties.put("java.naming.ldap.attributes.binary", KerberosAttribute.KEY);
        return this.properties;
    }

    public long getClockSkew() {
        if (this.properties.containsKey("kdc.allowable.clockskew")) {
            return Long.parseLong((String) this.properties.get("kdc.allowable.clockskew")) * 60000;
        }
        return 300000L;
    }

    public long getMaximumTicketLifetime() {
        return this.properties.containsKey("tgs.maximum.ticket.lifetime") ? Long.parseLong((String) this.properties.get("tgs.maximum.ticket.lifetime")) * 60000 : Constants.MILLIS_IN_DAY;
    }

    public long getMaximumRenewableLifetime() {
        if (this.properties.containsKey("tgs.maximum.renewable.lifetime")) {
            return Long.parseLong((String) this.properties.get("tgs.maximum.renewable.lifetime")) * 60000;
        }
        return 604800000L;
    }

    public int getDefaultPort() {
        if (this.properties.containsKey(org.apache.kerberos.service.KdcConfiguration.KERBEROS_PORT_KEY)) {
            return Integer.parseInt((String) this.properties.get(org.apache.kerberos.service.KdcConfiguration.KERBEROS_PORT_KEY));
        }
        return 88;
    }

    public int getBufferSize() {
        if (this.properties.containsKey("kdc.buffer.size")) {
            return Integer.parseInt((String) this.properties.get("kdc.buffer.size"));
        }
        return 1024;
    }

    public boolean isPaEncTimestampRequired() {
        if (this.properties.containsKey("kdc.pa.enc.timestamp.required")) {
            return "true".equalsIgnoreCase((String) this.properties.get("kdc.pa.enc.timestamp.required"));
        }
        return true;
    }

    public boolean isEmptyAddressesAllowed() {
        if (this.properties.containsKey("tgs.empty.addresses.allowed")) {
            return "true".equalsIgnoreCase((String) this.properties.get("tgs.empty.addresses.allowed"));
        }
        return true;
    }

    public boolean isForwardableAllowed() {
        if (this.properties.containsKey("tgs.forwardable.allowed")) {
            return "true".equalsIgnoreCase((String) this.properties.get("tgs.forwardable.allowed"));
        }
        return true;
    }

    public boolean isProxiableAllowed() {
        if (this.properties.containsKey("tgs.proxiable.allowed")) {
            return "true".equalsIgnoreCase((String) this.properties.get("tgs.proxiable.allowed"));
        }
        return true;
    }

    public boolean isPostdateAllowed() {
        if (this.properties.containsKey("tgs.postdate.allowed")) {
            return "true".equalsIgnoreCase((String) this.properties.get("tgs.postdate.allowed"));
        }
        return true;
    }

    public boolean isRenewableAllowed() {
        if (this.properties.containsKey("tgs.renewable.allowed")) {
            return "true".equalsIgnoreCase((String) this.properties.get("tgs.renewable.allowed"));
        }
        return true;
    }

    public int getChangepwPort() {
        if (this.properties.containsKey(org.apache.kerberos.service.KdcConfiguration.CHANGEPW_PORT_KEY)) {
            return Integer.parseInt((String) this.properties.get(org.apache.kerberos.service.KdcConfiguration.CHANGEPW_PORT_KEY));
        }
        return 464;
    }

    public KerberosPrincipal getChangepwPrincipal() {
        return new KerberosPrincipal((String) this.properties.get("changepw.principal"));
    }

    public KerberosPrincipal getLdapPrincipal() {
        if (this.properties.containsKey("ldap.principal")) {
            return new KerberosPrincipal((String) this.properties.get("ldap.principal"));
        }
        return null;
    }

    private void prepareEncryptionTypes() {
        String[] split = ((String) this.properties.get("kdc.encryption.types")).split("\\s");
        ArrayList arrayList = new ArrayList();
        for (String str : split) {
            for (EncryptionType encryptionType : EncryptionType.VALUES) {
                if (encryptionType.toString().equalsIgnoreCase(str)) {
                    arrayList.add(encryptionType);
                }
            }
        }
        this._encryptionTypes = (EncryptionType[]) arrayList.toArray(new EncryptionType[arrayList.size()]);
    }
}
