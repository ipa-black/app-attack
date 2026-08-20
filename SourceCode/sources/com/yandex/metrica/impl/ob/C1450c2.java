package com.yandex.metrica.impl.ob;

import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.c2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1450c2 {

    /* renamed from: a  reason: collision with root package name */
    private final int f14517a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14518b;

    /* renamed from: c  reason: collision with root package name */
    private final int f14519c;

    /* renamed from: d  reason: collision with root package name */
    private final float f14520d;

    /* renamed from: e  reason: collision with root package name */
    private final com.yandex.metrica.b f14521e;

    public C1450c2(int i, int i2, int i3, float f2, com.yandex.metrica.b bVar) {
        this.f14517a = i;
        this.f14518b = i2;
        this.f14519c = i3;
        this.f14520d = f2;
        this.f14521e = bVar;
    }

    public final com.yandex.metrica.b a() {
        return this.f14521e;
    }

    public final int b() {
        return this.f14519c;
    }

    public final int c() {
        return this.f14518b;
    }

    public final float d() {
        return this.f14520d;
    }

    public final int e() {
        return this.f14517a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C1450c2) {
                C1450c2 c1450c2 = (C1450c2) obj;
                return this.f14517a == c1450c2.f14517a && this.f14518b == c1450c2.f14518b && this.f14519c == c1450c2.f14519c && Float.compare(this.f14520d, c1450c2.f14520d) == 0 && Intrinsics.areEqual(this.f14521e, c1450c2.f14521e);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int floatToIntBits = ((((((this.f14517a * 31) + this.f14518b) * 31) + this.f14519c) * 31) + Float.floatToIntBits(this.f14520d)) * 31;
        com.yandex.metrica.b bVar = this.f14521e;
        return floatToIntBits + (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "ScreenInfo(width=" + this.f14517a + ", height=" + this.f14518b + ", dpi=" + this.f14519c + ", scaleFactor=" + this.f14520d + ", deviceType=" + this.f14521e + ")";
    }
}
