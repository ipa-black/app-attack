package com.applovin.exoplayer2;

import android.os.Bundle;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;
/* loaded from: classes.dex */
public final class x extends aq {

    /* renamed from: a  reason: collision with root package name */
    public static final g.a<x> f4196a = new g.a() { // from class: com.applovin.exoplayer2.x$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            x a2;
            a2 = x.a(bundle);
            return a2;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4197c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4198d;

    public x() {
        this.f4197c = false;
        this.f4198d = false;
    }

    public x(boolean z) {
        this.f4197c = true;
        this.f4198d = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static x a(Bundle bundle) {
        com.applovin.exoplayer2.l.a.a(bundle.getInt(a(0), -1) == 0);
        return bundle.getBoolean(a(1), false) ? new x(bundle.getBoolean(a(2), false)) : new x();
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(Object obj) {
        if (obj instanceof x) {
            x xVar = (x) obj;
            return this.f4198d == xVar.f4198d && this.f4197c == xVar.f4197c;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f4197c), Boolean.valueOf(this.f4198d));
    }
}
