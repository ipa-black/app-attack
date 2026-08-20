package com.ironsource.mediationsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.model.Placement;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static k f11438a;

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<ImpressionDataListener> f11439b = new HashSet<>();

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<String, List<String>> f11440c = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.mediationsdk.utils.k$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11441a;

        static {
            int[] iArr = new int[com.ironsource.mediationsdk.model.l.values().length];
            f11441a = iArr;
            try {
                iArr[com.ironsource.mediationsdk.model.l.PER_DAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11441a[com.ironsource.mediationsdk.model.l.PER_HOUR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f11442a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f11443b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f11444c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f11445d = 4;

        /* renamed from: e  reason: collision with root package name */
        private static final /* synthetic */ int[] f11446e = {1, 2, 3, 4};

        public static int[] a() {
            return (int[]) f11446e.clone();
        }
    }

    k() {
    }

    private static int a(Context context, String str, String str2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, "CappingManager.IS_DELIVERY_ENABLED", str2), true)) {
            if (IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, "CappingManager.IS_PACING_ENABLED", str2), false)) {
                if (currentTimeMillis - IronSourceUtils.getLongFromSharedPrefs(context, a(str, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW", str2), 0L) < IronSourceUtils.getIntFromSharedPrefs(context, a(str, "CappingManager.SECONDS_BETWEEN_SHOWS", str2), 0) * 1000) {
                    return a.f11444c;
                }
            }
            if (IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, "CappingManager.IS_CAPPING_ENABLED", str2), false)) {
                int intFromSharedPrefs = IronSourceUtils.getIntFromSharedPrefs(context, a(str, "CappingManager.MAX_NUMBER_OF_SHOWS", str2), 0);
                String a2 = a(str, "CappingManager.CURRENT_NUMBER_OF_SHOWS", str2);
                int intFromSharedPrefs2 = IronSourceUtils.getIntFromSharedPrefs(context, a2, 0);
                String a3 = a(str, "CappingManager.CAPPING_TIME_THRESHOLD", str2);
                if (currentTimeMillis >= IronSourceUtils.getLongFromSharedPrefs(context, a3, 0L)) {
                    IronSourceUtils.saveIntToSharedPrefs(context, a2, 0);
                    IronSourceUtils.saveLongToSharedPrefs(context, a3, 0L);
                } else if (intFromSharedPrefs2 >= intFromSharedPrefs) {
                    return a.f11443b;
                }
            }
            return a.f11445d;
        }
        return a.f11442a;
    }

    private static long a(com.ironsource.mediationsdk.model.l lVar) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        int i = AnonymousClass1.f11441a[lVar.ordinal()];
        if (i == 1) {
            calendar.set(14, 0);
            calendar.set(13, 0);
            calendar.set(12, 0);
            calendar.set(11, 0);
            calendar.add(6, 1);
        } else if (i == 2) {
            calendar.set(14, 0);
            calendar.set(13, 0);
            calendar.set(12, 0);
            calendar.add(11, 1);
        }
        return calendar.getTimeInMillis();
    }

    public static synchronized k a() {
        k kVar;
        synchronized (k.class) {
            if (f11438a == null) {
                f11438a = new k();
            }
            kVar = f11438a;
        }
        return kVar;
    }

    private static String a(IronSource.AD_UNIT ad_unit) {
        return ad_unit == IronSource.AD_UNIT.INTERSTITIAL ? "Interstitial" : ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO ? IronSourceConstants.REWARDED_VIDEO_AD_UNIT : ad_unit == IronSource.AD_UNIT.BANNER ? "Banner" : ad_unit.toString();
    }

    private static String a(String str, String str2, String str3) {
        return str + "_" + str2 + "_" + str3;
    }

    public static synchronized void a(Context context, InterstitialPlacement interstitialPlacement) {
        synchronized (k.class) {
            if (context == null) {
                return;
            }
            com.ironsource.mediationsdk.model.k placementAvailabilitySettings = interstitialPlacement.getPlacementAvailabilitySettings();
            if (placementAvailabilitySettings == null) {
                return;
            }
            a(context, "Interstitial", interstitialPlacement.getPlacementName(), placementAvailabilitySettings);
        }
    }

    public static synchronized void a(Context context, Placement placement) {
        synchronized (k.class) {
            if (context == null) {
                return;
            }
            com.ironsource.mediationsdk.model.k placementAvailabilitySettings = placement.getPlacementAvailabilitySettings();
            if (placementAvailabilitySettings == null) {
                return;
            }
            a(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, placement.getPlacementName(), placementAvailabilitySettings);
        }
    }

    public static synchronized void a(Context context, com.ironsource.mediationsdk.model.f fVar) {
        synchronized (k.class) {
            if (context == null) {
                return;
            }
            com.ironsource.mediationsdk.model.k placementAvailabilitySettings = fVar.getPlacementAvailabilitySettings();
            if (placementAvailabilitySettings == null) {
                return;
            }
            a(context, "Banner", fVar.getPlacementName(), placementAvailabilitySettings);
        }
    }

    private static void a(Context context, String str, String str2, com.ironsource.mediationsdk.model.k kVar) {
        boolean z = kVar.f11274a;
        IronSourceUtils.saveBooleanToSharedPrefs(context, a(str, "CappingManager.IS_DELIVERY_ENABLED", str2), z);
        if (z) {
            boolean z2 = kVar.f11275b;
            IronSourceUtils.saveBooleanToSharedPrefs(context, a(str, "CappingManager.IS_CAPPING_ENABLED", str2), z2);
            if (z2) {
                IronSourceUtils.saveIntToSharedPrefs(context, a(str, "CappingManager.MAX_NUMBER_OF_SHOWS", str2), kVar.f11278e);
                IronSourceUtils.saveStringToSharedPrefs(context, a(str, "CappingManager.CAPPING_TYPE", str2), kVar.f11277d.toString());
            }
            boolean z3 = kVar.f11276c;
            IronSourceUtils.saveBooleanToSharedPrefs(context, a(str, "CappingManager.IS_PACING_ENABLED", str2), z3);
            if (z3) {
                IronSourceUtils.saveIntToSharedPrefs(context, a(str, "CappingManager.SECONDS_BETWEEN_SHOWS", str2), kVar.f11279f);
            }
        }
    }

    public static synchronized boolean a(Context context, String str) {
        int a2;
        int i;
        synchronized (k.class) {
            a2 = a(context, "Interstitial", str);
            i = a.f11445d;
        }
        return a2 != i;
    }

    public static synchronized boolean a(Context context, String str, IronSource.AD_UNIT ad_unit) {
        int a2;
        int i;
        synchronized (k.class) {
            a2 = a(context, a(ad_unit), str);
            i = a.f11445d;
        }
        return a2 != i;
    }

    public static synchronized int b(Context context, InterstitialPlacement interstitialPlacement) {
        synchronized (k.class) {
            if (context != null && interstitialPlacement != null) {
                if (interstitialPlacement.getPlacementAvailabilitySettings() != null) {
                    return a(context, "Interstitial", interstitialPlacement.getPlacementName());
                }
            }
            return a.f11445d;
        }
    }

    public static synchronized int b(Context context, Placement placement) {
        synchronized (k.class) {
            if (context != null && placement != null) {
                if (placement.getPlacementAvailabilitySettings() != null) {
                    return a(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, placement.getPlacementName());
                }
            }
            return a.f11445d;
        }
    }

    public static synchronized void b(Context context, String str, IronSource.AD_UNIT ad_unit) {
        synchronized (k.class) {
            b(context, a(ad_unit), str);
        }
    }

    private static void b(Context context, String str, String str2) {
        com.ironsource.mediationsdk.model.l lVar;
        int i = 0;
        if (IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, "CappingManager.IS_PACING_ENABLED", str2), false)) {
            IronSourceUtils.saveLongToSharedPrefs(context, a(str, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW", str2), System.currentTimeMillis());
        }
        if (IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, "CappingManager.IS_CAPPING_ENABLED", str2), false)) {
            IronSourceUtils.getIntFromSharedPrefs(context, a(str, "CappingManager.MAX_NUMBER_OF_SHOWS", str2), 0);
            String a2 = a(str, "CappingManager.CURRENT_NUMBER_OF_SHOWS", str2);
            int intFromSharedPrefs = IronSourceUtils.getIntFromSharedPrefs(context, a2, 0);
            if (intFromSharedPrefs == 0) {
                String stringFromSharedPrefs = IronSourceUtils.getStringFromSharedPrefs(context, a(str, "CappingManager.CAPPING_TYPE", str2), com.ironsource.mediationsdk.model.l.PER_DAY.toString());
                com.ironsource.mediationsdk.model.l[] values = com.ironsource.mediationsdk.model.l.values();
                int length = values.length;
                while (true) {
                    if (i >= length) {
                        lVar = null;
                        break;
                    }
                    lVar = values[i];
                    if (lVar.f11289c.equals(stringFromSharedPrefs)) {
                        break;
                    }
                    i++;
                }
                IronSourceUtils.saveLongToSharedPrefs(context, a(str, "CappingManager.CAPPING_TIME_THRESHOLD", str2), a(lVar));
            }
            IronSourceUtils.saveIntToSharedPrefs(context, a2, intFromSharedPrefs + 1);
        }
    }

    public static synchronized boolean b(Context context, String str) {
        int a2;
        int i;
        synchronized (k.class) {
            a2 = a(context, "Banner", str);
            i = a.f11445d;
        }
        return a2 != i;
    }

    public static synchronized void c(Context context, InterstitialPlacement interstitialPlacement) {
        synchronized (k.class) {
            if (interstitialPlacement != null) {
                b(context, "Interstitial", interstitialPlacement.getPlacementName());
            }
        }
    }

    public static synchronized void c(Context context, Placement placement) {
        synchronized (k.class) {
            if (placement != null) {
                b(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, placement.getPlacementName());
            }
        }
    }

    public static synchronized boolean c(Context context, String str) {
        int a2;
        int i;
        synchronized (k.class) {
            a2 = a(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, str);
            i = a.f11445d;
        }
        return a2 != i;
    }

    public static synchronized void d(Context context, String str) {
        synchronized (k.class) {
            b(context, "Interstitial", str);
        }
    }

    public static synchronized void e(Context context, String str) {
        synchronized (k.class) {
            b(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, str);
        }
    }

    public static synchronized void f(Context context, String str) {
        synchronized (k.class) {
            if (!TextUtils.isEmpty(str)) {
                b(context, "Banner", str);
            }
        }
    }

    public void a(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.f11439b.add(impressionDataListener);
        }
    }

    public void a(String str, List<String> list) {
        this.f11440c.put(str, list);
    }

    public HashSet<ImpressionDataListener> b() {
        return this.f11439b;
    }

    public void b(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.f11439b.remove(impressionDataListener);
        }
    }

    public void c() {
        synchronized (this) {
            this.f11439b.clear();
        }
    }

    public ConcurrentHashMap<String, List<String>> d() {
        return this.f11440c;
    }
}
