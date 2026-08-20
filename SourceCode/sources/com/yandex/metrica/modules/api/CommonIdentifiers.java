package com.yandex.metrica.modules.api;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class CommonIdentifiers {

    /* renamed from: a  reason: collision with root package name */
    private final String f16185a;

    /* renamed from: b  reason: collision with root package name */
    private final String f16186b;

    public CommonIdentifiers(String str, String str2) {
        this.f16185a = str;
        this.f16186b = str2;
    }

    public static /* synthetic */ CommonIdentifiers copy$default(CommonIdentifiers commonIdentifiers, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = commonIdentifiers.f16185a;
        }
        if ((i & 2) != 0) {
            str2 = commonIdentifiers.f16186b;
        }
        return commonIdentifiers.copy(str, str2);
    }

    public final String component1() {
        return this.f16185a;
    }

    public final String component2() {
        return this.f16186b;
    }

    public final CommonIdentifiers copy(String str, String str2) {
        return new CommonIdentifiers(str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CommonIdentifiers) {
                CommonIdentifiers commonIdentifiers = (CommonIdentifiers) obj;
                return Intrinsics.areEqual(this.f16185a, commonIdentifiers.f16185a) && Intrinsics.areEqual(this.f16186b, commonIdentifiers.f16186b);
            }
            return false;
        }
        return true;
    }

    public final String getDevice() {
        return this.f16186b;
    }

    public final String getUuid() {
        return this.f16185a;
    }

    public int hashCode() {
        String str = this.f16185a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f16186b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "CommonIdentifiers(uuid=" + this.f16185a + ", device=" + this.f16186b + ")";
    }
}
