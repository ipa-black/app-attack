package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1423b0;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class J2 implements InterfaceC1674l2 {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC1694lm<Context, Intent, Void>> f13236a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13237b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f13238c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f13239d;

    /* renamed from: e  reason: collision with root package name */
    private final C1423b0 f13240e;

    /* loaded from: classes5.dex */
    class a implements InterfaceC1669km<Context, Intent> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1669km
        public void a(Context context, Intent intent) {
            J2.a(J2.this, context, intent);
        }
    }

    public J2(Context context, ICommonExecutor iCommonExecutor) {
        this(context, iCommonExecutor, new C1423b0.a());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public synchronized void a() {
        this.f13238c = true;
        if (!this.f13236a.isEmpty()) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            this.f13240e.a(this.f13239d, intentFilter);
            this.f13237b = true;
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public synchronized void b() {
        this.f13238c = false;
        if (this.f13237b) {
            this.f13240e.a(this.f13239d);
            this.f13237b = false;
        }
    }

    J2(Context context, ICommonExecutor iCommonExecutor, C1423b0.a aVar) {
        this.f13236a = new ArrayList();
        this.f13237b = false;
        this.f13238c = false;
        this.f13239d = context;
        this.f13240e = aVar.a(new Kl(new a(), iCommonExecutor));
    }

    public synchronized void b(InterfaceC1694lm<Context, Intent, Void> interfaceC1694lm) {
        this.f13236a.remove(interfaceC1694lm);
        if (this.f13236a.isEmpty() && this.f13237b) {
            this.f13240e.a(this.f13239d);
            this.f13237b = false;
        }
    }

    public synchronized void a(InterfaceC1694lm<Context, Intent, Void> interfaceC1694lm) {
        this.f13236a.add(interfaceC1694lm);
        if (this.f13238c && !this.f13237b) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            this.f13240e.a(this.f13239d, intentFilter);
            this.f13237b = true;
        }
    }

    static void a(J2 j2, Context context, Intent intent) {
        synchronized (j2) {
            for (InterfaceC1694lm<Context, Intent, Void> interfaceC1694lm : j2.f13236a) {
                interfaceC1694lm.a(context, intent);
            }
        }
    }
}
