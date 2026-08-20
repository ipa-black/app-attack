package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.z1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2012z1 {

    /* renamed from: a  reason: collision with root package name */
    private final B0 f16138a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16139b;

    public C2012z1(Xl xl) {
        this(xl, new B0());
    }

    public void a(Context context) {
        long j;
        String a2;
        synchronized (this) {
        }
        if (this.f16139b) {
            return;
        }
        synchronized (this) {
            try {
                a2 = L0.a(this.f16138a.a(context, "metrica_service_settings.dat"));
            } catch (Throwable unused) {
            }
            if (!TextUtils.isEmpty(a2)) {
                j = new JSONObject(a2).optLong("delay");
            }
            j = 0;
        }
        if (j > 0) {
            try {
                Thread.sleep(j);
            } catch (Throwable unused2) {
            }
        }
        this.f16139b = true;
    }

    C2012z1(Xl xl, B0 b0) {
        this.f16139b = false;
        this.f16138a = b0;
    }
}
