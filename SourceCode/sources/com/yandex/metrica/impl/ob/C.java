package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1423b0;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class C implements InterfaceC1674l2 {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC1719mm<Intent>> f12720a;

    /* renamed from: b  reason: collision with root package name */
    private Intent f12721b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f12722c;

    /* renamed from: d  reason: collision with root package name */
    private final C1423b0 f12723d;

    /* loaded from: classes5.dex */
    class a implements InterfaceC1669km<Context, Intent> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1669km
        public void a(Context context, Intent intent) {
            Intent intent2 = intent;
            synchronized (C.this) {
                C.this.f12721b = intent2;
                C.this.a(intent2);
            }
        }
    }

    public C(Context context, ICommonExecutor iCommonExecutor) {
        this(context, iCommonExecutor, new C1423b0.a());
    }

    public synchronized Intent c(InterfaceC1719mm<Intent> interfaceC1719mm) {
        this.f12720a.add(interfaceC1719mm);
        return this.f12721b;
    }

    C(Context context, ICommonExecutor iCommonExecutor, C1423b0.a aVar) {
        this.f12720a = new ArrayList();
        this.f12721b = null;
        this.f12722c = context;
        this.f12723d = aVar.a(new Kl(new a(), iCommonExecutor));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public synchronized void a() {
        Intent a2 = this.f12723d.a(this.f12722c, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.f12721b = a2;
        a(a2);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public synchronized void b() {
        this.f12721b = null;
        this.f12723d.a(this.f12722c);
        a(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Intent intent) {
        for (InterfaceC1719mm<Intent> interfaceC1719mm : this.f12720a) {
            interfaceC1719mm.b(intent);
        }
    }
}
