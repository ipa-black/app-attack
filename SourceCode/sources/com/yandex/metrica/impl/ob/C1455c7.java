package com.yandex.metrica.impl.ob;

import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.c7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1455c7 {

    /* renamed from: a  reason: collision with root package name */
    private final EnumC1555g7 f14530a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14531b;

    public C1455c7() {
        this(null, null, 3);
    }

    public C1455c7(EnumC1555g7 enumC1555g7, String str) {
        this.f14530a = enumC1555g7;
        this.f14531b = str;
    }

    public final String a() {
        return this.f14531b;
    }

    public final EnumC1555g7 b() {
        return this.f14530a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C1455c7) {
                C1455c7 c1455c7 = (C1455c7) obj;
                return Intrinsics.areEqual(this.f14530a, c1455c7.f14530a) && Intrinsics.areEqual(this.f14531b, c1455c7.f14531b);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        EnumC1555g7 enumC1555g7 = this.f14530a;
        int hashCode = (enumC1555g7 != null ? enumC1555g7.hashCode() : 0) * 31;
        String str = this.f14531b;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "NativeCrashHandlerDescription(source=" + this.f14530a + ", handlerVersion=" + this.f14531b + ")";
    }

    public /* synthetic */ C1455c7(EnumC1555g7 enumC1555g7, String str, int i) {
        this((i & 1) != 0 ? EnumC1555g7.UNKNOWN : null, null);
    }
}
