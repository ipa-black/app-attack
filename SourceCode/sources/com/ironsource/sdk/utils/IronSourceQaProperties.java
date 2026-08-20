package com.ironsource.sdk.utils;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class IronSourceQaProperties {

    /* renamed from: a  reason: collision with root package name */
    private static IronSourceQaProperties f12117a;

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, String> f12118b = new HashMap();

    private IronSourceQaProperties() {
    }

    public static IronSourceQaProperties getInstance() {
        if (f12117a == null) {
            f12117a = new IronSourceQaProperties();
        }
        return f12117a;
    }

    public static boolean isInitialized() {
        return f12117a != null;
    }

    public Map<String, String> getParameters() {
        return f12118b;
    }

    public void setQaParameter(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        f12118b.put(str, str2);
    }
}
