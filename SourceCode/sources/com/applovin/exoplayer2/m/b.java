package com.applovin.exoplayer2.m;

import android.os.Bundle;
import com.applovin.exoplayer2.g;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class b implements com.applovin.exoplayer2.g {

    /* renamed from: e  reason: collision with root package name */
    public static final g.a<b> f3928e = new g.a() { // from class: com.applovin.exoplayer2.m.b$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            b a2;
            a2 = b.a(bundle);
            return a2;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f3929a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3930b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3931c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f3932d;

    /* renamed from: f  reason: collision with root package name */
    private int f3933f;

    public b(int i, int i2, int i3, byte[] bArr) {
        this.f3929a = i;
        this.f3930b = i2;
        this.f3931c = i3;
        this.f3932d = bArr;
    }

    public static int a(int i) {
        if (i != 1) {
            if (i != 9) {
                return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
            }
            return 6;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b a(Bundle bundle) {
        return new b(bundle.getInt(c(0), -1), bundle.getInt(c(1), -1), bundle.getInt(c(2), -1), bundle.getByteArray(c(3)));
    }

    public static int b(int i) {
        if (i != 1) {
            if (i != 16) {
                if (i != 18) {
                    return (i == 6 || i == 7) ? 3 : -1;
                }
                return 7;
            }
            return 6;
        }
        return 3;
    }

    private static String c(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3929a == bVar.f3929a && this.f3930b == bVar.f3930b && this.f3931c == bVar.f3931c && Arrays.equals(this.f3932d, bVar.f3932d);
    }

    public int hashCode() {
        if (this.f3933f == 0) {
            this.f3933f = ((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f3929a) * 31) + this.f3930b) * 31) + this.f3931c) * 31) + Arrays.hashCode(this.f3932d);
        }
        return this.f3933f;
    }

    public String toString() {
        return "ColorInfo(" + this.f3929a + ", " + this.f3930b + ", " + this.f3931c + ", " + (this.f3932d != null) + ")";
    }
}
