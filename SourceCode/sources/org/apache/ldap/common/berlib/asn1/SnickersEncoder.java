package org.apache.ldap.common.berlib.asn1;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import org.apache.asn1.ber.digester.rules.ByteAccumulator;
import org.apache.asn1.codec.EncoderException;
import org.apache.asn1.codec.stateful.EncoderCallback;
import org.apache.asn1.codec.stateful.EncoderMonitor;
import org.apache.asn1.codec.stateful.StatefulEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.SnickersLdapEncoder;
import org.apache.ldap.common.message.spi.Provider;
import org.apache.ldap.common.message.spi.ProviderEncoder;
import org.apache.ldap.common.message.spi.ProviderException;
/* loaded from: classes3.dex */
public class SnickersEncoder implements ProviderEncoder {
    private final AccumulatorCallback accCb;
    private final SnickersLdapEncoder encoder;
    private final OutputCallback outCb;
    private final Provider provider;

    public SnickersEncoder(Provider provider) {
        this.provider = provider;
        OutputCallback outputCallback = new OutputCallback();
        this.outCb = outputCallback;
        this.accCb = new AccumulatorCallback();
        SnickersLdapEncoder snickersLdapEncoder = new SnickersLdapEncoder();
        this.encoder = snickersLdapEncoder;
        snickersLdapEncoder.setCallback(outputCallback);
    }

    @Override // org.apache.ldap.common.message.spi.ProviderEncoder
    public void encodeBlocking(Object obj, OutputStream outputStream, Object obj2) throws ProviderException {
        synchronized (this.encoder) {
            this.outCb.attach(outputStream);
            this.encoder.setCallback(this.outCb);
            try {
                this.encoder.encode(obj2);
            } catch (EncoderException unused) {
                throw new ProviderException(this.provider, new StringBuffer("Snickers encoder failed to encode object: ").append(obj2).toString());
            }
        }
    }

    @Override // org.apache.ldap.common.message.spi.ProviderEncoder
    public ByteBuffer encodeBlocking(Object obj) throws ProviderException {
        ByteBuffer encoded;
        synchronized (this.encoder) {
            this.encoder.setCallback(this.accCb);
            try {
                this.encoder.encode(obj);
                encoded = this.accCb.getEncoded();
            } catch (EncoderException unused) {
                throw new ProviderException(this.provider, new StringBuffer("Snickers encoder failed to encode object: ").append(obj).toString());
            }
        }
        return encoded;
    }

    public byte[] encodeToArray(Object obj) throws ProviderException {
        byte[] array;
        synchronized (this.encoder) {
            this.encoder.setCallback(this.accCb);
            try {
                this.encoder.encode(obj);
                array = BufferUtils.getArray(this.accCb.getEncoded());
            } catch (EncoderException unused) {
                throw new ProviderException(this.provider, new StringBuffer("Snickers encoder failed to encode object: ").append(obj).toString());
            }
        }
        return array;
    }

    @Override // org.apache.ldap.common.message.spi.ProviderObject
    public Provider getProvider() {
        return this.provider;
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void encode(Object obj) throws EncoderException {
        this.encoder.encode(obj);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setCallback(EncoderCallback encoderCallback) {
        this.encoder.setCallback(encoderCallback);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setEncoderMonitor(EncoderMonitor encoderMonitor) {
        this.encoder.setEncoderMonitor(encoderMonitor);
    }

    /* loaded from: classes3.dex */
    class AccumulatorCallback implements EncoderCallback {
        ByteAccumulator accumulator = new ByteAccumulator();

        AccumulatorCallback() {
        }

        @Override // org.apache.asn1.codec.stateful.EncoderCallback
        public void encodeOccurred(StatefulEncoder statefulEncoder, Object obj) {
            if (obj instanceof ByteBuffer[]) {
                for (ByteBuffer byteBuffer : (ByteBuffer[]) obj) {
                    this.accumulator.fill(byteBuffer);
                }
                return;
            }
            this.accumulator.fill((ByteBuffer) obj);
        }

        ByteBuffer getEncoded() {
            return this.accumulator.drain();
        }
    }

    /* loaded from: classes3.dex */
    class OutputCallback implements EncoderCallback {
        private WritableByteChannel channel = null;

        OutputCallback() {
        }

        @Override // org.apache.asn1.codec.stateful.EncoderCallback
        public void encodeOccurred(StatefulEncoder statefulEncoder, Object obj) {
            try {
                this.channel.write((ByteBuffer) obj);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }

        void attach(WritableByteChannel writableByteChannel) {
            this.channel = writableByteChannel;
        }

        void attach(OutputStream outputStream) {
            this.channel = Channels.newChannel(outputStream);
        }
    }
}
