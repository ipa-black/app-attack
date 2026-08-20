package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.util.Locale;
/* loaded from: classes5.dex */
public final class H1 {

    /* renamed from: a  reason: collision with root package name */
    private static final C1720mn f13005a = new C1720mn();

    /* renamed from: b  reason: collision with root package name */
    private static final Zl<Integer, d> f13006b;

    /* renamed from: c  reason: collision with root package name */
    private static final Zl<Integer, d> f13007c;

    /* renamed from: d  reason: collision with root package name */
    private static final Zl<d, Integer> f13008d;

    /* loaded from: classes5.dex */
    class a extends Zl<Integer, d> {
        a(d dVar) {
            super(dVar);
            a(1, d.WIFI);
            a(0, d.CELL);
            a(7, d.BLUETOOTH);
            a(9, d.ETHERNET);
            a(4, d.MOBILE_DUN);
            a(5, d.MOBILE_HIPRI);
            a(2, d.MOBILE_MMS);
            a(3, d.MOBILE_SUPL);
            a(6, d.WIMAX);
            if (A2.a(21)) {
                a(17, d.VPN);
            }
        }
    }

    /* loaded from: classes5.dex */
    class b extends Zl<Integer, d> {
        b(d dVar) {
            super(dVar);
            a(1, d.WIFI);
            a(0, d.CELL);
            a(3, d.ETHERNET);
            a(2, d.BLUETOOTH);
            a(4, d.VPN);
            if (A2.a(27)) {
                a(6, d.LOWPAN);
            }
            if (A2.a(26)) {
                a(5, d.WIFI_AWARE);
            }
        }
    }

    /* loaded from: classes5.dex */
    class c extends Zl<d, Integer> {
        c(Integer num) {
            super(num);
            a(d.CELL, 0);
            a(d.WIFI, 1);
            a(d.BLUETOOTH, 3);
            a(d.ETHERNET, 4);
            a(d.MOBILE_DUN, 5);
            a(d.MOBILE_HIPRI, 6);
            a(d.MOBILE_MMS, 7);
            a(d.MOBILE_SUPL, 8);
            a(d.VPN, 9);
            a(d.WIMAX, 10);
            a(d.LOWPAN, 11);
            a(d.WIFI_AWARE, 12);
        }
    }

    /* loaded from: classes5.dex */
    public enum d {
        WIFI,
        CELL,
        ETHERNET,
        BLUETOOTH,
        VPN,
        LOWPAN,
        WIFI_AWARE,
        MOBILE_DUN,
        MOBILE_HIPRI,
        MOBILE_MMS,
        MOBILE_SUPL,
        WIMAX,
        OFFLINE,
        UNDEFINED
    }

    static {
        d dVar = d.UNDEFINED;
        f13006b = new a(dVar);
        f13007c = new b(dVar);
        f13008d = new c(2);
    }

    public static com.yandex.metrica.b a(Context context, Point point) {
        float f2;
        try {
            f2 = context.getResources().getDisplayMetrics().density;
        } catch (Throwable unused) {
            f2 = 0.0f;
        }
        if (f2 == 0.0f) {
            return com.yandex.metrica.b.PHONE;
        }
        float f3 = point.x;
        float f4 = point.y;
        float min = Math.min(f3 / f2, f4 / f2);
        float f5 = f2 * 160.0f;
        float f6 = f3 / f5;
        float f7 = f4 / f5;
        double sqrt = Math.sqrt((f6 * f6) + (f7 * f7));
        if (sqrt < 15.0d || f13005a.a(context, "android.hardware.touchscreen")) {
            if (sqrt < 7.0d && min < 600.0f) {
                return com.yandex.metrica.b.PHONE;
            }
            return com.yandex.metrica.b.TABLET;
        }
        return com.yandex.metrica.b.TV;
    }

    static d b(ConnectivityManager connectivityManager) {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return f13006b.a(Integer.valueOf(activeNetworkInfo.getType()));
        }
        return d.OFFLINE;
    }

    public static int b(Context context) {
        return f13008d.a(a(context)).intValue();
    }

    public static String a(Locale locale) {
        String language = locale.getLanguage();
        String country = locale.getCountry();
        StringBuilder sb = new StringBuilder(language);
        if (A2.a(21)) {
            String script = locale.getScript();
            if (!TextUtils.isEmpty(script)) {
                sb.append('-').append(script);
            }
        }
        if (!TextUtils.isEmpty(country)) {
            sb.append('_').append(country);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.yandex.metrica.impl.ob.H1.d a(android.content.Context r2) {
        /*
            java.lang.String r0 = "connectivity"
            java.lang.Object r2 = r2.getSystemService(r0)
            android.net.ConnectivityManager r2 = (android.net.ConnectivityManager) r2
            com.yandex.metrica.impl.ob.H1$d r0 = com.yandex.metrica.impl.ob.H1.d.UNDEFINED
            if (r2 == 0) goto L1e
            r1 = 23
            boolean r1 = com.yandex.metrica.impl.ob.A2.a(r1)     // Catch: java.lang.Throwable -> L1e
            if (r1 == 0) goto L19
            com.yandex.metrica.impl.ob.H1$d r2 = a(r2)     // Catch: java.lang.Throwable -> L1e
            goto L1f
        L19:
            com.yandex.metrica.impl.ob.H1$d r2 = b(r2)     // Catch: java.lang.Throwable -> L1e
            goto L1f
        L1e:
            r2 = 0
        L1f:
            if (r2 != 0) goto L22
            goto L23
        L22:
            r0 = r2
        L23:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.H1.a(android.content.Context):com.yandex.metrica.impl.ob.H1$d");
    }

    static d a(ConnectivityManager connectivityManager) {
        d dVar = d.UNDEFINED;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (a(connectivityManager, activeNetwork)) {
            return d.OFFLINE;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
        if (networkCapabilities != null) {
            for (Integer num : f13007c.a()) {
                if (networkCapabilities.hasTransport(num.intValue())) {
                    return f13007c.a(num);
                }
            }
            return dVar;
        }
        return dVar;
    }

    private static boolean a(ConnectivityManager connectivityManager, Network network) {
        if (A2.a(29)) {
            return network == null;
        } else if (network == null) {
            return true;
        } else {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
            return (networkInfo == null || networkInfo.isConnected()) ? false : true;
        }
    }
}
