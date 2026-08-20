package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import org.apache.asn1.codec.DecoderException;
/* loaded from: classes5.dex */
public class Length {
    public static final int END_MASK = 128;
    public static final int INDEFINITE = -2;
    public static final int UNDEFINED = -1;
    private int value = -1;
    private int numOctets = -1;
    private boolean isFixated = false;
    private final ByteBuffer buf = ByteBuffer.allocate(5);

    public boolean isFixated() {
        return this.isFixated;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.isFixated = false;
        this.value = 0;
        this.numOctets = 1;
        this.buf.clear();
    }

    void fixate() throws DecoderException {
        this.buf.flip();
        this.value = getLength(this.buf);
        this.isFixated = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(byte b2) throws DecoderException {
        if (this.isFixated) {
            throw new IllegalStateException("data added to fixated length");
        }
        this.buf.put(b2);
        if (this.buf.position() != 1) {
            if (this.buf.position() >= this.numOctets + 1) {
                fixate();
            }
        } else if (128 != (b2 & 128)) {
            fixate();
        } else {
            int i = b2 & Byte.MAX_VALUE;
            if (i == 0) {
                this.numOctets = -2;
                fixate();
            } else if (i == 127) {
                throw new DecoderException("The number of octets must not be 127 (reserved for future extension) ");
            } else {
                this.numOctets = i;
            }
        }
    }

    public int getLength() {
        return this.value;
    }

    public int size() {
        return this.buf.position();
    }

    public static int getLength(ByteBuffer byteBuffer) throws DecoderException {
        if (byteBuffer.remaining() >= 6) {
            throw new DecoderException("Length number is too large.");
        }
        byte b2 = byteBuffer.get();
        if ((b2 & 128) == 0) {
            return b2;
        }
        if ((b2 & Byte.MAX_VALUE) == 0) {
            return -2;
        }
        int remaining = byteBuffer.remaining();
        int i = (remaining - 1) << 3;
        int i2 = 0;
        while (remaining > 0) {
            i2 |= (byteBuffer.get() & 255) << i;
            remaining--;
            i -= 8;
        }
        return i2;
    }
}
