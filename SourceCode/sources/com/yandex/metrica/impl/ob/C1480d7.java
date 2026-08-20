package com.yandex.metrica.impl.ob;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.d7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1480d7 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f14582a;

    /* renamed from: b  reason: collision with root package name */
    private final C1455c7 f14583b;

    public C1480d7(byte[] bArr, C1455c7 c1455c7) {
        this.f14582a = bArr;
        this.f14583b = c1455c7;
    }

    public final byte[] a() {
        return this.f14582a;
    }

    public final C1455c7 b() {
        return this.f14583b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C1480d7) {
                C1480d7 c1480d7 = (C1480d7) obj;
                return Intrinsics.areEqual(this.f14582a, c1480d7.f14582a) && Intrinsics.areEqual(this.f14583b, c1480d7.f14583b);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        byte[] bArr = this.f14582a;
        int hashCode = (bArr != null ? Arrays.hashCode(bArr) : 0) * 31;
        C1455c7 c1455c7 = this.f14583b;
        return hashCode + (c1455c7 != null ? c1455c7.hashCode() : 0);
    }

    public String toString() {
        return "NativeCrashModel(data=" + Arrays.toString(this.f14582a) + ", handlerDescription=" + this.f14583b + ")";
    }
}
