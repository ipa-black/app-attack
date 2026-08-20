package org.apache.ldap.common.berlib.asn1;

import org.apache.ldap.common.message.Message;
import org.apache.ldap.common.message.spi.Provider;
import org.apache.ldap.common.message.spi.TransformerSpi;
/* loaded from: classes3.dex */
public class SnickersTransformer implements TransformerSpi {
    private final SnickersProvider provider;

    @Override // org.apache.ldap.common.message.spi.TransformerSpi
    public Object transform(Message message) {
        return message;
    }

    public SnickersTransformer(SnickersProvider snickersProvider) {
        this.provider = snickersProvider;
    }

    @Override // org.apache.ldap.common.message.spi.ProviderObject
    public Provider getProvider() {
        return this.provider;
    }

    @Override // org.apache.ldap.common.message.spi.TransformerSpi
    public Message transform(Object obj) {
        return (Message) obj;
    }
}
