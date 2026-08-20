package com.criteo.publisher.logging;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LogMessage.kt */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final int f8960a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8961b;

    /* renamed from: c  reason: collision with root package name */
    private final Throwable f8962c;

    /* renamed from: d  reason: collision with root package name */
    private final String f8963d;

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                return this.f8960a == eVar.f8960a && Intrinsics.areEqual(this.f8961b, eVar.f8961b) && Intrinsics.areEqual(this.f8962c, eVar.f8962c) && Intrinsics.areEqual(this.f8963d, eVar.f8963d);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f8960a * 31;
        String str = this.f8961b;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        Throwable th = this.f8962c;
        int hashCode2 = (hashCode + (th != null ? th.hashCode() : 0)) * 31;
        String str2 = this.f8963d;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "LogMessage(level=" + this.f8960a + ", message=" + this.f8961b + ", throwable=" + this.f8962c + ", logId=" + this.f8963d + ")";
    }

    public e(int i, String str, Throwable th, String str2) {
        this.f8960a = i;
        this.f8961b = str;
        this.f8962c = th;
        this.f8963d = str2;
    }

    public final int a() {
        return this.f8960a;
    }

    public final String c() {
        return this.f8961b;
    }

    public final Throwable d() {
        return this.f8962c;
    }

    public /* synthetic */ e(int i, String str, Throwable th, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 4 : i, str, (i2 & 4) != 0 ? null : th, (i2 & 8) != 0 ? null : str2);
    }

    public final String b() {
        return this.f8963d;
    }
}
