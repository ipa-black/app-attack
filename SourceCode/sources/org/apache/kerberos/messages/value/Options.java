package org.apache.kerberos.messages.value;

import java.util.BitSet;
/* loaded from: classes5.dex */
public abstract class Options {
    private int _maxSize;
    private BitSet _options;

    /* JADX INFO: Access modifiers changed from: protected */
    public Options(int i) {
        this._maxSize = i;
        this._options = new BitSet(this._maxSize);
    }

    public boolean match(Options options, int i) {
        return options.get(i) == get(i);
    }

    public boolean get(int i) {
        return this._options.get(i);
    }

    public void set(int i) {
        this._options.set(i);
    }

    public void clear(int i) {
        this._options.clear(i);
    }

    public byte[] getBytes() {
        int i = this._maxSize / 8;
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < this._maxSize; i2++) {
            if (this._options.get(reversePosition(i2))) {
                int i3 = (i - (i2 / 8)) - 1;
                bArr[i3] = (byte) ((1 << (i2 % 8)) | bArr[i3]);
            }
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setBytes(byte[] bArr) {
        for (int i = 0; i < bArr.length * 8; i++) {
            if ((bArr[(bArr.length - (i / 8)) - 1] & (1 << (i % 8))) > 0) {
                this._options.set(reversePosition(i));
            }
        }
    }

    private int reversePosition(int i) {
        return (this._maxSize - 1) - i;
    }
}
