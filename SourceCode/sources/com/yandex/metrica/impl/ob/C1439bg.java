package com.yandex.metrica.impl.ob;

import android.os.Handler;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
/* renamed from: com.yandex.metrica.impl.ob.bg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1439bg implements InterfaceC1464cg {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f14466a;

    /* renamed from: b  reason: collision with root package name */
    private final T1 f14467b;

    /* renamed from: c  reason: collision with root package name */
    private final C1432b9 f14468c;

    /* renamed from: d  reason: collision with root package name */
    private final C1747o0 f14469d;

    /* renamed from: e  reason: collision with root package name */
    private final K1 f14470e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f14471f;

    public C1439bg(T1 t1, C1432b9 c1432b9, Handler handler) {
        this(t1, c1432b9, handler, c1432b9.w());
    }

    public void a() {
        if (this.f14466a) {
            return;
        }
        this.f14467b.a(new ResultReceiverC1514eg(this.f14471f, this));
    }

    private C1439bg(T1 t1, C1432b9 c1432b9, Handler handler, boolean z) {
        this(t1, c1432b9, handler, z, new C1747o0(z), new K1());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1464cg
    public void a(C1489dg c1489dg) {
        String str = c1489dg == null ? null : c1489dg.f14597a;
        if (!this.f14466a) {
            synchronized (this) {
                this.f14469d.a(this.f14470e.a(str));
            }
        }
    }

    C1439bg(T1 t1, C1432b9 c1432b9, Handler handler, boolean z, C1747o0 c1747o0, K1 k1) {
        this.f14467b = t1;
        this.f14468c = c1432b9;
        this.f14466a = z;
        this.f14469d = c1747o0;
        this.f14470e = k1;
        this.f14471f = handler;
    }

    public synchronized void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.f14469d.a(deferredDeeplinkParametersListener);
        this.f14468c.y();
    }

    public synchronized void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        this.f14469d.a(deferredDeeplinkListener);
        this.f14468c.y();
    }
}
