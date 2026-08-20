package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
/* renamed from: com.yandex.metrica.impl.ob.f0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class ResultReceiverC1523f0 extends ResultReceiver {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f14707b = 0;

    /* renamed from: a  reason: collision with root package name */
    private final a f14708a;

    /* renamed from: com.yandex.metrica.impl.ob.f0$a */
    /* loaded from: classes5.dex */
    public interface a {
        void a(int i, Bundle bundle);
    }

    public ResultReceiverC1523f0(Handler handler, a aVar) {
        super(handler);
        this.f14708a = aVar;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.setClassLoader(C1544fl.class.getClassLoader());
        this.f14708a.a(i, bundle);
    }
}
