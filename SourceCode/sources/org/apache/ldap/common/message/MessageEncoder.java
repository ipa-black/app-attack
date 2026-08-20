package org.apache.ldap.common.message;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Hashtable;
import org.apache.asn1.codec.EncoderException;
import org.apache.asn1.codec.stateful.EncoderCallback;
import org.apache.asn1.codec.stateful.EncoderMonitor;
import org.apache.ldap.common.message.spi.Provider;
import org.apache.ldap.common.message.spi.ProviderEncoder;
import org.apache.ldap.common.message.spi.ProviderException;
import org.apache.ldap.common.message.spi.TransformerSpi;
/* loaded from: classes3.dex */
public final class MessageEncoder implements ProviderEncoder {
    private final ProviderEncoder encoder;
    private final Provider provider;
    private final TransformerSpi transformer;

    public MessageEncoder() throws MessageException {
        this(Provider.getEnvironment());
    }

    public MessageEncoder(Hashtable hashtable) throws MessageException {
        Provider provider = Provider.getProvider((Hashtable) hashtable.clone());
        this.provider = provider;
        this.encoder = provider.getEncoder();
        this.transformer = provider.getTransformer();
    }

    @Override // org.apache.ldap.common.message.spi.ProviderEncoder
    public void encodeBlocking(Object obj, OutputStream outputStream, Object obj2) throws ProviderException {
        this.encoder.encodeBlocking(obj, outputStream, this.transformer.transform((Message) obj2));
    }

    @Override // org.apache.ldap.common.message.spi.ProviderEncoder
    public ByteBuffer encodeBlocking(Object obj) throws ProviderException {
        return this.encoder.encodeBlocking(this.transformer.transform((Message) obj));
    }

    @Override // org.apache.ldap.common.message.spi.ProviderObject
    public Provider getProvider() {
        return this.provider;
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void encode(Object obj) throws EncoderException {
        this.encoder.encode(this.transformer.transform((Message) obj));
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setCallback(EncoderCallback encoderCallback) {
        this.encoder.setCallback(encoderCallback);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setEncoderMonitor(EncoderMonitor encoderMonitor) {
        this.encoder.setEncoderMonitor(encoderMonitor);
    }
}
