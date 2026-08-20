package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageManager;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.h5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1578h5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final I1 f14829b;

    /* renamed from: c  reason: collision with root package name */
    private final C1431b8 f14830c;

    /* renamed from: d  reason: collision with root package name */
    private final C1720mn f14831d;

    public C1578h5(L3 l3) {
        this(l3, l3.x(), F0.g().k(), new C1720mn());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        C1448c0 c2;
        String str;
        L3 a2 = a();
        if (this.f14830c.l()) {
            return false;
        }
        if (a2.m().P()) {
            c2 = C1448c0.e(c1448c0);
        } else {
            c2 = C1448c0.c(c1448c0);
        }
        JSONObject jSONObject = new JSONObject();
        C1720mn c1720mn = this.f14831d;
        Context g2 = a2.g();
        String b2 = a2.e().b();
        c1720mn.getClass();
        JSONObject jSONObject2 = null;
        try {
            PackageManager packageManager = g2.getPackageManager();
            if (A2.a(30)) {
                str = C1745nn.a(packageManager, b2);
            } else {
                str = packageManager.getInstallerPackageName(b2);
            }
        } catch (Throwable unused) {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        try {
            jSONObject.put("appInstaller", str);
            C1512ee b3 = this.f14829b.b();
            if (b3.f14678c) {
                jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("trackingId", b3.f14676a);
                    if (b3.f14677b.length() > 0) {
                        jSONObject2.put("additionalParams", b3.f14677b);
                    }
                } catch (Throwable unused2) {
                }
            }
            jSONObject.put("preloadInfo", jSONObject2);
        } catch (Throwable unused3) {
        }
        a2.r().b(c2.f(jSONObject.toString()));
        this.f14830c.b(true);
        return false;
    }

    C1578h5(L3 l3, C1431b8 c1431b8, I1 i1, C1720mn c1720mn) {
        super(l3);
        this.f14830c = c1431b8;
        this.f14829b = i1;
        this.f14831d = c1720mn;
    }
}
