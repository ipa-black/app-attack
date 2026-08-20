package com.ironsource.sdk.i;

import android.app.Activity;
import android.content.Context;
import com.ironsource.sdk.controller.x;
import com.ironsource.sdk.g.d;
import com.ironsource.sdk.utils.b;
/* loaded from: classes3.dex */
public final class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.sdk.i.a$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12078a;

        static {
            int[] iArr = new int[d.a.a().length];
            f12078a = iArr;
            try {
                int i = d.a.f12040a;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f12078a;
                int i2 = d.a.f12041b;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f12078a;
                int i3 = d.a.f12042c;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static boolean a(Activity activity) {
        int parseInt = Integer.parseInt(b.a().f12137a.getString("back_button_state", "2"));
        if (AnonymousClass1.f12078a[(parseInt == 0 ? d.a.f12040a : parseInt == 1 ? d.a.f12041b : d.a.f12042c) - 1] != 3) {
            return false;
        }
        try {
            x xVar = (x) com.ironsource.sdk.d.b.a((Context) activity).f11936a.f11643a;
            if (xVar != null) {
                xVar.b(x.b("nativeNavigationPressed", x.a("action", "back", null, null, null, null, null, null, null, false)));
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
