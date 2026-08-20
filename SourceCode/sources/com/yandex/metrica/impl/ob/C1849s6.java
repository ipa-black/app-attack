package com.yandex.metrica.impl.ob;

import com.yandex.metrica.plugins.PluginErrorDetails;
/* renamed from: com.yandex.metrica.impl.ob.s6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1849s6 {

    /* renamed from: a  reason: collision with root package name */
    private final A0 f15707a;

    public C1849s6(A0 a0) {
        this.f15707a = a0;
    }

    public final H6 a(PluginErrorDetails pluginErrorDetails) {
        return I6.a(pluginErrorDetails.getExceptionClass(), pluginErrorDetails.getMessage(), pluginErrorDetails.getStacktrace(), pluginErrorDetails.getPlatform(), pluginErrorDetails.getVirtualMachineVersion(), pluginErrorDetails.getPluginEnvironment(), this.f15707a.a(), this.f15707a.b());
    }
}
