package com.applovin.exoplayer2;

import android.os.Bundle;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;
/* loaded from: classes.dex */
public final class aj extends aq {

    /* renamed from: a  reason: collision with root package name */
    public static final g.a<aj> f1350a = new g.a() { // from class: com.applovin.exoplayer2.aj$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            aj a2;
            a2 = aj.a(bundle);
            return a2;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final float f1351c;

    public aj() {
        this.f1351c = -1.0f;
    }

    public aj(float f2) {
        com.applovin.exoplayer2.l.a.a(f2 >= 0.0f && f2 <= 100.0f, "percent must be in the range of [0, 100]");
        this.f1351c = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static aj a(Bundle bundle) {
        com.applovin.exoplayer2.l.a.a(bundle.getInt(a(0), -1) == 1);
        float f2 = bundle.getFloat(a(1), -1.0f);
        return f2 == -1.0f ? new aj() : new aj(f2);
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(Object obj) {
        return (obj instanceof aj) && this.f1351c == ((aj) obj).f1351c;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.f1351c));
    }
}
