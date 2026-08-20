package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Stack;
import junit.framework.TestCase;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.binary.BinaryCodec;
import org.apache.asn1.codec.stateful.DecoderCallback;
import org.apache.asn1.codec.stateful.DecoderMonitor;
import org.apache.asn1.codec.stateful.StatefulDecoder;
import org.apache.commons.lang.exception.ExceptionUtils;
/* loaded from: classes5.dex */
public abstract class AbstractDecoderTestCase extends TestCase implements BERDecoderCallback, DecoderMonitor {
    ByteBuffer buf;
    protected BERDecoder decoder;
    protected ArrayList tlvList;

    protected void setUp() throws Exception {
        super.setUp();
        BERDecoder bERDecoder = new BERDecoder();
        this.decoder = bERDecoder;
        bERDecoder.setCallback(this);
        this.decoder.setDecoderMonitor(this);
    }

    protected void tearDown() throws Exception {
        super.tearDown();
        this.tlvList.clear();
        this.decoder = null;
    }

    public AbstractDecoderTestCase(String str) {
        super(str);
        this.tlvList = new ArrayList();
        this.decoder = null;
        this.buf = ByteBuffer.allocate(11111);
    }

    public byte[][] fragment(byte[] bArr, int i) {
        byte[][] bArr2;
        if (i <= 0) {
            throw new IllegalArgumentException(new StringBuffer("fragment size should be 1 or more but was ").append(i).toString());
        }
        int length = bArr.length / i;
        int length2 = bArr.length % i;
        if (length2 == 0) {
            bArr2 = new byte[length];
        } else {
            bArr2 = new byte[length + 1];
            bArr2[length] = new byte[length2];
        }
        for (int i2 = 0; i2 < length; i2++) {
            byte[] bArr3 = new byte[i];
            bArr2[i2] = bArr3;
            System.arraycopy(bArr, i2 * i, bArr3, 0, i);
        }
        if (length2 != 0) {
            System.arraycopy(bArr, i * length, bArr2[length], 0, length2);
        }
        return bArr2;
    }

    public ByteBuffer[] fragment(ByteBuffer byteBuffer, int i) {
        ByteBuffer[] byteBufferArr;
        ByteBuffer duplicate = byteBuffer.duplicate();
        if (i <= 0) {
            throw new IllegalArgumentException(new StringBuffer("fragment size should be 1 or more but was ").append(i).toString());
        }
        int remaining = duplicate.remaining() / i;
        int remaining2 = duplicate.remaining() % i;
        if (remaining2 == 0) {
            byteBufferArr = new ByteBuffer[remaining];
        } else {
            byteBufferArr = new ByteBuffer[remaining + 1];
            byteBufferArr[remaining] = ByteBuffer.allocate(remaining2);
        }
        for (int i2 = 0; i2 < remaining; i2++) {
            byteBufferArr[i2] = (ByteBuffer) duplicate.slice().limit(i);
            duplicate.position(duplicate.position() + i);
        }
        if (remaining2 != 0) {
            byteBufferArr[remaining].put(duplicate);
            byteBufferArr[remaining].flip();
        }
        return byteBufferArr;
    }

    public Tuple decode(String str) throws DecoderException {
        ByteBuffer wrap = ByteBuffer.wrap(BinaryCodec.fromAscii(str.getBytes()));
        int size = this.tlvList.size();
        this.decoder.decode(wrap);
        if (this.tlvList.isEmpty() || this.tlvList.size() == size) {
            return this.decoder.getCurrentTuple();
        }
        ArrayList arrayList = this.tlvList;
        return (Tuple) arrayList.get(arrayList.size() - 1);
    }

    public Tuple decode(byte b2) throws DecoderException {
        ByteBuffer wrap = ByteBuffer.wrap(new byte[]{b2});
        int size = this.tlvList.size();
        this.decoder.decode(wrap);
        if (this.tlvList.isEmpty() || this.tlvList.size() == size) {
            return this.decoder.getCurrentTuple();
        }
        ArrayList arrayList = this.tlvList;
        return (Tuple) arrayList.get(arrayList.size() - 1);
    }

    public Tuple decode(ByteBuffer byteBuffer) throws DecoderException {
        int size = this.tlvList.size();
        this.decoder.decode(byteBuffer);
        if (this.tlvList.isEmpty() || this.tlvList.size() == size) {
            return this.decoder.getCurrentTuple();
        }
        ArrayList arrayList = this.tlvList;
        return (Tuple) arrayList.get(arrayList.size() - 1);
    }

    public Tuple decode(Tuple tuple, ByteBuffer byteBuffer) throws DecoderException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(byteBuffer);
        ByteBuffer encodedBuffer = tuple.toEncodedBuffer(arrayList);
        int size = this.tlvList.size();
        this.decoder.decode(encodedBuffer);
        if (this.tlvList.isEmpty() || this.tlvList.size() == size) {
            Stack tupleStack = this.decoder.getTupleStack();
            if (tupleStack.isEmpty()) {
                return this.decoder.getCurrentTuple();
            }
            return (Tuple) tupleStack.peek();
        }
        ArrayList arrayList2 = this.tlvList;
        return (Tuple) arrayList2.get(arrayList2.size() - 1);
    }

    public Tuple decode(Tuple[] tupleArr, ByteBuffer[] byteBufferArr) throws DecoderException {
        int size = this.tlvList.size();
        for (int i = 0; i < tupleArr.length; i++) {
            decode(tupleArr[i], byteBufferArr[i]);
        }
        if (this.tlvList.isEmpty() || this.tlvList.size() == size) {
            return this.decoder.getCurrentTuple();
        }
        ArrayList arrayList = this.tlvList;
        return (Tuple) arrayList.get(arrayList.size() - 1);
    }

    public Tuple decode(byte[] bArr) throws DecoderException {
        decode(ByteBuffer.wrap(bArr));
        ArrayList arrayList = this.tlvList;
        return (Tuple) arrayList.get(arrayList.size() - 1);
    }

    @Override // org.apache.asn1.ber.BERDecoderCallback
    public void tagDecoded(Tuple tuple) {
        assertTrue(this.decoder.getCurrentTuple().equals(tuple));
        assertEquals(BERDecoderState.TAG, this.decoder.getState());
    }

    @Override // org.apache.asn1.ber.BERDecoderCallback
    public void lengthDecoded(Tuple tuple) {
        assertTrue(this.decoder.getCurrentTuple().equals(tuple));
        assertEquals(BERDecoderState.LENGTH, this.decoder.getState());
        this.buf.clear();
    }

    @Override // org.apache.asn1.ber.BERDecoderCallback
    public void partialValueDecoded(Tuple tuple) {
        this.buf.put(tuple.valueChunk);
    }

    @Override // org.apache.asn1.codec.stateful.DecoderCallback
    public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
        this.tlvList.add(((Tuple) obj).clone());
        assertEquals(BERDecoderState.VALUE, this.decoder.getState());
        this.buf.flip();
    }

    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void callbackOccured(StatefulDecoder statefulDecoder, DecoderCallback decoderCallback, Object obj) {
        assertEquals(this, decoderCallback);
        assertEquals(this.decoder, statefulDecoder);
        Tuple tuple = (Tuple) obj;
        assertNotNull(tuple);
        if (tuple.isPrimitive) {
            assertTrue(this.decoder.getCurrentTuple().equals(obj));
        }
    }

    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void callbackSet(StatefulDecoder statefulDecoder, DecoderCallback decoderCallback, DecoderCallback decoderCallback2) {
        assertEquals(this, decoderCallback2);
    }

    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void error(StatefulDecoder statefulDecoder, Exception exc) {
        fail(ExceptionUtils.getFullStackTrace(exc));
    }

    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void fatalError(StatefulDecoder statefulDecoder, Exception exc) {
        fail(ExceptionUtils.getFullStackTrace(exc));
    }

    public void monitorSet(StatefulDecoder statefulDecoder, DecoderMonitor decoderMonitor) {
        assertEquals(this, decoderMonitor);
    }

    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void warning(StatefulDecoder statefulDecoder, Exception exc) {
        assertNotNull(exc);
    }
}
