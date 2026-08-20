package com.applovin.impl.mediation.debugger.b.c;

import android.content.Context;
import com.applovin.impl.sdk.utils.h;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final String f4987a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4988b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4989c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, String str2, Context context) {
        this.f4987a = str.replace("android.permission.", "");
        this.f4988b = str2;
        this.f4989c = h.a(str, context);
    }

    public String a() {
        return this.f4987a;
    }

    public String b() {
        return this.f4988b;
    }

    public boolean c() {
        return this.f4989c;
    }
}
