package com.yandex.metrica.impl.ob;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes5.dex */
public class Kl extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1669km<Context, Intent> f13372a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f13373b;

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f13374a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Intent f13375b;

        a(Context context, Intent intent) {
            this.f13374a = context;
            this.f13375b = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Kl.this.f13372a.a(this.f13374a, this.f13375b);
        }
    }

    public Kl(InterfaceC1669km<Context, Intent> interfaceC1669km, ICommonExecutor iCommonExecutor) {
        this.f13372a = interfaceC1669km;
        this.f13373b = iCommonExecutor;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f13373b.execute(new a(context, intent));
    }
}
