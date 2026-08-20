package com.yandex.metrica.impl.ob;

import android.util.Log;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.plugins.PluginErrorDetails;
/* loaded from: classes5.dex */
public class Nf implements IPluginReporter {

    /* renamed from: a  reason: collision with root package name */
    private final Yf f13543a;

    /* renamed from: b  reason: collision with root package name */
    private final com.yandex.metrica.f f13544b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f13545c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1818qm<M0> f13546d;

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f13547a;

        a(PluginErrorDetails pluginErrorDetails) {
            this.f13547a = pluginErrorDetails;
        }

        @Override // java.lang.Runnable
        public void run() {
            Nf.a(Nf.this).reportUnhandledException(this.f13547a);
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f13549a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13550b;

        b(PluginErrorDetails pluginErrorDetails, String str) {
            this.f13549a = pluginErrorDetails;
            this.f13550b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Nf.a(Nf.this).reportError(this.f13549a, this.f13550b);
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13552a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13553b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f13554c;

        c(String str, String str2, PluginErrorDetails pluginErrorDetails) {
            this.f13552a = str;
            this.f13553b = str2;
            this.f13554c = pluginErrorDetails;
        }

        @Override // java.lang.Runnable
        public void run() {
            Nf.a(Nf.this).reportError(this.f13552a, this.f13553b, this.f13554c);
        }
    }

    public Nf(Yf yf, com.yandex.metrica.f fVar, ICommonExecutor iCommonExecutor, InterfaceC1818qm<M0> interfaceC1818qm) {
        this.f13543a = yf;
        this.f13544b = fVar;
        this.f13545c = iCommonExecutor;
        this.f13546d = interfaceC1818qm;
    }

    static IPluginReporter a(Nf nf) {
        return nf.f13546d.a().getPluginExtension();
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        if (!this.f13543a.a(pluginErrorDetails, str)) {
            Log.w("AppMetrica", "Error stacktrace must be non empty");
            return;
        }
        this.f13544b.getClass();
        this.f13545c.execute(new b(pluginErrorDetails, str));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        this.f13543a.reportUnhandledException(pluginErrorDetails);
        this.f13544b.getClass();
        this.f13545c.execute(new a(pluginErrorDetails));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f13543a.reportError(str, str2, pluginErrorDetails);
        this.f13544b.getClass();
        this.f13545c.execute(new c(str, str2, pluginErrorDetails));
    }
}
