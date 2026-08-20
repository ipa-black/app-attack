package com.criteo.publisher.context;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import androidx.core.content.ContextCompat;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ConnectionTypeFetcher.kt */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final g f8696a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f8697b;

    public a(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.f8697b = context;
        g b2 = h.b(a.class);
        Intrinsics.checkExpressionValueIsNotNull(b2, "LoggerFactory.getLogger(…nTypeFetcher::class.java)");
        this.f8696a = b2;
    }

    public EnumC0245a b() {
        Object systemService = this.f8697b.getSystemService("connectivity");
        if (!(systemService instanceof ConnectivityManager)) {
            systemService = null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        if (connectivityManager != null) {
            try {
                return a(connectivityManager);
            } catch (LinkageError e2) {
                this.f8696a.a("Deprecated way to get connection type is not available, fallback on new API", e2);
                return b(connectivityManager);
            }
        }
        return null;
    }

    private EnumC0245a b(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities == null) {
            return null;
        }
        if (c(networkCapabilities)) {
            return EnumC0245a.WIRED;
        }
        if (b(networkCapabilities)) {
            return EnumC0245a.WIFI;
        }
        if (a(networkCapabilities)) {
            Object systemService = this.f8697b.getSystemService("phone");
            return a(systemService instanceof TelephonyManager ? systemService : null);
        }
        return null;
    }

    public boolean c(NetworkCapabilities networkCapabilities) {
        Intrinsics.checkParameterIsNotNull(networkCapabilities, "networkCapabilities");
        return networkCapabilities.hasTransport(3);
    }

    public boolean b(NetworkCapabilities networkCapabilities) {
        Intrinsics.checkParameterIsNotNull(networkCapabilities, "networkCapabilities");
        return networkCapabilities.hasTransport(1);
    }

    public boolean a(NetworkCapabilities networkCapabilities) {
        Intrinsics.checkParameterIsNotNull(networkCapabilities, "networkCapabilities");
        return networkCapabilities.hasTransport(0);
    }

    private EnumC0245a a(ConnectivityManager connectivityManager) {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        Integer valueOf = activeNetworkInfo != null ? Integer.valueOf(activeNetworkInfo.getType()) : null;
        if (valueOf != null && valueOf.intValue() == 9) {
            return EnumC0245a.WIRED;
        }
        if (valueOf != null && valueOf.intValue() == 1) {
            return EnumC0245a.WIFI;
        }
        if (valueOf != null && valueOf.intValue() == 0) {
            return a(activeNetworkInfo.getSubtype());
        }
        return null;
    }

    public EnumC0245a a(TelephonyManager telephonyManager) {
        if (telephonyManager == null || !a()) {
            return EnumC0245a.CELLULAR_UNKNOWN;
        }
        return a(telephonyManager.getDataNetworkType());
    }

    private boolean a() {
        return ContextCompat.checkSelfPermission(this.f8697b, "android.permission.READ_PHONE_STATE") == 0;
    }

    private EnumC0245a a(int i) {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return EnumC0245a.CELLULAR_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return EnumC0245a.CELLULAR_3G;
            case 13:
            case 18:
            case 19:
                return EnumC0245a.CELLULAR_4G;
            case 20:
                return EnumC0245a.CELLULAR_5G;
            default:
                return EnumC0245a.CELLULAR_UNKNOWN;
        }
    }

    /* compiled from: ConnectionTypeFetcher.kt */
    /* renamed from: com.criteo.publisher.context.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0245a {
        WIRED(1),
        WIFI(2),
        CELLULAR_UNKNOWN(3),
        CELLULAR_2G(4),
        CELLULAR_3G(5),
        CELLULAR_4G(6),
        CELLULAR_5G(7);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f8705a;

        EnumC0245a(int i2) {
            this.f8705a = i2;
        }

        public final int a() {
            return this.f8705a;
        }
    }
}
