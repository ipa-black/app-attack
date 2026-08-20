package com.apm.insight.runtime;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private String f1165a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f1166b = -1;

    public t(Context context) {
    }

    public String a() {
        if (TextUtils.isEmpty(this.f1165a) || "0".equals(this.f1165a)) {
            String d2 = com.apm.insight.i.a().d();
            this.f1165a = d2;
            if (TextUtils.isEmpty(d2) || "0".equals(this.f1165a)) {
                String b2 = s.a().b();
                this.f1165a = b2;
                return b2;
            }
            return this.f1165a;
        }
        return this.f1165a;
    }

    public void a(String str) {
        this.f1165a = str;
        s.a().b(str);
    }

    public boolean b() {
        return this.f1165a != null;
    }
}
