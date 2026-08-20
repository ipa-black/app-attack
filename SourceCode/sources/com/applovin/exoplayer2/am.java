package com.applovin.exoplayer2;

import android.os.Bundle;
import com.applovin.exoplayer2.g;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class am implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final am f1360a = new am(1.0f);

    /* renamed from: d  reason: collision with root package name */
    public static final g.a<am> f1361d = new g.a() { // from class: com.applovin.exoplayer2.am$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            am a2;
            a2 = am.a(bundle);
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final float f1362b;

    /* renamed from: c  reason: collision with root package name */
    public final float f1363c;

    /* renamed from: e  reason: collision with root package name */
    private final int f1364e;

    public am(float f2) {
        this(f2, 1.0f);
    }

    public am(float f2, float f3) {
        com.applovin.exoplayer2.l.a.a(f2 > 0.0f);
        com.applovin.exoplayer2.l.a.a(f3 > 0.0f);
        this.f1362b = f2;
        this.f1363c = f3;
        this.f1364e = Math.round(f2 * 1000.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ am a(Bundle bundle) {
        return new am(bundle.getFloat(a(0), 1.0f), bundle.getFloat(a(1), 1.0f));
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public long a(long j) {
        return j * this.f1364e;
    }

    public am a(float f2) {
        return new am(f2, this.f1363c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        am amVar = (am) obj;
        return this.f1362b == amVar.f1362b && this.f1363c == amVar.f1363c;
    }

    public int hashCode() {
        return ((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + Float.floatToRawIntBits(this.f1362b)) * 31) + Float.floatToRawIntBits(this.f1363c);
    }

    public String toString() {
        return com.applovin.exoplayer2.l.ai.a("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f1362b), Float.valueOf(this.f1363c));
    }
}
