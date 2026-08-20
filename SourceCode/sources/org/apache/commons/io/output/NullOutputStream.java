package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes5.dex */
public class NullOutputStream extends OutputStream {
    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) {
    }
}
