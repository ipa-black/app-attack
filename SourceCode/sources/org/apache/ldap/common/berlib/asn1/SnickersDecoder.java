package org.apache.ldap.common.berlib.asn1;

import java.io.InputStream;
import java.nio.ByteBuffer;
import org.apache.asn1.ber.digester.BERDigester;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.stateful.DecoderCallback;
import org.apache.asn1.codec.stateful.DecoderMonitor;
import org.apache.asn1.codec.stateful.StatefulDecoder;
import org.apache.ldap.common.berlib.asn1.decoder.LdapDigesterFactory;
import org.apache.ldap.common.message.Message;
import org.apache.ldap.common.message.spi.Provider;
import org.apache.ldap.common.message.spi.ProviderDecoder;
import org.apache.ldap.common.message.spi.ProviderException;
/* loaded from: classes3.dex */
public class SnickersDecoder implements ProviderDecoder {
    private final BERDigester digester = LdapDigesterFactory.getSingleton().create();
    private final Provider provider;

    public SnickersDecoder(Provider provider) {
        this.provider = provider;
    }

    @Override // org.apache.ldap.common.message.spi.ProviderObject
    public Provider getProvider() {
        return this.provider;
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void decode(Object obj) throws DecoderException {
        ByteBuffer wrap;
        if (obj instanceof ByteBuffer) {
            wrap = (ByteBuffer) obj;
        } else if (obj instanceof byte[]) {
            wrap = ByteBuffer.wrap((byte[]) obj);
        } else {
            throw new DecoderException(new StringBuffer("Expected either a byte[] or ByteBuffer argument but got a ").append(obj.getClass()).toString());
        }
        this.digester.decode(wrap);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setCallback(DecoderCallback decoderCallback) {
        this.digester.setCallback(decoderCallback);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setDecoderMonitor(DecoderMonitor decoderMonitor) {
        this.digester.setDecoderMonitor(decoderMonitor);
    }

    @Override // org.apache.ldap.common.message.spi.ProviderDecoder
    public Object decode(Object obj, InputStream inputStream) throws ProviderException {
        BERDigester create = LdapDigesterFactory.getSingleton().create();
        DigesterCallback digesterCallback = new DigesterCallback();
        create.setCallback(digesterCallback);
        if (obj == null) {
            digest(create, inputStream);
            return digesterCallback.getMessage();
        }
        try {
            synchronized (obj) {
                digest(create, inputStream);
                obj.notifyAll();
            }
            return digesterCallback.getMessage();
        } catch (Exception e2) {
            ProviderException providerException = new ProviderException(this.provider, "Snickers decoder failure!");
            providerException.addThrowable(e2);
            throw providerException;
        }
    }

    private void digest(BERDigester bERDigester, InputStream inputStream) throws ProviderException {
        byte[] bArr;
        int read;
        while (inputStream.available() > 0 && (read = inputStream.read((bArr = new byte[inputStream.available()]))) != -1) {
            try {
                bERDigester.decode(ByteBuffer.wrap(bArr, 0, read));
            } catch (Exception e2) {
                ProviderException providerException = new ProviderException(this.provider, "Snickers decoder failure!");
                providerException.addThrowable(e2);
                throw providerException;
            }
        }
    }

    /* loaded from: classes3.dex */
    class DigesterCallback implements DecoderCallback {
        private Message msg;

        DigesterCallback() {
        }

        @Override // org.apache.asn1.codec.stateful.DecoderCallback
        public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
            this.msg = (Message) obj;
        }

        Message getMessage() throws ProviderException {
            Message message = this.msg;
            if (message == null) {
                throw new ProviderException(SnickersDecoder.this.provider, "Callback did not receive a message as expected from the Snickers BERDigester");
            }
            this.msg = null;
            return message;
        }
    }
}
