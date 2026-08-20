package com.applovin.exoplayer2.j;

import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final int f3554a;

    /* renamed from: b  reason: collision with root package name */
    private final g[] f3555b;

    /* renamed from: c  reason: collision with root package name */
    private int f3556c;

    public h(g... gVarArr) {
        this.f3555b = gVarArr;
        this.f3554a = gVarArr.length;
    }

    public g a(int i) {
        return this.f3555b[i];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f3555b, ((h) obj).f3555b);
    }

    public int hashCode() {
        if (this.f3556c == 0) {
            this.f3556c = IronSourceError.ERROR_NON_EXISTENT_INSTANCE + Arrays.hashCode(this.f3555b);
        }
        return this.f3556c;
    }
}
