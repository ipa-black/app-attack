package com.bytedance.sdk.component.cJ.Qhi.cJ;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SegmentedByteString.java */
/* loaded from: classes2.dex */
public final class Sf extends fl {
    final transient byte[][] ROR;
    final transient int[] Sf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Sf(Qhi qhi, int i) {
        super(null);
        WAv.Qhi(qhi.cJ, 0L, i);
        Tgh tgh = qhi.Qhi;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            if (tgh.ac == tgh.cJ) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += tgh.ac - tgh.cJ;
            i4++;
            tgh = tgh.Tgh;
        }
        this.ROR = new byte[i4];
        this.Sf = new int[i4 * 2];
        Tgh tgh2 = qhi.Qhi;
        int i5 = 0;
        while (i2 < i) {
            this.ROR[i5] = tgh2.Qhi;
            i2 += tgh2.ac - tgh2.cJ;
            if (i2 > i) {
                i2 = i;
            }
            int[] iArr = this.Sf;
            iArr[i5] = i2;
            iArr[this.ROR.length + i5] = tgh2.cJ;
            tgh2.CJ = true;
            i5++;
            tgh2 = tgh2.Tgh;
        }
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public String Qhi() {
        return fl().Qhi();
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public String cJ() {
        return fl().cJ();
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public fl Qhi(int i, int i2) {
        return fl().Qhi(i, i2);
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public byte Qhi(int i) {
        WAv.Qhi(this.Sf[this.ROR.length - 1], i, 1L);
        int cJ = cJ(i);
        int i2 = cJ == 0 ? 0 : this.Sf[cJ - 1];
        int[] iArr = this.Sf;
        byte[][] bArr = this.ROR;
        return bArr[cJ][(i - i2) + iArr[bArr.length + cJ]];
    }

    private int cJ(int i) {
        int binarySearch = Arrays.binarySearch(this.Sf, 0, this.ROR.length, i + 1);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public int ac() {
        return this.Sf[this.ROR.length - 1];
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public byte[] CJ() {
        int[] iArr = this.Sf;
        byte[][] bArr = this.ROR;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.Sf;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.ROR[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public boolean Qhi(int i, fl flVar, int i2, int i3) {
        if (i < 0 || i > ac() - i3) {
            return false;
        }
        int cJ = cJ(i);
        while (i3 > 0) {
            int i4 = cJ == 0 ? 0 : this.Sf[cJ - 1];
            int min = Math.min(i3, ((this.Sf[cJ] - i4) + i4) - i);
            int[] iArr = this.Sf;
            byte[][] bArr = this.ROR;
            if (!flVar.Qhi(i2, bArr[cJ], (i - i4) + iArr[bArr.length + cJ], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            cJ++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public boolean Qhi(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > ac() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int cJ = cJ(i);
        while (i3 > 0) {
            int i4 = cJ == 0 ? 0 : this.Sf[cJ - 1];
            int min = Math.min(i3, ((this.Sf[cJ] - i4) + i4) - i);
            int[] iArr = this.Sf;
            byte[][] bArr2 = this.ROR;
            if (!WAv.Qhi(bArr2[cJ], (i - i4) + iArr[bArr2.length + cJ], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            cJ++;
        }
        return true;
    }

    private fl fl() {
        return new fl(CJ());
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof fl) {
            fl flVar = (fl) obj;
            if (flVar.ac() == ac() && Qhi(0, flVar, 0, ac())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public int hashCode() {
        int i = this.fl;
        if (i != 0) {
            return i;
        }
        int length = this.ROR.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            byte[] bArr = this.ROR[i2];
            int[] iArr = this.Sf;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.fl = i3;
        return i3;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ.fl
    public String toString() {
        return fl().toString();
    }
}
