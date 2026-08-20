package org.apache.ldap.common.message.spi;

import org.apache.ldap.common.message.MessageException;
/* loaded from: classes3.dex */
public class ProviderException extends MessageException {
    private final Provider m_provider;

    public Provider getProvider() {
        return this.m_provider;
    }

    public ProviderException(Provider provider) {
        this.m_provider = provider;
    }

    public ProviderException(Provider provider, String str) {
        super(str);
        this.m_provider = provider;
    }
}
