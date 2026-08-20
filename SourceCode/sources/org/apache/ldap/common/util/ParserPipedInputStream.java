package org.apache.ldap.common.util;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.PipedInputStream;
/* loaded from: classes3.dex */
public class ParserPipedInputStream extends PipedInputStream {
    @Override // java.io.PipedInputStream
    protected synchronized void receive(int i) throws IOException {
        while (this.in == this.out) {
            notifyAll();
            try {
                wait(1000L);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            }
        }
        if (this.in < 0) {
            this.in = 0;
            this.out = 0;
        }
        byte[] bArr = this.buffer;
        int i2 = this.in;
        this.in = i2 + 1;
        bArr[i2] = (byte) (i & 255);
        if (this.in >= this.buffer.length) {
            this.in = 0;
        }
    }
}
