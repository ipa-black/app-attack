package com.applovin.exoplayer2.b;

import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final int f1519a;

    /* renamed from: b  reason: collision with root package name */
    public final float f1520b;

    public k(int i, float f2) {
        this.f1519a = i;
        this.f1520b = f2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.f1519a == kVar.f1519a && Float.compare(kVar.f1520b, this.f1520b) == 0;
    }

    public int hashCode() {
        return ((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f1519a) * 31) + Float.floatToIntBits(this.f1520b);
    }
}
