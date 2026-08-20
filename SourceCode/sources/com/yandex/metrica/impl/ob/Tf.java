package com.yandex.metrica.impl.ob;

import android.util.Log;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.plugins.PluginErrorDetails;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Tf {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f13953a;

    /* renamed from: b  reason: collision with root package name */
    private final Sf f13954b;

    /* renamed from: c  reason: collision with root package name */
    private final Kf f13955c;

    /* renamed from: d  reason: collision with root package name */
    private final Xf f13956d;

    /* renamed from: e  reason: collision with root package name */
    private final com.yandex.metrica.f f13957e;

    /* loaded from: classes5.dex */
    static final class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f13959b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f13960c;

        a(PluginErrorDetails pluginErrorDetails, String str) {
            this.f13959b = pluginErrorDetails;
            this.f13960c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Tf.a(Tf.this).getPluginExtension().reportError(this.f13959b, this.f13960c);
        }
    }

    /* loaded from: classes5.dex */
    static final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13962b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f13963c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f13964d;

        b(String str, String str2, PluginErrorDetails pluginErrorDetails) {
            this.f13962b = str;
            this.f13963c = str2;
            this.f13964d = pluginErrorDetails;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Tf.a(Tf.this).getPluginExtension().reportError(this.f13962b, this.f13963c, this.f13964d);
        }
    }

    /* loaded from: classes5.dex */
    static final class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f13966b;

        c(PluginErrorDetails pluginErrorDetails) {
            this.f13966b = pluginErrorDetails;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Tf.a(Tf.this).getPluginExtension().reportUnhandledException(this.f13966b);
        }
    }

    public Tf(ICommonExecutor iCommonExecutor, Sf sf, Kf kf, Xf xf, com.yandex.metrica.f fVar) {
        this.f13953a = iCommonExecutor;
        this.f13954b = sf;
        this.f13955c = kf;
        this.f13956d = xf;
        this.f13957e = fVar;
    }

    public final void a(PluginErrorDetails pluginErrorDetails) {
        this.f13955c.a(null);
        this.f13956d.a().reportUnhandledException(pluginErrorDetails);
        com.yandex.metrica.f fVar = this.f13957e;
        Intrinsics.checkNotNull(pluginErrorDetails);
        fVar.getClass();
        this.f13953a.execute(new c(pluginErrorDetails));
    }

    public Tf(ICommonExecutor iCommonExecutor) {
        this(iCommonExecutor, new Sf());
    }

    private Tf(ICommonExecutor iCommonExecutor, Sf sf) {
        this(iCommonExecutor, sf, new Kf(sf), new Xf(), new com.yandex.metrica.f(sf, new D2()));
    }

    public final void a(PluginErrorDetails pluginErrorDetails, String str) {
        this.f13955c.a(null);
        if (!this.f13956d.a().a(pluginErrorDetails, str)) {
            Log.w("AppMetrica", "Error stacktrace must be non empty");
            return;
        }
        com.yandex.metrica.f fVar = this.f13957e;
        Intrinsics.checkNotNull(pluginErrorDetails);
        fVar.getClass();
        this.f13953a.execute(new a(pluginErrorDetails, str));
    }

    public final void a(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f13955c.a(null);
        this.f13956d.a().reportError(str, str2, pluginErrorDetails);
        com.yandex.metrica.f fVar = this.f13957e;
        Intrinsics.checkNotNull(str);
        fVar.getClass();
        this.f13953a.execute(new b(str, str2, pluginErrorDetails));
    }

    public static final K0 a(Tf tf) {
        tf.f13954b.getClass();
        R2 k = R2.k();
        Intrinsics.checkNotNull(k);
        Intrinsics.checkNotNullExpressionValue(k, "provider.peekInitializedImpl()!!");
        C1648k1 d2 = k.d();
        Intrinsics.checkNotNull(d2);
        Intrinsics.checkNotNullExpressionValue(d2, "provider.peekInitialized…rterApiConsumerProvider!!");
        K0 b2 = d2.b();
        Intrinsics.checkNotNullExpressionValue(b2, "provider.peekInitialized…erProvider!!.mainReporter");
        return b2;
    }
}
