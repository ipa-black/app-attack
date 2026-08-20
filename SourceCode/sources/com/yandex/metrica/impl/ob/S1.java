package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.L3;
import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class S1<C extends L3> extends C1941w2<C> {

    /* renamed from: e  reason: collision with root package name */
    private Runnable f13842e;

    /* renamed from: f  reason: collision with root package name */
    private final ICommonExecutor f13843f;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            S1.this.d();
        }
    }

    public S1(C c2, InterfaceC2005yi interfaceC2005yi, ICommonExecutor iCommonExecutor) {
        super(c2, interfaceC2005yi);
        this.f13842e = new a();
        this.f13843f = iCommonExecutor;
    }

    @Override // com.yandex.metrica.impl.ob.C1941w2
    void c() {
        this.f13843f.remove(this.f13842e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.C1941w2
    public void f() {
        super.f();
        Lg m = ((L3) e()).m();
        if (m.F()) {
            String B = m.B();
            if (TextUtils.isEmpty(B) || "-1".equals(B)) {
                return;
            }
            try {
                NetworkServiceLocator.getInstance().getNetworkCore().startTask(C1832rd.a((L3) e()));
            } catch (Throwable unused) {
            }
        }
    }

    public void g() {
        synchronized (this.f15950b) {
            if (!this.f15951c) {
                c();
                if (((L3) e()).m().G() > 0) {
                    this.f13843f.executeDelayed(this.f13842e, TimeUnit.SECONDS.toMillis(((L3) e()).m().G()));
                }
            }
        }
    }
}
