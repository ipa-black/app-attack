package com.ironsource.sdk.a;

import android.content.Context;
import com.adcolony.adcolonysdk.BuildConfig;
import com.ironsource.sdk.utils.SDKUtils;
import com.onesignal.NotificationBundleProcessor;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class b implements com.ironsource.a.c {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Object> f11501a = new HashMap();

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f11502a;

        /* renamed from: b  reason: collision with root package name */
        public String f11503b;

        /* renamed from: c  reason: collision with root package name */
        public Context f11504c;

        /* renamed from: d  reason: collision with root package name */
        public String f11505d;
    }

    private b(a aVar) {
        Context context = aVar.f11504c;
        com.ironsource.sdk.utils.a a2 = com.ironsource.sdk.utils.a.a(context);
        f11501a.put("deviceos", SDKUtils.encodeString(a2.f12132c));
        f11501a.put("deviceosversion", SDKUtils.encodeString(a2.f12133d));
        f11501a.put("deviceapilevel", Integer.valueOf(a2.f12134e));
        f11501a.put("deviceoem", SDKUtils.encodeString(a2.f12130a));
        f11501a.put("devicemodel", SDKUtils.encodeString(a2.f12131b));
        f11501a.put("bundleid", SDKUtils.encodeString(context.getPackageName()));
        f11501a.put("applicationkey", SDKUtils.encodeString(aVar.f11503b));
        f11501a.put("sessionid", SDKUtils.encodeString(aVar.f11502a));
        f11501a.put("sdkversion", SDKUtils.encodeString(SDKUtils.getSDKVersion()));
        f11501a.put("applicationuserid", SDKUtils.encodeString(aVar.f11505d));
        f11501a.put("env", BuildConfig.FLAVOR);
        f11501a.put("origin", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_TEXT);
        f11501a.put("connectiontype", com.ironsource.d.a.a(aVar.f11504c));
    }

    public /* synthetic */ b(a aVar, byte b2) {
        this(aVar);
    }

    public static void a(String str) {
        f11501a.put("connectiontype", SDKUtils.encodeString(str));
    }

    @Override // com.ironsource.a.c
    public final Map<String, Object> a() {
        return f11501a;
    }
}
