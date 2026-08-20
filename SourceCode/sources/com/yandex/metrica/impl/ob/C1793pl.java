package com.yandex.metrica.impl.ob;

import android.app.Activity;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.pl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1793pl {

    /* renamed from: a  reason: collision with root package name */
    private final Kk f15409a;

    /* renamed from: b  reason: collision with root package name */
    private final Ik f15410b;

    /* renamed from: c  reason: collision with root package name */
    private final Jk f15411c;

    /* renamed from: d  reason: collision with root package name */
    private final Gk f15412d;

    /* renamed from: e  reason: collision with root package name */
    private final String f15413e;

    public C1793pl(Kk kk, Ik ik, Jk jk, Gk gk, String str) {
        this.f15409a = kk;
        this.f15410b = ik;
        this.f15411c = jk;
        this.f15412d = gk;
        this.f15413e = str;
    }

    public JSONObject a(Activity activity, C1494dl c1494dl, C1594hl c1594hl, Ak ak, long j) {
        JSONObject a2 = this.f15409a.a(activity, j);
        try {
            this.f15411c.a(a2, new JSONObject(), this.f15413e);
            this.f15411c.a(a2, this.f15410b.a(c1494dl, c1594hl, ak, (a2.toString().getBytes().length + (this.f15412d.a(new JSONObject()).toString().getBytes().length - 2)) - 2), this.f15413e);
        } catch (Throwable unused) {
        }
        return a2;
    }
}
