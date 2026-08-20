package com.bytedance.sdk.component.cJ.Qhi.cJ;
/* compiled from: Segment.java */
/* loaded from: classes2.dex */
final class Tgh {
    boolean CJ;
    final byte[] Qhi;
    Tgh ROR;
    Tgh Tgh;
    int ac;
    int cJ;
    boolean fl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tgh() {
        this.Qhi = new byte[8192];
        this.fl = true;
        this.CJ = false;
    }

    Tgh(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.Qhi = bArr;
        this.cJ = i;
        this.ac = i2;
        this.CJ = z;
        this.fl = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Tgh Qhi() {
        this.CJ = true;
        return new Tgh(this.Qhi, this.cJ, this.ac, true, false);
    }

    public final Tgh cJ() {
        Tgh tgh = this.Tgh;
        Tgh tgh2 = tgh != this ? tgh : null;
        Tgh tgh3 = this.ROR;
        if (tgh3 != null) {
            tgh3.Tgh = tgh;
        }
        Tgh tgh4 = this.Tgh;
        if (tgh4 != null) {
            tgh4.ROR = tgh3;
        }
        this.Tgh = null;
        this.ROR = null;
        return tgh2;
    }

    public final Tgh Qhi(Tgh tgh) {
        tgh.ROR = this;
        tgh.Tgh = this.Tgh;
        this.Tgh.ROR = tgh;
        this.Tgh = tgh;
        return tgh;
    }
}
