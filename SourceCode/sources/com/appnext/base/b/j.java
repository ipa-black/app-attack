package com.appnext.base.b;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import com.appnext.base.b.d;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpRetryException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class j {
    private static final String TAG = "SdkHelper";
    private static final long eI = 1000;
    private static final long eJ = 60000;
    private static final long eK = 3600000;
    private static final long eL = 86400000;

    public static boolean a(String str, String str2, com.appnext.base.a.b.c cVar) {
        try {
            if (str2.hashCode() == 570418373 && str2.equals(d.fn)) {
                return ((com.appnext.base.operations.a) Class.forName(com.appnext.base.operations.b.B(str)).getConstructor(com.appnext.base.a.b.c.class, Bundle.class).newInstance(cVar, null)).aE();
            }
        } catch (InvocationTargetException e2) {
            e2.getCause().printStackTrace();
            e2.getCause();
            return false;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean a(Class cls) {
        return e.getContext().getPackageManager().queryIntentServices(new Intent(e.getContext(), cls), 65536).size() > 0;
    }

    public static List<String> a(Context context, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        if (context == null) {
            return arrayList;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (f(context.getApplicationContext())) {
                UsageStatsManager usageStatsManager = (UsageStatsManager) context.getSystemService("usagestats");
                long currentTimeMillis = System.currentTimeMillis();
                List<UsageStats> queryUsageStats = usageStatsManager.queryUsageStats(4, currentTimeMillis - j, currentTimeMillis);
                if (queryUsageStats == null) {
                    return arrayList;
                }
                ListIterator<UsageStats> listIterator = queryUsageStats.listIterator();
                while (listIterator.hasNext()) {
                    UsageStats next = listIterator.next();
                    if (!usageStatsManager.isAppInactive(next.getPackageName()) && next.getTotalTimeInForeground() >= j2 && !b(context, next.getPackageName())) {
                        arrayList.add(next.getPackageName());
                    }
                    listIterator.remove();
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
        if ((r0.activityInfo.flags & com.google.android.exoplayer2.extractor.ts.TsExtractor.TS_STREAM_TYPE_AC3) == 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007d, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean b(android.content.Context r6, java.lang.String r7) {
        /*
            java.lang.String r0 = "android.intent.action.MAIN"
            r1 = 0
            java.lang.String r2 = "com.android"
            boolean r2 = r7.contains(r2)     // Catch: java.lang.Throwable -> L7e
            r3 = 1
            if (r2 == 0) goto Ld
            return r3
        Ld:
            android.content.pm.PackageManager r2 = r6.getPackageManager()     // Catch: java.lang.Throwable -> L7e
            android.content.Intent r4 = new android.content.Intent     // Catch: java.lang.Throwable -> L7e
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r5 = "android.intent.category.HOME"
            r4.addCategory(r5)     // Catch: java.lang.Throwable -> L7e
            r5 = 65536(0x10000, float:9.18355E-41)
            java.util.List r2 = r2.queryIntentActivities(r4, r5)     // Catch: java.lang.Throwable -> L7e
            if (r2 == 0) goto L42
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L7e
        L27:
            boolean r4 = r2.hasNext()     // Catch: java.lang.Throwable -> L7e
            if (r4 == 0) goto L42
            java.lang.Object r4 = r2.next()     // Catch: java.lang.Throwable -> L7e
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4     // Catch: java.lang.Throwable -> L7e
            android.content.pm.ActivityInfo r5 = r4.activityInfo     // Catch: java.lang.Throwable -> L7e
            if (r5 == 0) goto L27
            android.content.pm.ActivityInfo r4 = r4.activityInfo     // Catch: java.lang.Throwable -> L7e
            java.lang.String r4 = r4.packageName     // Catch: java.lang.Throwable -> L7e
            boolean r4 = r4.equals(r7)     // Catch: java.lang.Throwable -> L7e
            if (r4 == 0) goto L27
            return r3
        L42:
            android.content.Intent r2 = new android.content.Intent     // Catch: java.lang.Throwable -> L7e
            r4 = 0
            r2.<init>(r0, r4)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r0 = "android.intent.category.LAUNCHER"
            r2.addCategory(r0)     // Catch: java.lang.Throwable -> L7e
            android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch: java.lang.Throwable -> L7e
            java.util.List r6 = r6.queryIntentActivities(r2, r1)     // Catch: java.lang.Throwable -> L7e
            if (r6 == 0) goto L7e
            java.util.Iterator r6 = r6.iterator()     // Catch: java.lang.Throwable -> L7e
        L5b:
            boolean r0 = r6.hasNext()     // Catch: java.lang.Throwable -> L7e
            if (r0 == 0) goto L7e
            java.lang.Object r0 = r6.next()     // Catch: java.lang.Throwable -> L7e
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0     // Catch: java.lang.Throwable -> L7e
            android.content.pm.ActivityInfo r2 = r0.activityInfo     // Catch: java.lang.Throwable -> L7e
            if (r2 == 0) goto L5b
            android.content.pm.ActivityInfo r2 = r0.activityInfo     // Catch: java.lang.Throwable -> L7e
            java.lang.String r2 = r2.packageName     // Catch: java.lang.Throwable -> L7e
            boolean r2 = r2.equals(r7)     // Catch: java.lang.Throwable -> L7e
            if (r2 == 0) goto L5b
            android.content.pm.ActivityInfo r6 = r0.activityInfo     // Catch: java.lang.Throwable -> L7e
            int r6 = r6.flags     // Catch: java.lang.Throwable -> L7e
            r6 = r6 & 129(0x81, float:1.81E-43)
            if (r6 == 0) goto L7e
            return r3
        L7e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.base.b.j.b(android.content.Context, java.lang.String):boolean");
    }

    public static boolean f(Context context) {
        return ((AppOpsManager) context.getSystemService("appops")).checkOpNoThrow("android:get_usage_stats", Process.myUid(), context.getPackageName()) == 0;
    }

    public static void g(Context context) {
        try {
            List<com.appnext.base.a.b.c> as = com.appnext.base.a.a.X().ab().as();
            if (as == null || as.size() != 0) {
                return;
            }
            com.appnext.base.a.b.c cVar = new com.appnext.base.a.b.c("on", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, d.fj, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, d.fn, "cdm", "cdm" + System.currentTimeMillis(), null);
            com.appnext.base.a.a.X().ab().a(cVar);
            com.appnext.base.services.b.a.d(context).a(cVar, true);
        } catch (Throwable unused) {
        }
    }

    public static boolean h(Context context) throws Exception {
        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
        return advertisingIdInfo != null && advertisingIdInfo.isLimitAdTrackingEnabled();
    }

    public static boolean i(Context context) {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo != null) {
                if (!advertisingIdInfo.isLimitAdTrackingEnabled()) {
                    return false;
                }
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    public static boolean b(String str, Map<String, String> map) {
        com.appnext.base.a.b.c t = com.appnext.base.a.a.X().ab().t(str);
        if (t == null || "off".equalsIgnoreCase(t.ak()) || map.isEmpty()) {
            return true;
        }
        HashMap hashMap = new HashMap();
        String b2 = com.appnext.core.f.b(e.getContext(), true);
        if (TextUtils.isEmpty(b2)) {
            b2 = i.aR().getString(i.fB, "");
        }
        if (TextUtils.isEmpty(b2)) {
            return false;
        }
        hashMap.put("aid", b2);
        hashMap.put("cuid", b2 + "_" + System.currentTimeMillis());
        hashMap.put("lvid", "4.7.2");
        try {
            hashMap.put("localdate", a(new Date()));
            hashMap.put("timezone", aT());
            hashMap.put("app_package", e.getPackageName());
        } catch (Throwable unused) {
            hashMap.put("app_package", "");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue());
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            String str2 = (String) entry2.getKey();
            String str3 = (String) entry2.getValue();
        }
        try {
            byte[] a2 = com.appnext.core.f.a("http://apis.appnxt.net:443/data", (Object) hashMap, false, 15000, d.a.HashMap);
            if (a2 != null) {
                new String(a2, C.UTF8_NAME);
            }
            return true;
        } catch (HttpRetryException e2) {
            e2.responseCode();
            e2.getMessage();
            return false;
        } catch (Throwable th) {
            th.getMessage();
            return false;
        }
    }

    public static String aT() {
        char c2;
        StringBuilder sb = new StringBuilder(9);
        try {
            Calendar calendar = Calendar.getInstance(TimeZone.getDefault(), Locale.US);
            int i = (calendar.get(15) + calendar.get(16)) / 60000;
            if (i < 0) {
                i = -i;
                c2 = '-';
            } else {
                c2 = '+';
            }
            sb.append("GMT");
            sb.append(c2);
            a(sb, 2, i / 60);
            sb.append(':');
            a(sb, 2, i % 60);
        } catch (Throwable unused) {
        }
        return sb.toString();
    }

    private static void a(StringBuilder sb, int i, int i2) {
        try {
            String num = Integer.toString(i2);
            for (int i3 = 0; i3 < 2 - num.length(); i3++) {
                sb.append('0');
            }
            sb.append(num);
        } catch (Throwable unused) {
        }
    }

    public static String a(Date date) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append(new SimpleDateFormat("EEE MMM dd HH:mm:ss", Locale.US).format(date));
            sb.append(" ");
            sb.append(aT());
            sb.append(" ");
            sb.append(new SimpleDateFormat("yyyy", Locale.US).format(date));
        } catch (Throwable unused) {
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public static int g(String str, String str2) {
        long j;
        ?? r0 = -1;
        r0 = -1;
        r0 = -1;
        r0 = -1;
        r0 = -1;
        try {
            if (!TextUtils.isEmpty(str) && TextUtils.isDigitsOnly(str) && !TextUtils.isEmpty(str2)) {
                int intValue = Integer.valueOf(str).intValue();
                if (d.fh.equalsIgnoreCase(str2)) {
                    return intValue;
                }
                if (d.fi.equalsIgnoreCase(str2)) {
                    j = intValue;
                    r0 = 60000;
                } else if (d.fj.equalsIgnoreCase(str2)) {
                    j = intValue;
                    r0 = 3600000;
                } else if (d.fk.equalsIgnoreCase(str2)) {
                    j = intValue;
                    r0 = 86400000;
                }
                return (int) (j * r0);
            }
        } catch (Throwable unused) {
        }
        return r0;
    }

    public static void a(String str, String str2, d.a aVar) {
        com.appnext.base.a.a.X().aa().b(new com.appnext.base.a.b.b(str, str2, aVar.getType()));
    }

    public static Object a(String str, d.a aVar) {
        try {
            List<com.appnext.base.a.b.b> v = com.appnext.base.a.a.X().aa().v(str);
            if (v == null || v.isEmpty()) {
                return null;
            }
            return b(v.get(0).ai(), aVar);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appnext.base.b.j$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] fF;

        static {
            int[] iArr = new int[d.a.values().length];
            fF = iArr;
            try {
                iArr[d.a.Integer.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                fF[d.a.Double.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                fF[d.a.Long.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                fF[d.a.Boolean.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                fF[d.a.Set.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                fF[d.a.JSONArray.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                fF[d.a.JSONObject.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static Object b(String str, d.a aVar) {
        try {
            switch (AnonymousClass1.fF[aVar.ordinal()]) {
                case 1:
                    return Integer.valueOf(str);
                case 2:
                    return Double.valueOf(str);
                case 3:
                    return Long.valueOf(str);
                case 4:
                    return Boolean.valueOf(str);
                case 5:
                    return new HashSet(Arrays.asList(str.split(",")));
                case 6:
                    return new JSONArray(str);
                case 7:
                    return new JSONObject(str);
                default:
                    return str;
            }
        } catch (Throwable unused) {
            return null;
        }
    }
}
