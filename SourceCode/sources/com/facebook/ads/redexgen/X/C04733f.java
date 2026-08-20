package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.3f  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04733f {
    public static final InterfaceC04723e A01;
    public final Object A00;

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            A01 = new ED();
        } else if (Build.VERSION.SDK_INT >= 16) {
            A01 = new EE();
        } else {
            A01 = new C1235Yi();
        }
    }

    public C04733f() {
        this.A00 = A01.A9t(this);
    }

    public C04733f(Object obj) {
        this.A00 = obj;
    }

    @Nullable
    public final C04713d A00(int i) {
        return null;
    }

    @Nullable
    public final C04713d A01(int i) {
        return null;
    }

    public final Object A02() {
        return this.A00;
    }

    @Nullable
    public final List<C04713d> A03(String str, int i) {
        return null;
    }

    public final boolean A04(int i, int i2, Bundle bundle) {
        return false;
    }
}
