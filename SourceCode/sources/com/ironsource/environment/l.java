package com.ironsource.environment;

import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes3.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final ArrayList<String> f10602a = new ArrayList<>(Arrays.asList("applicationUserAgeGroup", "uAge", "advId", Constants.APP_KEY, "mCar", "medV", "connT", "dWidth", "dHeight", "dModel", "cTime", "sDepRV", "sDepIS", "sId", "plType", "dOSV", "dOSVF", "dOS", "dMake", "dAPI", "bId", "appV", "usId", "bat", "root", "diskFS", "dLang", "MD", "uGen", "advType", "isLAT", "dVol", "consent", "dHeight", "dWidth", "dScrenScle", "auid", "UA", "asid"));

    /* renamed from: b  reason: collision with root package name */
    public static final HashMap<String, String> f10603b = new HashMap<String, String>() { // from class: com.ironsource.environment.l.1
        {
            put("omidVersion", "omidV");
            put("omidPartnerVersion", "omidPV");
            put("immersiveMode", "imm");
            put("appOrientation", "appOr");
            put("SDKVersion", "sdkV");
            put("deviceScreenScale", "dScrenScle");
            put("phoneType", "pType");
            put("simOperator", "simOp");
            put("lastUpdateTime", "lUpdateT");
            put("firstInstallTime", "fInstallT");
            put("displaySizeWidth", "dWidth");
            put("displaySizeHeight", "dHeight");
            put("cellularNetworkType", "cellNetT");
            put("hasVPN", "vpn");
            put("deviceVolume", "dVol");
            put("sdCardAvailable", "sdCrdAvail");
            put("isCharging", "isCharge");
            put("chargingType", "chargeT");
            put("airplaneMode", "airM");
            put("stayOnWhenPluggedIn", "onWhnPlugIn");
            put("totalDeviceRAM", "dRAM");
            put("installerPackageName", "iPckgN");
            put("timezoneOffset", "tzOff");
            put("chinaCDN", "cnaCDN");
            put("deviceOs", "dOS");
            put("localTime", "cTime");
            put("deviceIds[AID]", "advId");
            put("applicationUserAge", "uAge");
            put("advertisingId", "advId");
            put("advIdType", "advType");
            put("deviceWidth", "dWidth");
            put("deviceHeight", "dHeight");
            put("deviceOS", "dOS");
            put("clientTimestamp", "cTime");
            put("sessionDepthRV", "sDepRV");
            put("sessionDepthIS", "sDepIS");
            put("sessionId", "sId");
            put("MedSDKVersion", "medV");
            put("deviceMake", "dMake");
            put("applicationUserGender", "uGen");
            put("batteryLevel", "bat");
            put("unLocked", "root");
            put("deviceOSVersion", "dOSV");
            put("bundleId", "bId");
            put("mobileCarrier", "mCar");
            put("connectionType", "connT");
            put("appVersion", "appV");
            put("applicationKey", Constants.APP_KEY);
            put("applicationUserId", "usId");
            put("isLimitAdTrackingEnabled", "isLAT");
            put(TtmlNode.TAG_METADATA, "MD");
            put("deviceModel", "dModel");
            put("SDKPluginType", "plType");
            put("deviceApiLevel", "dAPI");
            put("diskFreeSize", "diskFS");
            put("deviceLanguage", "dLang");
            put("deviceOEM", "dMake");
            put("deviceOSVersionFull", "dOSVF");
        }
    };
}
