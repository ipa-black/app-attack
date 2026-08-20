package com.explorestack.iab.mraid;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f9313a;

    public b(List<String> list) {
        this.f9313a = list;
    }

    public b(String[] strArr) {
        this(strArr != null ? Arrays.asList(strArr) : null);
    }

    public boolean a() {
        MraidLog.d("MRAIDNativeFeatureManager", "isCalendarSupported: false (deprecated)");
        return false;
    }

    public boolean b() {
        List<String> list = this.f9313a;
        boolean z = list != null && list.contains("inlineVideo");
        MraidLog.d("MRAIDNativeFeatureManager", "isInlineVideoSupported " + z);
        return z;
    }

    public boolean c() {
        MraidLog.d("MRAIDNativeFeatureManager", "isSmsSupported: false (deprecated)");
        return false;
    }

    public boolean d() {
        MraidLog.d("MRAIDNativeFeatureManager", "isStorePictureSupported: false (deprecated)");
        return false;
    }

    public boolean e() {
        MraidLog.d("MRAIDNativeFeatureManager", "isTelSupported: false (deprecated)");
        return false;
    }
}
