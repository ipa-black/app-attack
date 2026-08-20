package org.apache.asn1.codec.stateful.examples;

import java.nio.ByteBuffer;
import org.apache.asn1.codec.EncoderException;
import org.apache.asn1.codec.stateful.EncoderCallback;
import org.apache.asn1.codec.stateful.EncoderMonitor;
import org.apache.asn1.codec.stateful.EncoderMonitorAdapter;
import org.apache.asn1.codec.stateful.StatefulEncoder;
/* loaded from: classes5.dex */
public class HexEncoder implements StatefulEncoder {
    private static final int CHUNK_SZ = 128;
    private ByteBuffer buf = ByteBuffer.allocate(128);
    private EncoderMonitor monitor = new EncoderMonitorAdapter();
    private EncoderCallback cb = new EncoderCallback() { // from class: org.apache.asn1.codec.stateful.examples.HexEncoder.1
        @Override // org.apache.asn1.codec.stateful.EncoderCallback
        public void encodeOccurred(StatefulEncoder statefulEncoder, Object obj) {
        }
    };
    private final byte[] HEXCHAR_LUT = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void encode(Object obj) throws EncoderException {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        if (byteBuffer == null || !byteBuffer.hasRemaining()) {
            return;
        }
        while (byteBuffer.hasRemaining()) {
            if (!this.buf.hasRemaining()) {
                this.buf.flip();
                this.cb.encodeOccurred(this, this.buf);
                this.monitor.callbackOccured(this, this.cb, this.buf);
                this.buf.clear();
            }
            byte b2 = byteBuffer.get();
            this.buf.put(this.HEXCHAR_LUT[(b2 >> 4) & 15]);
            this.buf.put(this.HEXCHAR_LUT[b2 & 15]);
        }
        this.buf.flip();
        this.cb.encodeOccurred(this, this.buf);
        this.monitor.callbackOccured(this, this.cb, this.buf);
        this.buf.clear();
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setCallback(EncoderCallback encoderCallback) {
        EncoderCallback encoderCallback2 = this.cb;
        this.cb = encoderCallback;
        this.monitor.callbackSet(this, encoderCallback2, encoderCallback);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setEncoderMonitor(EncoderMonitor encoderMonitor) {
        this.monitor = encoderMonitor;
    }
}
