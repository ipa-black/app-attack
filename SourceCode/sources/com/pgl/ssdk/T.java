package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
/* compiled from: TokenReqRunnable.java */
/* loaded from: classes3.dex */
public class T implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final U f12193a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f12194b;

    public T(Context context, U u) {
        this.f12193a = u;
        this.f12194b = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        byte[] bArr;
        int i = F.f12160a;
        String str = i != 0 ? i != 1 ? "" : "https://ssdk-va.pangle.io/ssdk/sd/token" : "https://ssdk-sg.pangle.io/ssdk/sd/token";
        try {
            bArr = (byte[]) com.pgl.ssdk.ces.a.meta(301, this.f12194b, null);
        } catch (Throwable unused) {
            S.f12189a = 501;
        }
        if (bArr != null && bArr.length > 0) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            new V(this.f12194b, null).a(1, 2, bArr);
            U u = this.f12193a;
            if (u != null) {
                u.a(S.a());
                return;
            }
            return;
        }
        S.f12189a = 501;
    }
}
