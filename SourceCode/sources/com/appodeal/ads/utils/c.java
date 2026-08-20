package com.appodeal.ads.utils;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.n5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static HashSet f7742a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public static final a f7743b = new a();

    /* renamed from: c  reason: collision with root package name */
    public static final b f7744c = new b();

    /* renamed from: d  reason: collision with root package name */
    public static List<String> f7745d;

    /* renamed from: e  reason: collision with root package name */
    public static List<ServiceInfo> f7746e;

    /* loaded from: classes2.dex */
    public class a extends ArrayList<String> {
        public a() {
            add("android.permission.ACCESS_NETWORK_STATE");
            add("android.permission.INTERNET");
        }
    }

    /* loaded from: classes2.dex */
    public class b extends ArrayList<InterfaceC0149c> {

        /* loaded from: classes2.dex */
        public class a implements InterfaceC0149c {
            @Override // com.appodeal.ads.utils.c.InterfaceC0149c
            public final void a() {
            }

            @Override // com.appodeal.ads.utils.c.InterfaceC0149c
            public final boolean a(Context context, Bundle bundle) {
                try {
                    context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
                    return bundle.containsKey("com.google.android.gms.version");
                } catch (Throwable unused) {
                    return true;
                }
            }
        }

        public b() {
            add(new a());
        }
    }

    /* renamed from: com.appodeal.ads.utils.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0149c {
        void a();

        boolean a(Context context, Bundle bundle);
    }

    public static void a(Context context) {
        if (n5.b(context)) {
            return;
        }
        Log.log(LogConstants.KEY_SDK, LogConstants.EVENT_INTEGRATION, "Please add in manifest file: \n<uses-library android:name=\"org.apache.http.legacy\" android:required=\"false\" />");
    }

    public static boolean a(Activity activity) {
        return activity != null && f7742a.contains(activity.getLocalClassName());
    }

    public static void b(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            String str = "Missing meta-data:";
            Iterator<InterfaceC0149c> it = f7744c.iterator();
            boolean z = false;
            while (it.hasNext()) {
                InterfaceC0149c next = it.next();
                if (!next.a(context, bundle)) {
                    next.a();
                    str = String.format("%s\n%s", str, "com.google.android.gms.version");
                    z = true;
                }
            }
            if (z) {
                Log.log(LogConstants.KEY_SDK, LogConstants.EVENT_INTEGRATION, str);
            }
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    public static void c(Context context) {
        PackageInfo packageInfo;
        String[] strArr;
        try {
            ArrayList arrayList = new ArrayList(f7743b);
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            if (f7745d == null && (packageInfo = packageManager.getPackageInfo(packageName, 4096)) != null && (strArr = packageInfo.requestedPermissions) != null) {
                f7745d = Arrays.asList(strArr);
            }
            List<String> list = f7745d;
            if (list != null) {
                arrayList.removeAll(list);
            }
            if (arrayList.isEmpty()) {
                return;
            }
            String str = "Missing permissions:";
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                str = String.format("%s\n%s", str, (String) it.next());
            }
            Log.log(LogConstants.KEY_SDK, LogConstants.EVENT_INTEGRATION, str);
        } catch (Exception e2) {
            Log.log(e2);
        }
    }
}
