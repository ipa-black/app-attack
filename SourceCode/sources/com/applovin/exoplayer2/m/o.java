package com.applovin.exoplayer2.m;

import android.os.Bundle;
import com.applovin.exoplayer2.g;
/* loaded from: classes.dex */
public final class o implements com.applovin.exoplayer2.g {

    /* renamed from: a  reason: collision with root package name */
    public static final o f4012a = new o(0, 0);

    /* renamed from: f  reason: collision with root package name */
    public static final g.a<o> f4013f = new g.a() { // from class: com.applovin.exoplayer2.m.o$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            o a2;
            a2 = o.a(bundle);
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final int f4014b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4015c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4016d;

    /* renamed from: e  reason: collision with root package name */
    public final float f4017e;

    public o(int i, int i2) {
        this(i, i2, 0, 1.0f);
    }

    public o(int i, int i2, int i3, float f2) {
        this.f4014b = i;
        this.f4015c = i2;
        this.f4016d = i3;
        this.f4017e = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o a(Bundle bundle) {
        return new o(bundle.getInt(a(0), 0), bundle.getInt(a(1), 0), bundle.getInt(a(2), 0), bundle.getFloat(a(3), 1.0f));
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return this.f4014b == oVar.f4014b && this.f4015c == oVar.f4015c && this.f4016d == oVar.f4016d && this.f4017e == oVar.f4017e;
        }
        return false;
    }

    public int hashCode() {
        return ((((((217 + this.f4014b) * 31) + this.f4015c) * 31) + this.f4016d) * 31) + Float.floatToRawIntBits(this.f4017e);
    }
}
