package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class Ul {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, C1470cm> f14125a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, Sl> f14126b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f14127c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f14128d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f14129e = 0;

    public static Sl a(String str) {
        if (TextUtils.isEmpty(str)) {
            return Sl.a();
        }
        Sl sl = f14126b.get(str);
        if (sl == null) {
            synchronized (f14128d) {
                sl = f14126b.get(str);
                if (sl == null) {
                    sl = new Sl(str);
                    f14126b.put(str, sl);
                }
            }
        }
        return sl;
    }

    public static C1470cm b(String str) {
        if (TextUtils.isEmpty(str)) {
            return C1470cm.a();
        }
        C1470cm c1470cm = f14125a.get(str);
        if (c1470cm == null) {
            synchronized (f14127c) {
                c1470cm = f14125a.get(str);
                if (c1470cm == null) {
                    c1470cm = new C1470cm(str);
                    f14125a.put(str, c1470cm);
                }
            }
        }
        return c1470cm;
    }

    public static C1470cm a() {
        return C1470cm.a();
    }
}
