package com.applovin.exoplayer2;

import android.os.Bundle;
import com.applovin.exoplayer2.g;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class o implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final o f4026a = new o(0, 0, 0);

    /* renamed from: e  reason: collision with root package name */
    public static final g.a<o> f4027e = new g.a() { // from class: com.applovin.exoplayer2.o$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            o a2;
            a2 = o.a(bundle);
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final int f4028b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4029c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4030d;

    public o(int i, int i2, int i3) {
        this.f4028b = i;
        this.f4029c = i2;
        this.f4030d = i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o a(Bundle bundle) {
        return new o(bundle.getInt(a(0), 0), bundle.getInt(a(1), 0), bundle.getInt(a(2), 0));
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
            return this.f4028b == oVar.f4028b && this.f4029c == oVar.f4029c && this.f4030d == oVar.f4030d;
        }
        return false;
    }

    public int hashCode() {
        return ((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f4028b) * 31) + this.f4029c) * 31) + this.f4030d;
    }
}
