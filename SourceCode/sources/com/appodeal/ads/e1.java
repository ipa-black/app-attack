package com.appodeal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.SystemClock;
import com.appodeal.ads.modules.common.internal.data.ConnectionData;
import com.appodeal.ads.modules.common.internal.data.DeviceData;
import com.appodeal.ads.utils.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class e1 implements DeviceData {

    /* renamed from: a  reason: collision with root package name */
    public static final e1 f6641a = new e1();

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getAndroidId(Context context) {
        return f1.a(context);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final long getAppRamSize(Context context) {
        return f1.k(context);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final float getBatteryLevel(Context context) {
        return f1.b(context);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final Float getBatteryTemperature(Context context) {
        int intExtra;
        try {
            HashMap hashMap = f1.f6654a;
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver == null || (intExtra = registerReceiver.getIntExtra("temperature", -1)) == -1) {
                return null;
            }
            return Float.valueOf(intExtra / 10.0f);
        } catch (Throwable th) {
            Log.log(th);
            return null;
        }
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final long getBootTime() {
        HashMap hashMap = f1.f6654a;
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getBrandName() {
        return Build.MANUFACTURER;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final Boolean getChargingStatus(Context context) {
        try {
            HashMap hashMap = f1.f6654a;
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                int intExtra = registerReceiver.getIntExtra("plugged", -1);
                boolean z = true;
                if (intExtra != 1 && intExtra != 2) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
            return null;
        } catch (Throwable th) {
            Log.log(th);
            return null;
        }
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final ConnectionData getConnectionData(Context context) {
        return f1.c(context);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getConnectionType(Context context) {
        return f1.c(context).getType();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getDeviceLanguage() {
        HashMap hashMap = f1.f6654a;
        return Locale.getDefault().getLanguage();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getDeviceName(Context context) {
        return f1.g(context);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final float getDisplayDpi(Context context) {
        return f1.h(context);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getKernelVersion() {
        Throwable th;
        String str;
        HashMap hashMap = f1.f6654a;
        BufferedReader bufferedReader = null;
        try {
            str = System.getProperty("os.version");
            try {
                File file = new File("/proc/version");
                if (file.canRead()) {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                    try {
                        str = bufferedReader2.readLine();
                        n5.a(bufferedReader2);
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        try {
                            Log.log(th);
                            return str;
                        } finally {
                            n5.a(bufferedReader);
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            str = null;
        }
        return str;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final boolean getLowRamMemoryStatus(Context context) {
        return f1.s(context);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getModelId() {
        return Build.ID;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getModelName() {
        return Build.MODEL;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getOsBuildVersion() {
        return Build.DISPLAY;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getPlatformName() {
        return com.appodeal.ads.utils.d.f7758a;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final float getScreenDensity(Context context) {
        return f1.l(context);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final float getScreenHeight(Context context) {
        return f1.o(context).y;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final int getScreenOrientation(Context context) {
        return f1.n(context);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final float getScreenWidth(Context context) {
        return f1.o(context).x;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final long getStorageFree() {
        return f1.f();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final long getStorageSize() {
        return f1.g();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String[] getSupportedAbis() {
        return Build.SUPPORTED_ABIS;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final long getTimeStamp() {
        return System.currentTimeMillis();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final String getTimeZone() {
        HashMap hashMap = f1.f6654a;
        return TimeZone.getDefault().getID();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final long getTotalFreeRam(Context context) {
        ActivityManager activityManager;
        try {
            WeakReference<ActivityManager> weakReference = f1.f6660g;
            if (weakReference == null || weakReference.get() == null) {
                activityManager = (ActivityManager) context.getSystemService("activity");
                f1.f6660g = new WeakReference<>(activityManager);
            } else {
                activityManager = f1.f6660g.get();
            }
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.availMem;
        } catch (Throwable th) {
            Log.log(th);
            return 0L;
        }
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final boolean isConnected() {
        return f1.k();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final boolean isDeviceEmulator() {
        return f1.l();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.DeviceData
    public final boolean isDeviceRooted() {
        return f1.m();
    }
}
