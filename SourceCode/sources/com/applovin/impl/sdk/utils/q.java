package com.applovin.impl.sdk.utils;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.impl.sdk.v;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f6196a;

    /* renamed from: b  reason: collision with root package name */
    private String f6197b;

    /* renamed from: c  reason: collision with root package name */
    private final String f6198c;

    /* renamed from: d  reason: collision with root package name */
    private final String f6199d;

    public q(com.applovin.impl.sdk.n nVar) {
        this.f6196a = nVar;
        this.f6198c = a(com.applovin.impl.sdk.c.d.f5614g, (String) com.applovin.impl.sdk.c.e.b(com.applovin.impl.sdk.c.d.f5613f, (Object) null, nVar.P()));
        this.f6199d = a(com.applovin.impl.sdk.c.d.f5615h, (String) nVar.a(com.applovin.impl.sdk.c.b.aa));
        a(d());
    }

    private String a(com.applovin.impl.sdk.c.d<String> dVar, String str) {
        String str2 = (String) com.applovin.impl.sdk.c.e.b(dVar, (Object) null, this.f6196a.P());
        if (StringUtils.isValidString(str2)) {
            return str2;
        }
        if (!StringUtils.isValidString(str)) {
            str = UUID.randomUUID().toString().toLowerCase(Locale.US);
        }
        com.applovin.impl.sdk.c.e.a(dVar, str, this.f6196a.P());
        return str;
    }

    public static String a(com.applovin.impl.sdk.n nVar) {
        String str = (String) nVar.a(com.applovin.impl.sdk.c.d.i);
        if (TextUtils.isEmpty(str)) {
            String valueOf = String.valueOf(((int) (Math.random() * 100.0d)) + 1);
            nVar.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.i, (com.applovin.impl.sdk.c.d<String>) valueOf);
            return valueOf;
        }
        return str;
    }

    private String d() {
        if (!((Boolean) this.f6196a.a(com.applovin.impl.sdk.c.b.dH)).booleanValue()) {
            this.f6196a.b(com.applovin.impl.sdk.c.d.f5612e);
        }
        String str = (String) this.f6196a.a(com.applovin.impl.sdk.c.d.f5612e);
        if (StringUtils.isValidString(str)) {
            this.f6196a.D();
            if (v.a()) {
                this.f6196a.D().b("AppLovinSdk", "Using identifier (" + str + ") from previous session");
            }
            return str;
        }
        return null;
    }

    public String a() {
        return this.f6197b;
    }

    public void a(String str) {
        if (((Boolean) this.f6196a.a(com.applovin.impl.sdk.c.b.dH)).booleanValue()) {
            this.f6196a.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.f5612e, (com.applovin.impl.sdk.c.d<String>) str);
        }
        this.f6197b = str;
        Bundle bundle = new Bundle(2);
        bundle.putString("user_id", StringUtils.emptyIfNull(str));
        bundle.putString("applovin_random_token", c());
        this.f6196a.aj().a(bundle, "user_info");
    }

    public String b() {
        return this.f6198c;
    }

    public String c() {
        return this.f6199d;
    }
}
