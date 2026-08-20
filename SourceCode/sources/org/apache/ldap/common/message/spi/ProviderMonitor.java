package org.apache.ldap.common.message.spi;

import java.util.Properties;
/* loaded from: classes3.dex */
public interface ProviderMonitor {
    public static final ProviderMonitor NOOP_MONITOR = new ProviderMonitor() { // from class: org.apache.ldap.common.message.spi.ProviderMonitor.1
        @Override // org.apache.ldap.common.message.spi.ProviderMonitor
        public final void propsFound(String str, Properties properties) {
        }

        @Override // org.apache.ldap.common.message.spi.ProviderMonitor
        public final void usingDefaults(String str, Properties properties) {
        }
    };

    void propsFound(String str, Properties properties);

    void usingDefaults(String str, Properties properties);
}
