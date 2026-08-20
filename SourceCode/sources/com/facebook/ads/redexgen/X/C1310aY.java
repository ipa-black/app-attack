package com.facebook.ads.redexgen.X;

import java.io.ByteArrayInputStream;
/* renamed from: com.facebook.ads.redexgen.X.aY  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1310aY implements C0K {
    public ByteArrayInputStream A00;
    public final byte[] A01;

    public C1310aY(byte[] bArr) {
        this.A01 = bArr;
    }

    @Override // com.facebook.ads.redexgen.X.C0K
    public final void ADG(int i) throws C1309aX {
        this.A00 = new ByteArrayInputStream(this.A01);
        this.A00.skip(i);
    }

    @Override // com.facebook.ads.redexgen.X.C0K
    public final void close() throws C1309aX {
    }

    @Override // com.facebook.ads.redexgen.X.C0K
    public final int length() throws C1309aX {
        return this.A01.length;
    }

    @Override // com.facebook.ads.redexgen.X.C0K
    public final int read(byte[] bArr) throws C1309aX {
        return this.A00.read(bArr, 0, bArr.length);
    }
}
