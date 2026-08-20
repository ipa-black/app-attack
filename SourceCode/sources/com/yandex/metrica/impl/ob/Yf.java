package com.yandex.metrica.impl.ob;

import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.plugins.PluginErrorDetails;
import com.yandex.metrica.plugins.StackTraceItem;
import java.util.Collection;
/* loaded from: classes5.dex */
public class Yf implements IPluginReporter {

    /* renamed from: a  reason: collision with root package name */
    private final Kn<PluginErrorDetails> f14314a = new Hn(new Gn("Error details"));

    /* renamed from: b  reason: collision with root package name */
    private final Kn<String> f14315b = new Hn(new Fn("Error identifier"));

    /* renamed from: c  reason: collision with root package name */
    private final Kn<Collection<StackTraceItem>> f14316c = new En("Stacktrace");

    public boolean a(PluginErrorDetails pluginErrorDetails, String str) {
        this.f14314a.a(pluginErrorDetails);
        return this.f14316c.a(pluginErrorDetails.getStacktrace()).b();
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        this.f14314a.a(pluginErrorDetails);
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        this.f14314a.a(pluginErrorDetails);
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f14315b.a(str);
    }
}
