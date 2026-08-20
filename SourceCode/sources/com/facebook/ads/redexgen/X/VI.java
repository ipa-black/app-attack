package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: assets/audience_network.dex */
public final class VI implements InterfaceC0720Dx {
    public static String[] A06 = {"z6XOcFfUlZLiYF0seOLnv3ze9s0DdTB", "", "kOUqzIhQkth8unrmunVXM7OloxceXCp", "vNZflObtCpyDQVnjonlKme7G1XHf5P9t", "ltwdc1Rff3GtcYqOYiouDHeI", "qE08X0G6Jnym0xvk75ZNBZoUEwP5MAza", "Z6LnFft16t74Gtd3ASLNWwB", "zHF"};
    public final C0774Gb A00;
    public final InterfaceC0794Gx A01;
    public final UU A02;
    public final C0803Hg A04;
    public final H2 A03 = new H2();
    public final AtomicBoolean A05 = new AtomicBoolean();

    public VI(Uri uri, String str, C0721Dy c0721Dy) {
        this.A00 = new C0774Gb(uri, 0L, -1L, str, 0);
        this.A01 = c0721Dy.A00();
        this.A02 = c0721Dy.A01(false);
        this.A04 = c0721Dy.A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0720Dx
    public final void A4v() throws InterruptedException, IOException {
        this.A04.A00(-1000);
        try {
            H3.A03(this.A00, this.A01, this.A02, new byte[131072], this.A04, -1000, this.A03, this.A05, true);
        } finally {
            this.A04.A03(-1000);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0720Dx
    public final float A6V() {
        long j = this.A03.A01;
        if (j == -1) {
            return -1.0f;
        }
        long contentLength = this.A03.A00();
        float f2 = ((float) contentLength) * 100.0f;
        if (A06[3].charAt(18) != 'l') {
            throw new RuntimeException();
        }
        A06[5] = "hhB6jfIM7FzfpB2Im4JpX4ZUe2epnCaG";
        return f2 / ((float) j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0720Dx
    public final long A6W() {
        return this.A03.A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0720Dx
    public final void cancel() {
        this.A05.set(true);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0720Dx
    public final void remove() {
        H3.A05(this.A01, H3.A02(this.A00));
    }
}
