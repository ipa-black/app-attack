package com.pgl.ssdk;

import android.content.Context;
/* compiled from: GetSecTokenReq.java */
/* loaded from: classes3.dex */
public class V extends G {
    private Context n;

    public V(Context context, String str) {
        super(context, null);
        this.n = context;
        this.f12162b = F.b() + b();
    }

    @Override // com.pgl.ssdk.G
    public boolean a(int i, byte[] bArr) {
        Object a2;
        try {
            a2 = S.a(bArr);
        } catch (Throwable unused) {
        }
        if ((a2 instanceof Integer) && ((Integer) a2).intValue() == 0) {
            S.f12189a = 200;
            return true;
        }
        if (a2 instanceof String) {
            S.f12191c = (String) a2;
            S.f12189a = 200;
            return true;
        }
        return false;
    }

    public String b() {
        return "?os=android&app_id=" + S.f12190b + "&did=" + com.pgl.ssdk.ces.c.e() + "&app_ver=" + x.c(this.n) + "&platform=android&ver=6.2.0.0.overseas-rc.2&mode=1";
    }
}
