package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.Gh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0778Gh extends IOException {
    public final int A00;
    public final C0774Gb A01;

    public C0778Gh(IOException iOException, C0774Gb c0774Gb, int i) {
        super(iOException);
        this.A01 = c0774Gb;
        this.A00 = i;
    }

    public C0778Gh(String str, C0774Gb c0774Gb, int i) {
        super(str);
        this.A01 = c0774Gb;
        this.A00 = i;
    }

    public C0778Gh(String str, IOException iOException, C0774Gb c0774Gb, int i) {
        super(str, iOException);
        this.A01 = c0774Gb;
        this.A00 = i;
    }
}
