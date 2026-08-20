package com.bytedance.sdk.component.cJ.Qhi.cJ;

import com.google.android.exoplayer2.C;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
/* compiled from: ByteString.java */
/* loaded from: classes2.dex */
public class fl implements Serializable, Comparable<fl> {
    final byte[] CJ;
    transient String Tgh;
    transient int fl;
    static final char[] Qhi = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final Charset cJ = Charset.forName(C.UTF8_NAME);
    public static final fl ac = Qhi(new byte[0]);

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl(byte[] bArr) {
        this.CJ = bArr;
    }

    public static fl Qhi(byte... bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        return new fl((byte[]) bArr.clone());
    }

    public String Qhi() {
        String str = this.Tgh;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.CJ, cJ);
        this.Tgh = str2;
        return str2;
    }

    public String cJ() {
        byte[] bArr = this.CJ;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = Qhi;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public fl Qhi(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.CJ;
        if (i2 <= bArr.length) {
            int i3 = i2 - i;
            if (i3 < 0) {
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            if (i == 0 && i2 == bArr.length) {
                return this;
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i, bArr2, 0, i3);
            return new fl(bArr2);
        }
        throw new IllegalArgumentException("endIndex > length(" + this.CJ.length + ")");
    }

    public byte Qhi(int i) {
        return this.CJ[i];
    }

    public int ac() {
        return this.CJ.length;
    }

    public byte[] CJ() {
        return (byte[]) this.CJ.clone();
    }

    public boolean Qhi(int i, fl flVar, int i2, int i3) {
        return flVar.Qhi(i2, this.CJ, i, i3);
    }

    public boolean Qhi(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0) {
            byte[] bArr2 = this.CJ;
            return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && WAv.Qhi(bArr2, i, bArr, i2, i3);
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof fl) {
            fl flVar = (fl) obj;
            int ac2 = flVar.ac();
            byte[] bArr = this.CJ;
            if (ac2 == bArr.length && flVar.Qhi(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.fl;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.CJ);
        this.fl = hashCode;
        return hashCode;
    }

    @Override // java.lang.Comparable
    /* renamed from: Qhi */
    public int compareTo(fl flVar) {
        int ac2 = ac();
        int ac3 = flVar.ac();
        int min = Math.min(ac2, ac3);
        for (int i = 0; i < min; i++) {
            int Qhi2 = Qhi(i) & 255;
            int Qhi3 = flVar.Qhi(i) & 255;
            if (Qhi2 != Qhi3) {
                return Qhi2 < Qhi3 ? -1 : 1;
            }
        }
        if (ac2 == ac3) {
            return 0;
        }
        return ac2 < ac3 ? -1 : 1;
    }

    public String toString() {
        if (this.CJ.length == 0) {
            return "[size=0]";
        }
        String Qhi2 = Qhi();
        int Qhi3 = Qhi(Qhi2, 64);
        if (Qhi3 == -1) {
            if (this.CJ.length > 64) {
                return "[size=" + this.CJ.length + " hex=" + Qhi(0, 64).cJ() + "…]";
            }
            return "[hex=" + cJ() + "]";
        }
        String replace = Qhi2.substring(0, Qhi3).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        return Qhi3 < Qhi2.length() ? "[size=" + this.CJ.length + " text=" + replace + "…]" : "[text=" + replace + "]";
    }

    static int Qhi(String str, int i) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (i3 == i) {
                return i2;
            }
            int codePointAt = str.codePointAt(i2);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i3++;
            i2 += Character.charCount(codePointAt);
        }
        return str.length();
    }
}
