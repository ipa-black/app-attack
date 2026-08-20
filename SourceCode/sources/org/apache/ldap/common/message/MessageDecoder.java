package org.apache.ldap.common.message;

import java.io.InputStream;
import java.util.Hashtable;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.stateful.DecoderCallback;
import org.apache.asn1.codec.stateful.DecoderMonitor;
import org.apache.asn1.codec.stateful.StatefulDecoder;
import org.apache.ldap.common.message.spi.Provider;
import org.apache.ldap.common.message.spi.ProviderDecoder;
import org.apache.ldap.common.message.spi.TransformerSpi;
/* loaded from: classes3.dex */
public final class MessageDecoder implements ProviderDecoder {
    private DecoderCallback cb;
    private final ProviderDecoder decoder;
    private final Hashtable env;
    private final Provider provider;
    private final TransformerSpi transformer;

    public MessageDecoder() throws MessageException {
        this(Provider.getEnvironment());
    }

    public MessageDecoder(Hashtable hashtable) throws MessageException {
        Hashtable hashtable2 = (Hashtable) hashtable.clone();
        this.env = hashtable2;
        Provider provider = Provider.getProvider(hashtable2);
        this.provider = provider;
        ProviderDecoder decoder = provider.getDecoder();
        this.decoder = decoder;
        this.transformer = provider.getTransformer();
        decoder.setCallback(new DecoderCallback() { // from class: org.apache.ldap.common.message.MessageDecoder.1
            @Override // org.apache.asn1.codec.stateful.DecoderCallback
            public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
                MessageDecoder.this.cb.decodeOccurred(statefulDecoder, MessageDecoder.this.transformer.transform(obj));
            }
        });
    }

    @Override // org.apache.ldap.common.message.spi.ProviderDecoder
    public Object decode(Object obj, InputStream inputStream) throws MessageException {
        Object decode;
        Object obj2;
        if (obj == null) {
            obj2 = this.decoder.decode(obj, inputStream);
        } else {
            synchronized (obj) {
                decode = this.decoder.decode(obj, inputStream);
                obj.notifyAll();
            }
            obj2 = decode;
        }
        Message transform = this.transformer.transform(obj2);
        transform.setLocked(true);
        return transform;
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void decode(Object obj) throws MessageException {
        try {
            this.decoder.decode(obj);
        } catch (DecoderException e2) {
            throw new MessageException(new StringBuffer("decoder failture: ").append(e2.getMessage()).toString());
        }
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setCallback(DecoderCallback decoderCallback) {
        this.cb = decoderCallback;
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setDecoderMonitor(DecoderMonitor decoderMonitor) {
        this.decoder.setDecoderMonitor(decoderMonitor);
    }

    @Override // org.apache.ldap.common.message.spi.ProviderObject
    public Provider getProvider() {
        return this.provider;
    }
}
