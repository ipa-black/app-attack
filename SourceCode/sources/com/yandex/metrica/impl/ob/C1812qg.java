package com.yandex.metrica.impl.ob;

import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1489dg;
/* renamed from: com.yandex.metrica.impl.ob.qg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1812qg implements InterfaceC1663kg {

    /* renamed from: a  reason: collision with root package name */
    private final InstallReferrerClient f15571a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f15572b;

    /* renamed from: com.yandex.metrica.impl.ob.qg$a */
    /* loaded from: classes5.dex */
    class a implements InstallReferrerStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InterfaceC1931vg f15573a;

        /* renamed from: com.yandex.metrica.impl.ob.qg$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class RunnableC0358a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ C1489dg f15575a;

            RunnableC0358a(C1489dg c1489dg) {
                this.f15575a = c1489dg;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f15573a.a(this.f15575a);
            }
        }

        a(InterfaceC1931vg interfaceC1931vg) {
            this.f15573a = interfaceC1931vg;
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerServiceDisconnected() {
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerSetupFinished(int i) {
            if (i == 0) {
                try {
                    ReferrerDetails installReferrer = C1812qg.this.f15571a.getInstallReferrer();
                    C1812qg.this.f15572b.execute(new RunnableC0358a(new C1489dg(installReferrer.getInstallReferrer(), installReferrer.getReferrerClickTimestampSeconds(), installReferrer.getInstallBeginTimestampSeconds(), C1489dg.a.GP)));
                } catch (Throwable th) {
                    C1812qg.a(C1812qg.this, this.f15573a, th);
                }
            } else {
                C1812qg.a(C1812qg.this, this.f15573a, new IllegalStateException("Referrer check failed with error " + i));
            }
            try {
                C1812qg.this.f15571a.endConnection();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1812qg(InstallReferrerClient installReferrerClient, ICommonExecutor iCommonExecutor) {
        this.f15571a = installReferrerClient;
        this.f15572b = iCommonExecutor;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1663kg
    public void a(InterfaceC1931vg interfaceC1931vg) throws Throwable {
        this.f15571a.startConnection(new a(interfaceC1931vg));
    }

    static void a(C1812qg c1812qg, InterfaceC1931vg interfaceC1931vg, Throwable th) {
        c1812qg.f15572b.execute(new RunnableC1835rg(c1812qg, interfaceC1931vg, th));
    }
}
