package org.apache.asn1.ber;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.nio.BufferOverflowException;
import org.apache.commons.lang.ArrayUtils;
/* loaded from: classes5.dex */
public class TagOctetCollector {
    private int intValue = 0;
    private int _size = 0;

    public void put(byte b2) {
        int i = this._size;
        if (i == 0) {
            this.intValue = b2 << 24;
            this._size = 1;
        } else if (i == 1) {
            this.intValue = ((b2 << 16) & 16711680) | this.intValue;
            this._size = 2;
        } else if (i == 2) {
            this.intValue = ((b2 << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | this.intValue;
            this._size = 3;
        } else if (i == 3) {
            this.intValue = b2 | this.intValue;
            this._size = 4;
        } else {
            throw new BufferOverflowException();
        }
    }

    public void clear() {
        this.intValue = 0;
        this._size = 0;
    }

    public int size() {
        return this._size;
    }

    public int getIntValue() {
        return this.intValue;
    }

    public byte[] toArray() {
        int i = this._size;
        byte[] bArr = new byte[i];
        if (i != 0) {
            if (i == 1) {
                bArr[0] = (byte) ((this.intValue & ViewCompat.MEASURED_STATE_MASK) >> 24);
                return bArr;
            } else if (i == 2) {
                int i2 = this.intValue;
                bArr[0] = (byte) (((-16777216) & i2) >> 24);
                bArr[1] = (byte) ((i2 & 16711680) >> 16);
                return bArr;
            } else if (i == 3) {
                int i3 = this.intValue;
                bArr[0] = (byte) (((-16777216) & i3) >> 24);
                bArr[1] = (byte) ((i3 & 16711680) >> 16);
                bArr[2] = (byte) ((i3 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
                return bArr;
            } else if (i == 4) {
                int i4 = this.intValue;
                bArr[0] = (byte) (((-16777216) & i4) >> 24);
                bArr[1] = (byte) ((i4 & 16711680) >> 16);
                bArr[2] = (byte) ((i4 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
                bArr[3] = (byte) (i4 & 255);
                return bArr;
            } else {
                throw new IllegalArgumentException("Cannot support more than 4 octets");
            }
        }
        return ArrayUtils.EMPTY_BYTE_ARRAY;
    }

    public byte get(int i) {
        int i2;
        if (i < this._size) {
            if (i == 0) {
                i2 = (this.intValue & ViewCompat.MEASURED_STATE_MASK) >> 24;
            } else if (i == 1) {
                i2 = (this.intValue & 16711680) >> 16;
            } else if (i == 2) {
                i2 = (this.intValue & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
            } else if (i == 3) {
                i2 = this.intValue & 255;
            } else {
                throw new IllegalArgumentException("Cannot support more than 4 octets");
            }
            return (byte) i2;
        }
        throw new IndexOutOfBoundsException(new StringBuffer("accesing index ").append(i).append(" with a size of ").append(this._size).toString());
    }
}
