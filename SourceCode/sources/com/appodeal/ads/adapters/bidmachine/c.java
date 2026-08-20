package com.appodeal.ads.adapters.bidmachine;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.appodeal.ads.RestrictedData;
import com.appodeal.ads.UserSettings;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.log.InternalLogEvent;
import com.appodeal.ads.modules.common.internal.log.InternalLogKt;
import com.explorestack.iab.utils.LogListener;
import com.explorestack.iab.utils.Logger;
import io.bidmachine.CustomParams;
import io.bidmachine.PriceFloorParams;
import io.bidmachine.TargetingParams;
import io.bidmachine.utils.Gender;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: BidMachineUtils.java */
/* loaded from: classes2.dex */
public final class c {

    /* compiled from: BidMachineUtils.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f6488a;

        static {
            int[] iArr = new int[Logger.LogLevel.values().length];
            f6488a = iArr;
            try {
                iArr[Logger.LogLevel.info.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6488a[Logger.LogLevel.debug.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6488a[Logger.LogLevel.warning.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6488a[Logger.LogLevel.error.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6488a[Logger.LogLevel.none.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static TargetingParams a(Context context, JSONObject jSONObject, RestrictedData restrictedData) {
        Boolean valueOf;
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String[] strArr4;
        TargetingParams targetingParams = new TargetingParams();
        targetingParams.setUserId(restrictedData.getUserId());
        UserSettings.Gender gender = restrictedData.getGender();
        if (gender == UserSettings.Gender.MALE) {
            targetingParams.setGender(Gender.Male);
        } else if (gender == UserSettings.Gender.FEMALE) {
            targetingParams.setGender(Gender.Female);
        } else if (gender == UserSettings.Gender.OTHER) {
            targetingParams.setGender(Gender.Omitted);
        }
        Integer age = restrictedData.getAge();
        if (age != null) {
            targetingParams.setBirthdayYear(Integer.valueOf(Calendar.getInstance().get(1) - age.intValue()));
        }
        Location deviceLocation = restrictedData.getLocation(context).getDeviceLocation();
        if (deviceLocation != null) {
            targetingParams.setDeviceLocation(deviceLocation);
        }
        targetingParams.setCountry(restrictedData.getCountry());
        targetingParams.setCity(restrictedData.getCity());
        targetingParams.setZip(restrictedData.getZip());
        Object opt = jSONObject.opt("sturl");
        String str = opt instanceof String ? (String) opt : null;
        if (str != null) {
            targetingParams.setStoreUrl(str);
        }
        Object opt2 = jSONObject.opt("paid");
        if (opt2 instanceof Boolean) {
            valueOf = (Boolean) opt2;
        } else {
            valueOf = opt2 instanceof String ? Boolean.valueOf(Boolean.parseBoolean((String) opt2)) : null;
        }
        if (valueOf != null) {
            targetingParams.setPaid(valueOf);
        }
        Object opt3 = jSONObject.opt("keywords");
        String str2 = opt3 instanceof String ? (String) opt3 : null;
        if (str2 != null) {
            if (TextUtils.isEmpty(str2)) {
                strArr4 = new String[0];
            } else {
                try {
                    strArr4 = str2.split(",");
                } catch (Exception unused) {
                    strArr4 = new String[0];
                }
            }
            targetingParams.setKeywords(strArr4);
        }
        Object opt4 = jSONObject.opt("bcat");
        String str3 = opt4 instanceof String ? (String) opt4 : null;
        if (str3 != null) {
            if (TextUtils.isEmpty(str3)) {
                strArr3 = new String[0];
            } else {
                try {
                    strArr3 = str3.split(",");
                } catch (Exception unused2) {
                    strArr3 = new String[0];
                }
            }
            for (String str4 : strArr3) {
                targetingParams.addBlockedAdvertiserIABCategory(str4);
            }
        }
        Object opt5 = jSONObject.opt("badv");
        String str5 = opt5 instanceof String ? (String) opt5 : null;
        if (str5 != null) {
            if (TextUtils.isEmpty(str5)) {
                strArr2 = new String[0];
            } else {
                try {
                    strArr2 = str5.split(",");
                } catch (Exception unused3) {
                    strArr2 = new String[0];
                }
            }
            for (String str6 : strArr2) {
                targetingParams.addBlockedAdvertiserDomain(str6);
            }
        }
        Object opt6 = jSONObject.opt("bapps");
        String str7 = opt6 instanceof String ? (String) opt6 : null;
        if (str7 != null) {
            if (TextUtils.isEmpty(str7)) {
                strArr = new String[0];
            } else {
                try {
                    strArr = str7.split(",");
                } catch (Exception unused4) {
                    strArr = new String[0];
                }
            }
            for (String str8 : strArr) {
                targetingParams.addBlockedApplication(str8);
            }
        }
        targetingParams.setCity(restrictedData.getCity());
        return targetingParams;
    }

    public static CustomParams a(JSONObject jSONObject) {
        CustomParams customParams = new CustomParams();
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    customParams.addParam(next, jSONObject.optString(next));
                }
            } catch (Throwable unused) {
            }
        }
        return customParams;
    }

    public static LogListener a() {
        return new LogListener() { // from class: com.appodeal.ads.adapters.bidmachine.c$$ExternalSyntheticLambda0
            @Override // com.explorestack.iab.utils.LogListener
            public final void onLog(Logger.LogLevel logLevel, String str, String str2) {
                c.a(r1, logLevel, str, str2);
            }
        };
    }

    public static void a(String str, Logger.LogLevel logLevel, String str2, String str3) {
        String str4;
        Function1<? super InternalLogEvent, Unit> function1 = InternalLogKt.observer;
        int i = a.f6488a[logLevel.ordinal()];
        if (i == 1) {
            str4 = "info";
        } else if (i == 2) {
            str4 = Constants.DEBUG_INTERSTITIAL;
        } else if (i == 3) {
            str4 = "warning";
        } else if (i == 4) {
            str4 = com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR;
        } else if (i != 5) {
            str4 = "verbose";
        } else {
            str4 = "none";
        }
        function1.invoke(new InternalLogEvent(str2, str, str3, str4));
    }

    public static PriceFloorParams a(String str) {
        PriceFloorParams priceFloorParams = new PriceFloorParams();
        if (TextUtils.isEmpty(str)) {
            return priceFloorParams;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                Object opt = jSONArray.opt(i);
                if (opt instanceof JSONObject) {
                    JSONObject jSONObject = (JSONObject) opt;
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        double a2 = a(jSONObject.opt(next));
                        if (!TextUtils.isEmpty(next) && a2 > -1.0d) {
                            priceFloorParams.addPriceFloor(next, a2);
                        }
                    }
                } else {
                    double a3 = a(opt);
                    if (a3 > -1.0d) {
                        priceFloorParams.addPriceFloor(a3);
                    }
                }
            }
            return priceFloorParams;
        } catch (Exception unused) {
            return new PriceFloorParams();
        }
    }

    public static double a(Object obj) {
        double doubleValue;
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).doubleValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return -1.0d;
            }
            try {
                if (str.lastIndexOf(46) > str.lastIndexOf(44)) {
                    doubleValue = NumberFormat.getInstance(Locale.TAIWAN).parse(str).doubleValue();
                } else {
                    doubleValue = NumberFormat.getInstance().parse(str).doubleValue();
                }
                return doubleValue;
            } catch (Exception unused) {
                return -1.0d;
            }
        }
        return -1.0d;
    }
}
