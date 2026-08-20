package com.yandex.metrica.impl.ob;

import com.yandex.metrica.plugins.PluginErrorDetails;
import com.yandex.metrica.plugins.YandexMetricaPlugins;
/* loaded from: classes5.dex */
public final class V2 implements YandexMetricaPlugins {

    /* renamed from: a  reason: collision with root package name */
    private final Tf f14138a;

    public V2(Tf tf) {
        this.f14138a = tf;
    }

    @Override // com.yandex.metrica.plugins.YandexMetricaPlugins
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        this.f14138a.a(pluginErrorDetails, str);
    }

    @Override // com.yandex.metrica.plugins.YandexMetricaPlugins
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        this.f14138a.a(pluginErrorDetails);
    }

    @Override // com.yandex.metrica.plugins.YandexMetricaPlugins
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f14138a.a(str, str2, pluginErrorDetails);
    }
}
