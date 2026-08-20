package org.apache.ldap.common.berlib.asn1;

import org.apache.ldap.common.message.spi.Provider;
import org.apache.ldap.common.message.spi.ProviderDecoder;
import org.apache.ldap.common.message.spi.ProviderEncoder;
import org.apache.ldap.common.message.spi.ProviderException;
import org.apache.ldap.common.message.spi.TransformerSpi;
/* loaded from: classes3.dex */
public class SnickersProvider extends Provider {
    private static SnickersProvider singleton;
    private final SnickersTransformer transformer;

    private SnickersProvider() {
        super("Snickers LDAP BER Provider", "Apache Directory Project");
        this.transformer = new SnickersTransformer(this);
    }

    public static Provider getProvider() {
        if (singleton == null) {
            singleton = new SnickersProvider();
        }
        return singleton;
    }

    @Override // org.apache.ldap.common.message.spi.Provider
    public ProviderEncoder getEncoder() throws ProviderException {
        return new SnickersEncoder(this);
    }

    @Override // org.apache.ldap.common.message.spi.Provider
    public ProviderDecoder getDecoder() throws ProviderException {
        return new SnickersDecoder(this);
    }

    @Override // org.apache.ldap.common.message.spi.Provider
    public TransformerSpi getTransformer() throws ProviderException {
        return this.transformer;
    }
}
