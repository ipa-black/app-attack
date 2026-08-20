package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.hk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1593hk {

    /* renamed from: a  reason: collision with root package name */
    private final C1493dk f14874a;

    /* renamed from: b  reason: collision with root package name */
    private final C1443bk f14875b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1593hk(Context context) {
        this(new C1493dk(context), new C1443bk());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Wk a(Activity activity, C1544fl c1544fl) {
        if (c1544fl == null) {
            return Wk.NULL_UI_ACCESS_CONFIG;
        }
        if (!c1544fl.f14754a) {
            return Wk.UI_PARING_FEATURE_DISABLED;
        }
        C1960wl c1960wl = c1544fl.f14758e;
        if (c1960wl == null) {
            return Wk.NULL_UI_PARSING_CONFIG;
        }
        if (this.f14874a.a(activity, c1960wl)) {
            return Wk.FORBIDDEN_FOR_APP;
        }
        if (this.f14875b.a(activity, c1544fl.f14758e)) {
            return Wk.FORBIDDEN_FOR_ACTIVITY;
        }
        return Wk.OK;
    }

    C1593hk(C1493dk c1493dk, C1443bk c1443bk) {
        this.f14874a = c1493dk;
        this.f14875b = c1443bk;
    }
}
