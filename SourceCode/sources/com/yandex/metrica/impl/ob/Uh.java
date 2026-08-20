package com.yandex.metrica.impl.ob;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Uh {

    /* renamed from: a  reason: collision with root package name */
    private final String f14106a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14107b;

    /* renamed from: c  reason: collision with root package name */
    private final int f14108c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f14109d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f14110e;

    public Uh(String str, int i, int i2, boolean z, boolean z2) {
        this.f14106a = str;
        this.f14107b = i;
        this.f14108c = i2;
        this.f14109d = z;
        this.f14110e = z2;
    }

    public final int a() {
        return this.f14108c;
    }

    public final int b() {
        return this.f14107b;
    }

    public final String c() {
        return this.f14106a;
    }

    public final boolean d() {
        return this.f14109d;
    }

    public final boolean e() {
        return this.f14110e;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Uh) {
                Uh uh = (Uh) obj;
                return Intrinsics.areEqual(this.f14106a, uh.f14106a) && this.f14107b == uh.f14107b && this.f14108c == uh.f14108c && this.f14109d == uh.f14109d && this.f14110e == uh.f14110e;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.f14106a;
        int hashCode = (((((str != null ? str.hashCode() : 0) * 31) + this.f14107b) * 31) + this.f14108c) * 31;
        boolean z = this.f14109d;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.f14110e;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "EgressConfig(url=" + this.f14106a + ", repeatedDelay=" + this.f14107b + ", randomDelayWindow=" + this.f14108c + ", isBackgroundAllowed=" + this.f14109d + ", isDiagnosticsEnabled=" + this.f14110e + ")";
    }
}
