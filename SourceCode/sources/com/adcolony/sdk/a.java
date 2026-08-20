package com.adcolony.sdk;

import android.app.Activity;
import android.content.Context;
import com.adcolony.sdk.e0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Context f124a = null;

    /* renamed from: b  reason: collision with root package name */
    private static k f125b = null;

    /* renamed from: c  reason: collision with root package name */
    static boolean f126c = false;

    /* renamed from: d  reason: collision with root package name */
    static boolean f127d = false;

    /* renamed from: e  reason: collision with root package name */
    static boolean f128e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(AdColonyAppOptions adColonyAppOptions) {
        f128e = adColonyAppOptions.getIsChildDirectedApp() && (!adColonyAppOptions.isPrivacyFrameworkRequiredSet(AdColonyAppOptions.COPPA) || adColonyAppOptions.getPrivacyFrameworkRequired(AdColonyAppOptions.COPPA));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k b() {
        if (!d()) {
            Context a2 = a();
            if (a2 != null) {
                f125b = new k();
                f125b.a(new AdColonyAppOptions().a(c0.h(c0.c(a2.getFilesDir().getAbsolutePath() + "/adc3/AppInfo"), "appId")), false);
            } else {
                return new k();
            }
        }
        return f125b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        return f124a != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d() {
        return f125b != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e() {
        return f126c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f() {
        b().r().j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, AdColonyAppOptions adColonyAppOptions, boolean z) {
        a((z && (context instanceof Activity)) ? ((Activity) context).getApplication() : context);
        f127d = true;
        if (f125b == null) {
            f125b = new k();
            adColonyAppOptions.b(context);
            f125b.a(adColonyAppOptions, z);
        } else {
            adColonyAppOptions.b(context);
            f125b.a(adColonyAppOptions);
        }
        a(adColonyAppOptions);
        q n = f125b.n();
        n.a(context);
        n.b(context);
        new e0.a().a("Configuring AdColony").a(e0.f293d);
        f125b.c(false);
        f125b.x().g(false);
        f125b.d(true);
        f125b.x().c(false);
        f125b.x().d(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, j0 j0Var) {
        b().r().b(str, j0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        f124a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Context a() {
        return f124a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, j0 j0Var) {
        b().r().a(str, j0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j0 a(String str, j0 j0Var, boolean z) {
        b().r().a(str, j0Var);
        return j0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, f1 f1Var) {
        if (f1Var == null) {
            f1Var = c0.b();
        }
        c0.a(f1Var, "m_type", str);
        b().r().c(f1Var);
    }
}
