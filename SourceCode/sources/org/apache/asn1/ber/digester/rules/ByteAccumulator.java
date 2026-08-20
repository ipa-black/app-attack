package org.apache.asn1.ber.digester.rules;

import java.nio.ByteBuffer;
import org.apache.commons.lang.ArrayUtils;
/* loaded from: classes5.dex */
public class ByteAccumulator {
    private static final int DEFAULT_INCREMENT = 100;
    private static final int DEFAULT_INIT_SIZE = 0;
    private byte[] bs;
    private int increment;
    private int initial;
    private int pos;

    public ByteAccumulator() {
        this.initial = 0;
        this.bs = ArrayUtils.EMPTY_BYTE_ARRAY;
        this.pos = 0;
        this.initial = 0;
        this.increment = 100;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteAccumulator(int i) {
        this.initial = 0;
        if (i <= 0) {
            this.bs = ArrayUtils.EMPTY_BYTE_ARRAY;
            this.initial = 0;
        } else {
            this.bs = new byte[i];
            this.initial = i;
        }
        this.pos = 0;
        this.increment = 100;
    }

    public void fill(ByteBuffer byteBuffer) {
        int length;
        while (byteBuffer.hasRemaining()) {
            if (this.pos >= this.bs.length) {
                int remaining = byteBuffer.remaining();
                int i = this.increment;
                if (remaining > i) {
                    length = this.bs.length;
                    i = byteBuffer.remaining();
                } else {
                    length = this.bs.length;
                }
                byte[] bArr = new byte[length + i];
                byte[] bArr2 = this.bs;
                System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
                this.bs = bArr;
            }
            int length2 = this.bs.length - this.pos;
            if (byteBuffer.remaining() <= length2) {
                int remaining2 = byteBuffer.remaining();
                byteBuffer.get(this.bs, this.pos, remaining2);
                this.pos += remaining2;
                return;
            }
            byteBuffer.get(this.bs, this.pos, length2);
            this.pos += length2;
        }
    }

    public ByteBuffer drain() {
        ByteBuffer wrap;
        int i = this.pos;
        byte[] bArr = this.bs;
        if (i == bArr.length) {
            wrap = ByteBuffer.wrap(bArr);
        } else {
            wrap = ByteBuffer.wrap(bArr, 0, i);
        }
        int i2 = this.initial;
        if (i2 <= 0) {
            this.bs = ArrayUtils.EMPTY_BYTE_ARRAY;
        } else {
            this.bs = new byte[i2];
        }
        this.pos = 0;
        return wrap;
    }

    public ByteBuffer drain(int i) {
        ByteBuffer wrap;
        int i2 = this.pos;
        byte[] bArr = this.bs;
        if (i2 == bArr.length) {
            wrap = ByteBuffer.wrap(bArr);
        } else {
            wrap = ByteBuffer.wrap(bArr, 0, i2);
        }
        if (i <= 0) {
            this.bs = ArrayUtils.EMPTY_BYTE_ARRAY;
        } else {
            this.bs = new byte[i];
        }
        this.pos = 0;
        return wrap;
    }

    public void ensureCapacity(int i) {
        byte[] bArr = this.bs;
        if (bArr.length < i) {
            byte[] bArr2 = new byte[i];
            if (bArr != ArrayUtils.EMPTY_BYTE_ARRAY) {
                System.arraycopy(this.bs, 0, bArr2, 0, this.pos + 1);
            }
            this.bs = bArr2;
        }
    }

    public int getGrowthIncrement() {
        return this.increment;
    }

    public int getInitialSize() {
        return this.initial;
    }

    public int getCapacity() {
        return this.bs.length;
    }

    public int getRemainingSpace() {
        return this.bs.length - this.pos;
    }

    public int getPosition() {
        return this.pos;
    }
}
