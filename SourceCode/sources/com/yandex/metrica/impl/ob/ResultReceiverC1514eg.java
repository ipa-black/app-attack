package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
/* renamed from: com.yandex.metrica.impl.ob.eg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class ResultReceiverC1514eg extends ResultReceiver {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f14684b = 0;

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1464cg f14685a;

    public ResultReceiverC1514eg(Handler handler, InterfaceC1464cg interfaceC1464cg) {
        super(handler);
        this.f14685a = interfaceC1464cg;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        C1489dg c1489dg;
        if (i == 1) {
            try {
                c1489dg = C1489dg.a(bundle.getByteArray("referrer"));
            } catch (Throwable unused) {
                c1489dg = null;
            }
            this.f14685a.a(c1489dg);
        }
    }
}
