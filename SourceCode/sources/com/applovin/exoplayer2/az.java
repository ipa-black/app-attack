package com.applovin.exoplayer2;

import android.os.Bundle;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;
/* loaded from: classes.dex */
public final class az extends aq {

    /* renamed from: a  reason: collision with root package name */
    public static final g.a<az> f1435a = new g.a() { // from class: com.applovin.exoplayer2.az$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            az a2;
            a2 = az.a(bundle);
            return a2;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final boolean f1436c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f1437d;

    public az() {
        this.f1436c = false;
        this.f1437d = false;
    }

    public az(boolean z) {
        this.f1436c = true;
        this.f1437d = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static az a(Bundle bundle) {
        com.applovin.exoplayer2.l.a.a(bundle.getInt(a(0), -1) == 3);
        return bundle.getBoolean(a(1), false) ? new az(bundle.getBoolean(a(2), false)) : new az();
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(Object obj) {
        if (obj instanceof az) {
            az azVar = (az) obj;
            return this.f1437d == azVar.f1437d && this.f1436c == azVar.f1436c;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f1436c), Boolean.valueOf(this.f1437d));
    }
}
