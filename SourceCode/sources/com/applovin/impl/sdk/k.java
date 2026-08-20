package com.applovin.impl.sdk;

import android.content.Context;
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static final a f5819a = new a("Age Restricted User", com.applovin.impl.sdk.c.d.l);

    /* renamed from: b  reason: collision with root package name */
    private static final a f5820b = new a("Has User Consent", com.applovin.impl.sdk.c.d.k);

    /* renamed from: c  reason: collision with root package name */
    private static final a f5821c = new a("\"Do Not Sell\"", com.applovin.impl.sdk.c.d.m);

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f5822a;

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.impl.sdk.c.d<Boolean> f5823b;

        a(String str, com.applovin.impl.sdk.c.d<Boolean> dVar) {
            this.f5822a = str;
            this.f5823b = dVar;
        }

        public Boolean a(Context context) {
            if (context == null) {
                v.i("AppLovinSdk", "Failed to get value for key: " + this.f5823b);
                return null;
            }
            return (Boolean) com.applovin.impl.sdk.c.e.b(this.f5823b, (Object) null, context);
        }

        public String a() {
            return this.f5822a;
        }

        public String b(Context context) {
            Boolean a2 = a(context);
            return a2 != null ? a2.toString() : "No value set";
        }
    }

    public static a a() {
        return f5819a;
    }

    public static String a(Context context) {
        return a(f5819a, context) + a(f5820b, context) + a(f5821c, context);
    }

    private static String a(a aVar, Context context) {
        return "\n" + aVar.f5822a + " - " + aVar.b(context);
    }

    private static boolean a(com.applovin.impl.sdk.c.d<Boolean> dVar, Boolean bool, Context context) {
        if (context == null) {
            v.i("AppLovinSdk", "Failed to update compliance value for key: " + dVar);
            return false;
        }
        Boolean bool2 = (Boolean) com.applovin.impl.sdk.c.e.b(dVar, (Object) null, context);
        com.applovin.impl.sdk.c.e.a(dVar, bool, context);
        return bool2 == null || bool2 != bool;
    }

    public static boolean a(boolean z, Context context) {
        return a(com.applovin.impl.sdk.c.d.l, Boolean.valueOf(z), context);
    }

    public static a b() {
        return f5820b;
    }

    public static boolean b(boolean z, Context context) {
        return a(com.applovin.impl.sdk.c.d.k, Boolean.valueOf(z), context);
    }

    public static a c() {
        return f5821c;
    }

    public static boolean c(boolean z, Context context) {
        return a(com.applovin.impl.sdk.c.d.m, Boolean.valueOf(z), context);
    }
}
