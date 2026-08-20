package org.apache.kerberos.service;

import com.appodeal.ads.modules.common.internal.Constants;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Properties;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.store.KerberosAttribute;
/* loaded from: classes5.dex */
public class KdcConfiguration {
    private static final int BUFFER_SIZE = 1024;
    public static final String CHANGEPW_PORT_KEY = "changepw.default.port";
    public static final int DEFAULT_CHANGEPW_PORT = 464;
    private static final String DEFAULT_CHANGEPW_PRINCIPAL = "kadmin/changepw@EXAMPLE.COM";
    public static final int DEFAULT_KERBEROS_PORT = 88;
    private static final String DEFAULT_PRINCIPAL = "krbtgt/EXAMPLE.COM@EXAMPLE.COM";
    private static final String DEFAULT_REALM = "EXAMPLE.COM";
    private static final String KDC_PRIMARY_REALM = "kdc.primary.realm";
    private static final String KDC_PRINCIPAL = "kdc.principal";
    public static final String KERBEROS_PORT_KEY = "kdc.default.port";
    private static final int MINUTE = 60000;
    private EncryptionType[] _encryptionTypes;
    private final Properties properties;

    public KdcConfiguration() {
        this.properties = new Properties();
        prepareEncryptionTypes();
    }

    public KdcConfiguration(Properties properties) {
        Properties properties2 = new Properties();
        this.properties = properties2;
        properties2.putAll(properties);
        prepareEncryptionTypes();
    }

    public String getPrimaryRealm() {
        if (this.properties.containsKey(KDC_PRIMARY_REALM)) {
            return this.properties.getProperty(KDC_PRIMARY_REALM);
        }
        return DEFAULT_REALM;
    }

    public KerberosPrincipal getKdcPrincipal() {
        if (this.properties.containsKey(KDC_PRINCIPAL)) {
            return new KerberosPrincipal(this.properties.getProperty(KDC_PRINCIPAL));
        }
        return new KerberosPrincipal(DEFAULT_PRINCIPAL);
    }

    public EncryptionType[] getEncryptionTypes() {
        return this._encryptionTypes;
    }

    public Hashtable getProperties() {
        this.properties.setProperty("java.naming.ldap.attributes.binary", KerberosAttribute.KEY);
        return this.properties;
    }

    public long getClockSkew() {
        if (this.properties.containsKey("kdc.allowable.clockskew")) {
            return Long.parseLong(this.properties.getProperty("kdc.allowable.clockskew")) * 60000;
        }
        return 300000L;
    }

    public long getMaximumTicketLifetime() {
        return this.properties.containsKey("tgs.maximum.ticket.lifetime") ? Long.parseLong(this.properties.getProperty("tgs.maximum.ticket.lifetime")) * 60000 : Constants.MILLIS_IN_DAY;
    }

    public long getMaximumRenewableLifetime() {
        if (this.properties.containsKey("tgs.maximum.renewable.lifetime")) {
            return Long.parseLong(this.properties.getProperty("tgs.maximum.renewable.lifetime")) * 60000;
        }
        return 604800000L;
    }

    public int getDefaultPort() {
        if (this.properties.containsKey(KERBEROS_PORT_KEY)) {
            return Integer.parseInt(this.properties.getProperty(KERBEROS_PORT_KEY));
        }
        return 88;
    }

    public int getBufferSize() {
        if (this.properties.containsKey("kdc.buffer.size")) {
            return Integer.parseInt(this.properties.getProperty("kdc.buffer.size"));
        }
        return 1024;
    }

    public boolean isPaEncTimestampRequired() {
        if (this.properties.containsKey("kdc.pa.enc.timestamp.required")) {
            return "true".equalsIgnoreCase(this.properties.getProperty("kdc.pa.enc.timestamp.required"));
        }
        return true;
    }

    public boolean isEmptyAddressesAllowed() {
        if (this.properties.containsKey("tgs.empty.addresses.allowed")) {
            return "true".equalsIgnoreCase(this.properties.getProperty("tgs.empty.addresses.allowed"));
        }
        return true;
    }

    public boolean isForwardableAllowed() {
        if (this.properties.containsKey("tgs.forwardable.allowed")) {
            return "true".equalsIgnoreCase(this.properties.getProperty("tgs.forwardable.allowed"));
        }
        return true;
    }

    public boolean isProxiableAllowed() {
        if (this.properties.containsKey("tgs.proxiable.allowed")) {
            return "true".equalsIgnoreCase(this.properties.getProperty("tgs.proxiable.allowed"));
        }
        return true;
    }

    public boolean isPostdateAllowed() {
        if (this.properties.containsKey("tgs.postdate.allowed")) {
            return "true".equalsIgnoreCase(this.properties.getProperty("tgs.postdate.allowed"));
        }
        return true;
    }

    public boolean isRenewableAllowed() {
        if (this.properties.containsKey("tgs.renewable.allowed")) {
            return "true".equalsIgnoreCase(this.properties.getProperty("tgs.renewable.allowed"));
        }
        return true;
    }

    public int getChangepwPort() {
        return this.properties.containsKey(CHANGEPW_PORT_KEY) ? Integer.parseInt(this.properties.getProperty(CHANGEPW_PORT_KEY)) : DEFAULT_CHANGEPW_PORT;
    }

    public KerberosPrincipal getChangepwPrincipal() {
        if (this.properties.containsKey("changepw.principal")) {
            return new KerberosPrincipal(this.properties.getProperty("changepw.principal"));
        }
        return new KerberosPrincipal(DEFAULT_CHANGEPW_PRINCIPAL);
    }

    private void prepareEncryptionTypes() {
        String[] split = this.properties.containsKey("kdc.encryption.types") ? this.properties.getProperty("kdc.encryption.types").split("\\s") : new String[]{"des-cbc-md5"};
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
