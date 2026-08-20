package com.applovin.exoplayer2.e.g;

import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.q;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f2327a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2328b;

    /* renamed from: c  reason: collision with root package name */
    public final x.a f2329c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2330d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f2331e;

    public l(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        com.applovin.exoplayer2.l.a.a((bArr2 == null) ^ (i == 0));
        this.f2327a = z;
        this.f2328b = str;
        this.f2330d = i;
        this.f2331e = bArr2;
        this.f2329c = new x.a(a(str), bArr, i2, i3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(String str) {
        if (str == null) {
            return 1;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(C.CENC_TYPE_cbc1)) {
                    c2 = 0;
                    break;
                }
                break;
            case 3046671:
                if (str.equals(C.CENC_TYPE_cbcs)) {
                    c2 = 1;
                    break;
                }
                break;
            case 3049879:
                if (str.equals(C.CENC_TYPE_cenc)) {
                    c2 = 2;
                    break;
                }
                break;
            case 3049895:
                if (str.equals(C.CENC_TYPE_cens)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                return 2;
            case 2:
            case 3:
                break;
            default:
                q.c("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                break;
        }
        return 1;
    }
}
