package com.yandex.metrica.impl.ob;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public class F1 {

    /* renamed from: a  reason: collision with root package name */
    private final int f12914a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12915b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12916c;

    public F1(int i, int i2, int i3) {
        this.f12914a = i;
        this.f12915b = i2;
        this.f12916c = i3;
    }

    public final int a(Boolean bool) {
        if (bool == null) {
            return this.f12914a;
        }
        if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
            return this.f12915b;
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            return this.f12916c;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Boolean a(int i) {
        if (i == this.f12915b) {
            return Boolean.FALSE;
        }
        if (i == this.f12916c) {
            return Boolean.TRUE;
        }
        return null;
    }
}
