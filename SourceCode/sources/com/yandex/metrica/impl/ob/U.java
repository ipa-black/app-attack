package com.yandex.metrica.impl.ob;

import android.os.Build;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes5.dex */
public class U {

    /* renamed from: f  reason: collision with root package name */
    private static final Object f13983f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private static volatile U f13984g;

    /* renamed from: a  reason: collision with root package name */
    public final String f13985a = Build.MANUFACTURER;

    /* renamed from: b  reason: collision with root package name */
    public final String f13986b = Build.MODEL;

    /* renamed from: c  reason: collision with root package name */
    public final String f13987c = Build.VERSION.RELEASE;

    /* renamed from: d  reason: collision with root package name */
    public final int f13988d = Build.VERSION.SDK_INT;

    /* renamed from: e  reason: collision with root package name */
    public final String f13989e = String.valueOf(X1.a());

    /* loaded from: classes5.dex */
    class a extends ArrayList<String> {
        a(U u) {
            if (X1.b()) {
                add("Superuser.apk");
            }
            if (X1.c()) {
                add("su.so");
            }
        }
    }

    public U() {
        Collections.unmodifiableList(new a(this));
    }

    public static U a() {
        if (f13984g == null) {
            synchronized (f13983f) {
                if (f13984g == null) {
                    f13984g = new U();
                }
            }
        }
        return f13984g;
    }
}
