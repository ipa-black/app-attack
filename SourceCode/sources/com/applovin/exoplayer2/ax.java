package com.applovin.exoplayer2;

import android.os.Bundle;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;
/* loaded from: classes.dex */
public final class ax extends aq {

    /* renamed from: a  reason: collision with root package name */
    public static final g.a<ax> f1423a = new g.a() { // from class: com.applovin.exoplayer2.ax$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            ax a2;
            a2 = ax.a(bundle);
            return a2;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final int f1424c;

    /* renamed from: d  reason: collision with root package name */
    private final float f1425d;

    public ax(int i) {
        com.applovin.exoplayer2.l.a.a(i > 0, "maxStars must be a positive integer");
        this.f1424c = i;
        this.f1425d = -1.0f;
    }

    public ax(int i, float f2) {
        boolean z = true;
        com.applovin.exoplayer2.l.a.a(i > 0, "maxStars must be a positive integer");
        com.applovin.exoplayer2.l.a.a((f2 < 0.0f || f2 > ((float) i)) ? false : z, "starRating is out of range [0, maxStars]");
        this.f1424c = i;
        this.f1425d = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ax a(Bundle bundle) {
        com.applovin.exoplayer2.l.a.a(bundle.getInt(a(0), -1) == 2);
        int i = bundle.getInt(a(1), 5);
        float f2 = bundle.getFloat(a(2), -1.0f);
        return f2 == -1.0f ? new ax(i) : new ax(i, f2);
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ax) {
            ax axVar = (ax) obj;
            return this.f1424c == axVar.f1424c && this.f1425d == axVar.f1425d;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f1424c), Float.valueOf(this.f1425d));
    }
}
