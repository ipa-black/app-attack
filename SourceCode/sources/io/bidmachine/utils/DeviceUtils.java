package io.bidmachine.utils;

import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import com.explorestack.protobuf.adcom.ConnectionType;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes5.dex */
public class DeviceUtils {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public static String getOsVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String getBuildId() {
        return Build.ID;
    }

    public static String getModel() {
        return Build.MODEL;
    }

    public static String getManufacturer() {
        return Build.MANUFACTURER;
    }

    public static int getOrientation(Context context) {
        if (context != null) {
            return context.getResources().getConfiguration().orientation;
        }
        return 0;
    }

    public static Set<String> getInputLanguageSet(Context context) {
        InputMethodManager inputMethodManager;
        HashSet hashSet = new HashSet();
        try {
            inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        } catch (Exception unused) {
        }
        if (inputMethodManager == null) {
            return hashSet;
        }
        for (InputMethodInfo inputMethodInfo : inputMethodManager.getEnabledInputMethodList()) {
            for (InputMethodSubtype inputMethodSubtype : inputMethodManager.getEnabledInputMethodSubtypeList(inputMethodInfo, true)) {
                if (inputMethodSubtype.getMode().equals("keyboard")) {
                    String languageTag = inputMethodSubtype.getLanguageTag();
                    if (TextUtils.isEmpty(languageTag)) {
                        languageTag = inputMethodSubtype.getLocale();
                    }
                    if (!TextUtils.isEmpty(languageTag)) {
                        int indexOf = languageTag.indexOf("_");
                        if (indexOf > 0) {
                            languageTag = languageTag.substring(0, indexOf);
                        }
                        hashSet.add(languageTag);
                    }
                }
            }
        }
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language)) {
            hashSet.add(language);
        }
        return hashSet;
    }

    public static Boolean isRingMuted(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        int ringerMode = audioManager.getRingerMode();
        boolean z = true;
        if (ringerMode != 0 && ringerMode != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public static Boolean isCharging(Context context) {
        boolean z;
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                int intExtra = registerReceiver.getIntExtra("plugged", -1);
                boolean z2 = false;
                if (intExtra != 1 && intExtra != 2) {
                    z = false;
                    if (!z || intExtra == 4) {
                        z2 = true;
                    }
                    return Boolean.valueOf(z2);
                }
                z = true;
                if (!z) {
                }
                z2 = true;
                return Boolean.valueOf(z2);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static Double getBatteryLevel(Context context) {
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                int intExtra = registerReceiver.getIntExtra("level", -1);
                int intExtra2 = registerReceiver.getIntExtra("scale", -1);
                if (intExtra >= 0 && intExtra2 > 0) {
                    return Double.valueOf(Math.round((intExtra / intExtra2) * 100.0d) / 100.0d);
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static Boolean isBatterySaverEnabled(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager != null) {
            return Boolean.valueOf(powerManager.isPowerSaveMode());
        }
        return null;
    }

    public static boolean isDarkModeEnabled(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static Boolean isAirplaneModeOn(Context context) {
        try {
            return Boolean.valueOf(Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on") != 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Boolean isDoNotDisturbOn(Context context) {
        try {
            return Boolean.valueOf(Settings.Global.getInt(context.getContentResolver(), "zen_mode") != 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getDeviceName(Context context) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String string = Settings.Global.getString(contentResolver, "device_name");
            if (TextUtils.isEmpty(string)) {
                String string2 = Settings.Secure.getString(contentResolver, "bluetooth_name");
                if (TextUtils.isEmpty(string2)) {
                    BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                    if (!Utils.isPermissionGranted(context, "android.permission.BLUETOOTH_CONNECT") || defaultAdapter == null) {
                        return null;
                    }
                    return defaultAdapter.getName();
                }
                return string2;
            }
            return string;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Integer getScreenBrightness(Context context) {
        try {
            return Integer.valueOf(Settings.System.getInt(context.getContentResolver(), "screen_brightness"));
        } catch (Exception unused) {
            return null;
        }
    }

    public static Double getScreenBrightnessRatio(Context context) {
        Integer screenBrightness = getScreenBrightness(context);
        if (screenBrightness == null) {
            return null;
        }
        return Double.valueOf(Math.round((screenBrightness.intValue() / 255.0d) * 100.0d) / 100.0d);
    }

    public static ConnectionType getConnectionType(Context context) {
        NetworkInfo activeNetworkInfo = Utils.getActiveNetworkInfo(context);
        if (activeNetworkInfo == null) {
            return ConnectionType.CONNECTION_TYPE_INVALID;
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            if (type != 1) {
                if (type == 9) {
                    return ConnectionType.CONNECTION_TYPE_ETHERNET;
                }
                return ConnectionType.CONNECTION_TYPE_INVALID;
            }
            return ConnectionType.CONNECTION_TYPE_WIFI;
        }
        return getMobileNetworkType(activeNetworkInfo);
    }

    public static DisplayMetrics getDisplayMetrics(Context context) {
        return context.getResources().getDisplayMetrics();
    }

    public static boolean isTablet(Context context) {
        DisplayMetrics displayMetrics = getDisplayMetrics(context);
        double d2 = displayMetrics.widthPixels / displayMetrics.xdpi;
        double d3 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((d2 * d2) + (d3 * d3)) >= 6.6d;
    }

    public static int getScreenDpi(Context context) {
        return getDisplayMetrics(context).densityDpi;
    }

    public static String getPhoneMCCMNC(Context context) {
        String networkOperator;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null || (networkOperator = telephonyManager.getNetworkOperator()) == null || networkOperator.length() < 3) {
                return null;
            }
            return String.format("%s-%s", networkOperator.substring(0, 3), networkOperator.substring(3));
        } catch (Exception e2) {
            Logger.log(e2);
            return null;
        }
    }

    public static String getPhoneOperator(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getNetworkOperatorName();
            }
            return null;
        } catch (Exception e2) {
            Logger.log(e2);
            return null;
        }
    }

    private static ConnectionType getMobileNetworkType(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 0:
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_UNKNOWN;
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_2G;
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
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_3G;
            case 13:
            case 18:
            case 19:
            default:
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_4G;
            case 20:
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_5G;
        }
    }
}
