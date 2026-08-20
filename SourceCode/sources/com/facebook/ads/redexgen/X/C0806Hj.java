package com.facebook.ads.redexgen.X;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.facebook.ads.redexgen.X.Hj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0806Hj extends BufferedOutputStream {
    public boolean A00;

    public C0806Hj(OutputStream outputStream) {
        super(outputStream);
    }

    public C0806Hj(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    public final void A00(OutputStream outputStream) {
        HD.A04(this.A00);
        this.out = outputStream;
        this.count = 0;
        this.A00 = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.A00 = true;
        Throwable e2 = null;
        try {
            flush();
        } catch (Throwable th) {
            e2 = th;
        }
        try {
            this.out.close();
        } catch (Throwable thrown) {
            if (e2 == null) {
                e2 = thrown;
            }
        }
        if (e2 != null) {
            C0815Hs.A0Y(e2);
        }
    }
}
