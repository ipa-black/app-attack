package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.preference.PreferenceManager;
import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.DtbCommonUtils;
import com.amazon.device.ads.DtbMetrics;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class DTBAdRequest implements DTBAdLoader {
    private static final String AAX_VIDEO_INVENTORY_TYPE = "inventoryType";
    private static final String AAX_VIDEO_SKIP_AFTER = "skipAfter";
    private static final int DEFAULT_RERESH_DURATION = 60;
    private static final String LOG_TAG = "DTBAdRequest";
    private static final int MIN_REFRESH_DURATION = 20;
    private static final String[] MRAID_VALID_VERSIONS = {"1.0", DtbConstants.APS_ADAPTER_VERSION_2, "3.0"};
    private static final long WEEK = 604800000;
    static JSONArray mRaidArray = null;
    private static JSONArray mRaidCustomArray = null;
    private static boolean mRaidDefined = false;
    private DTBAdResponse adResponse;
    private DTBAdCallback callback;
    private Context context;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private final List<DTBAdSize> adSizes = new ArrayList();
    private final Map<String, String> customTargets = new HashMap();
    private final Map<String, String> sizeSlotUUIDMap = new HashMap();
    private volatile AdError adError = null;
    private boolean requestHasBeenUsed = false;
    private boolean submitMetrics = true;
    private boolean isAutoRefresh = false;
    private boolean refreshFlag = false;
    private int refreshDuration = 0;
    private final Runnable mRefreshRunnable = new Runnable() { // from class: com.amazon.device.ads.DTBAdRequest$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            DTBAdRequest.this.m59lambda$new$0$comamazondeviceadsDTBAdRequest();
        }
    };
    private String slotGroup = null;

    protected void onRequestFormed(HashMap<String, Object> hashMap) {
    }

    protected String getFullyQuaifiedMoPUBClassName() {
        return "com.mopub.common.MoPub";
    }

    public DTBAdRequest(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("unable to initialize ad request with null app context");
        }
        try {
            if (!AdRegistration.isInitialized()) {
                DtbLog.warn("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
                return;
            }
            if (AdRegistration.getContext() == null) {
                AdRegistration.setContext(context);
            }
            this.context = context;
            if (mRaidDefined) {
                return;
            }
            defineMraid();
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdRequest class with context argument");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to initialize DTBAdRequest class with context argument", e2);
        }
    }

    public DTBAdRequest() {
        try {
            if (!AdRegistration.isInitialized()) {
                DtbLog.warn("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
                return;
            }
            if (this.context == null) {
                this.context = AdRegistration.getContext();
            }
            if (mRaidDefined) {
                return;
            }
            defineMraid();
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdRequest class");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to initialize DTBAdRequest class", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void resetMraid() {
        mRaidArray = null;
        mRaidDefined = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setMRAIDSupportedVersions(String[] strArr) {
        if (strArr != null && strArr.length > 0) {
            mRaidCustomArray = new JSONArray();
            List asList = Arrays.asList(MRAID_VALID_VERSIONS);
            for (String str : strArr) {
                if (str == null) {
                    DtbLog.error(LOG_TAG, "null custom version supplied");
                } else {
                    if (!asList.contains(str)) {
                        DtbLog.warn(LOG_TAG, "custom version \"" + str + "\" is not valid");
                    }
                    mRaidCustomArray.put(str);
                }
            }
        }
        resetMraid();
    }

    protected String[] dfpCandidateList() {
        return new String[]{"com.google.android.gms.common.GoogleApiAvailability", "com.google.android.gms.common.GoogleApiAvailabilityLight", "com.google.android.gms.common.GooglePlayServicesUtil", "com.google.android.gms.common.GooglePlayServicesUtilLight"};
    }

    protected void defineMraid() {
        String[] dfpCandidateList;
        String stringFieldValue = DtbCommonUtils.getStringFieldValue(getFullyQuaifiedMoPUBClassName(), "SDK_VERSION");
        if (stringFieldValue != null) {
            DtbLog.debug("MOPUB VERSION:" + stringFieldValue);
        } else {
            DtbLog.debug("MOPUB VERSION NOT FOUND");
        }
        DtbCommonUtils.APIVersion aPIVersion = DtbCommonUtils.getAPIVersion(stringFieldValue);
        DtbCommonUtils.APIVersion aPIVersion2 = new DtbCommonUtils.APIVersion();
        Integer num = null;
        for (String str : dfpCandidateList()) {
            if (num != null) {
                break;
            }
            num = DtbCommonUtils.getIntegerFieldValue(str, "GOOGLE_PLAY_SERVICES_VERSION_CODE");
        }
        if (num == null) {
            for (char c2 = 'a'; c2 <= 'z' && (num = DtbCommonUtils.getIntegerFieldValue("com.google.android.gms.common.zz" + c2, "GOOGLE_PLAY_SERVICES_VERSION_CODE")) == null; c2 = (char) (c2 + 1)) {
            }
        }
        if (num != null) {
            int intValue = num.intValue() / 1000;
            aPIVersion2.minorVersion = (intValue % 1000) / 100;
            aPIVersion2.majorVersion = intValue / 1000;
            DtbLog.debug("Google DFP major version:" + aPIVersion2.majorVersion + "minor version:" + aPIVersion2.minorVersion);
        } else {
            DtbLog.debug("Not able to identify Google DFP version");
        }
        mRaidDefined = true;
        int i = AnonymousClass1.$SwitchMap$com$amazon$device$ads$MRAIDPolicy[AdRegistration.getMRAIDPolicy().ordinal()];
        if (i == 1) {
            if (isServerless()) {
                return;
            }
            if (stringFieldValue != null) {
                useMoPUB(aPIVersion);
            } else if (num != null) {
                useDFP(aPIVersion2);
            }
        } else if (i == 2) {
            if (num != null) {
                useDFP(aPIVersion2);
            }
        } else if (i != 3) {
            if (i != 4) {
                return;
            }
            mRaidArray = mRaidCustomArray;
        } else if (stringFieldValue != null) {
            useMoPUB(aPIVersion);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazon.device.ads.DTBAdRequest$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$MRAIDPolicy;

        static {
            int[] iArr = new int[MRAIDPolicy.values().length];
            $SwitchMap$com$amazon$device$ads$MRAIDPolicy = iArr;
            try {
                iArr[MRAIDPolicy.AUTO_DETECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$MRAIDPolicy[MRAIDPolicy.DFP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$MRAIDPolicy[MRAIDPolicy.MOPUB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$MRAIDPolicy[MRAIDPolicy.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$MRAIDPolicy[MRAIDPolicy.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected boolean isServerless() {
        for (String str : AdRegistration.getServerlessMarkers()) {
            try {
                Class.forName(str);
                JSONArray jSONArray = new JSONArray();
                mRaidArray = jSONArray;
                jSONArray.put("1.0");
                mRaidArray.put(DtbConstants.APS_ADAPTER_VERSION_2);
                mRaidArray.put("3.0");
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private void useMoPUB(DtbCommonUtils.APIVersion aPIVersion) {
        if (aPIVersion.majorVersion > 0) {
            JSONArray jSONArray = new JSONArray();
            mRaidArray = jSONArray;
            jSONArray.put("1.0");
            if ((aPIVersion.majorVersion < 3 || aPIVersion.minorVersion < 3) && aPIVersion.majorVersion <= 3) {
                return;
            }
            mRaidArray.put(DtbConstants.APS_ADAPTER_VERSION_2);
        }
    }

    private void useDFP(DtbCommonUtils.APIVersion aPIVersion) {
        if (aPIVersion.majorVersion > 0) {
            JSONArray jSONArray = new JSONArray();
            mRaidArray = jSONArray;
            jSONArray.put("1.0");
            if ((aPIVersion.majorVersion == 7 && aPIVersion.minorVersion >= 8) || aPIVersion.majorVersion > 7) {
                mRaidArray.put(DtbConstants.APS_ADAPTER_VERSION_2);
            }
            if (aPIVersion.majorVersion >= 15) {
                mRaidArray.put("3.0");
            }
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void setSizes(DTBAdSize... dTBAdSizeArr) throws IllegalArgumentException {
        this.adSizes.clear();
        DtbLog.info(LOG_TAG, "Setting " + dTBAdSizeArr.length + " AdSize(s) to the ad request.");
        for (DTBAdSize dTBAdSize : dTBAdSizeArr) {
            if (dTBAdSize != null) {
                this.adSizes.add(dTBAdSize);
            } else {
                throw new IllegalArgumentException("DTBAdSize cannot be null.");
            }
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void putCustomTarget(String str, String str2) {
        try {
            this.customTargets.put(str, str2);
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute putCustomTarget method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute putCustomTarget method", e2);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void setSlotGroup(String str) {
        this.slotGroup = str;
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public String getSlotGroupName() {
        return this.slotGroup;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdSizes(List<DTBAdSize> list) {
        this.adSizes.clear();
        for (DTBAdSize dTBAdSize : list) {
            if (dTBAdSize != null) {
                this.adSizes.add(dTBAdSize);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<DTBAdSize> getAdSizes() {
        return this.adSizes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> getCustomTargets() {
        return this.customTargets;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCustomTargets(Map<String, String> map) {
        this.customTargets.clear();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.customTargets.put(entry.getKey(), entry.getValue());
        }
    }

    public void setRefreshFlag(boolean z) {
        this.refreshFlag = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void recycle() {
        this.requestHasBeenUsed = false;
    }

    private void loadAd(DTBAdCallback dTBAdCallback, String str) throws DTBLoadException {
        AdRegistration.SlotGroup slotGroup = AdRegistration.getSlotGroup(this.slotGroup);
        if (slotGroup != null) {
            DTBAdSize sizeBySlotUUID = slotGroup.getSizeBySlotUUID(str);
            if (sizeBySlotUUID != null) {
                setSizes(sizeBySlotUUID);
                loadAd(dTBAdCallback);
                return;
            }
            throw new DTBLoadException("Slot group does not contain requested slotUUID");
        }
        throw new DTBLoadException("Slot group is not found");
    }

    private void loadAd(DTBAdCallback dTBAdCallback, int i, int i2) throws DTBLoadException {
        loadAd(dTBAdCallback, i, i2, AdType.DISPLAY);
    }

    private void loadAd(DTBAdCallback dTBAdCallback, int i, int i2, AdType adType) throws DTBLoadException {
        AdRegistration.SlotGroup slotGroup = AdRegistration.getSlotGroup(this.slotGroup);
        if (slotGroup != null) {
            DTBAdSize sizeByWidthHeightType = slotGroup.getSizeByWidthHeightType(i, i2, adType);
            if (sizeByWidthHeightType != null) {
                setSizes(sizeByWidthHeightType);
                loadAd(dTBAdCallback);
                return;
            }
            throw new DTBLoadException("Slot group does not contain required size of a given type");
        }
        throw new DTBLoadException("Slot group is not found");
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void loadSmartBanner(DTBAdCallback dTBAdCallback) throws DTBLoadException {
        int i;
        int i2;
        try {
            if (DtbDeviceDataRetriever.isTablet()) {
                i = 728;
                i2 = 90;
            } else {
                i = 320;
                i2 = 50;
            }
            loadAd(dTBAdCallback, i, i2);
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute loadSmartBanner method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute loadSmartBanner method", e2);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void loadAd(DTBAdCallback dTBAdCallback) {
        try {
            this.callback = dTBAdCallback;
            if (this.adSizes.size() <= 0) {
                throw new IllegalArgumentException("Please set at least one ad size in the request.");
            }
            if (this.requestHasBeenUsed) {
                DtbLog.error(LOG_TAG, "This ad request object is already used for loading an ad. Please create a new instance to load the Ad.");
                return;
            }
            this.requestHasBeenUsed = true;
            DtbDeviceRegistration.verifyRegistration();
            for (DTBAdSize dTBAdSize : this.adSizes) {
                this.sizeSlotUUIDMap.put(dTBAdSize.getWidth() + "x" + dTBAdSize.getHeight(), dTBAdSize.getSlotUUID());
            }
            try {
                if (this.mHandlerThread == null && this.isAutoRefresh && this.refreshDuration > 0) {
                    HandlerThread handlerThread = new HandlerThread("DtbHandlerThread");
                    this.mHandlerThread = handlerThread;
                    handlerThread.start();
                    this.mHandler = new Handler(this.mHandlerThread.getLooper());
                }
                internalLoadAd();
            } catch (Exception e2) {
                DtbLog.error(LOG_TAG, "Unknown exception occured in DTB ad call.");
                APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Unknown exception occured in DTB ad call.", e2);
            }
        } catch (RuntimeException e3) {
            DtbLog.error(LOG_TAG, "Fail to execute loadAd method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute loadAd method", e3);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void setAutoRefresh() {
        try {
            this.isAutoRefresh = true;
            setRefreshDuration(60);
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute setAutoRefresh method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute setAutoRefresh method", e2);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void setAutoRefresh(int i) {
        try {
            this.isAutoRefresh = true;
            setRefreshDuration(i);
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute setAutoRefresh method with seconds argument");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute setAutoRefresh method with seconds argument", e2);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void pauseAutoRefresh() {
        this.isAutoRefresh = false;
        this.refreshFlag = false;
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void resumeAutoRefresh() {
        try {
            setAutoRefresh(this.refreshDuration);
            m59lambda$new$0$comamazondeviceadsDTBAdRequest();
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute resumeAutoRefresh method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute resumeAutoRefresh method", e2);
        }
    }

    public int getRefreshDuration() {
        return this.refreshDuration;
    }

    private void setRefreshDuration(int i) {
        if (i < 20) {
            DtbLog.warn(LOG_TAG, "Defaulting auto refresh duration to 60 seconds.");
            this.refreshDuration = 60;
            return;
        }
        this.refreshDuration = i;
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void stop() {
        try {
            stopAutoRefresh();
            HandlerThread handlerThread = this.mHandlerThread;
            if (handlerThread != null) {
                handlerThread.quit();
                DtbLog.debug("Stopping DTB auto refresh");
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute stop method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute stop method", e2);
        }
    }

    private void internalLoadAd() {
        DtbLog.debug("Loading DTB ad.");
        DtbThreadService.getInstance().execute(new Runnable() { // from class: com.amazon.device.ads.DTBAdRequest$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdRequest.this.m58lambda$internalLoadAd$1$comamazondeviceadsDTBAdRequest();
            }
        });
        DtbLog.debug("Dispatched the loadAd task on a background thread.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$internalLoadAd$1$com-amazon-device-ads-DTBAdRequest  reason: not valid java name */
    public /* synthetic */ void m58lambda$internalLoadAd$1$comamazondeviceadsDTBAdRequest() {
        DtbLog.info("Fetching DTB ad.");
        try {
            loadAdRequest();
            DtbLog.debug("DTB Ad call is complete");
        } catch (Exception unused) {
            DtbLog.error(LOG_TAG, "Unknown exception in DTB ad call process.");
        }
    }

    private void stopAutoRefresh() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.refreshFlag = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: refreshAd */
    public void m59lambda$new$0$comamazondeviceadsDTBAdRequest() {
        Activity activity;
        if (!this.isAutoRefresh || this.refreshDuration <= 0) {
            return;
        }
        Context context = this.context;
        if (context instanceof Activity) {
            activity = (Activity) context;
            if (activity.isFinishing() || DtbCommonUtils.isActivityDestroyed(activity)) {
                DtbLog.info("Stopping DTB auto refresh...");
                stop();
                return;
            }
        } else {
            activity = null;
        }
        this.refreshFlag = true;
        if (activity != null && !activity.hasWindowFocus()) {
            DtbLog.debug("Skipping DTB auto refresh...activity not in focus");
            scheduleAdRefreshIfEnabled();
            return;
        }
        internalLoadAd();
    }

    private void scheduleAdRefreshIfEnabled() {
        if (!this.isAutoRefresh || this.refreshDuration <= 0) {
            return;
        }
        stopAutoRefresh();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.postDelayed(this.mRefreshRunnable, this.refreshDuration * 1000);
        }
    }

    private void addGDPRParameters(Map<String, Object> map) {
        Context context = this.context;
        if (context != null) {
            addGDPRParametersFromPreferences(map, PreferenceManager.getDefaultSharedPreferences(context));
        }
    }

    protected void addGDPRParametersFromPreferences(Map<String, Object> map, SharedPreferences sharedPreferences) {
        JSONObject jSONObject = null;
        String string = sharedPreferences.getString("IABConsent_SubjectToGDPR", null);
        Object obj = sharedPreferences.contains("IABTCF_gdprApplies") ? sharedPreferences.getAll().get("IABTCF_gdprApplies") : null;
        String string2 = sharedPreferences.getString("IABConsent_ConsentString", null);
        String string3 = sharedPreferences.getString("IABTCF_TCString", null);
        String encodedNonIABString = AdRegistration.getEncodedNonIABString();
        try {
            if (string3 != null || string2 != null) {
                jSONObject = new JSONObject();
                if (string3 != null) {
                    jSONObject.put("c", string3);
                } else if (string2 != null) {
                    jSONObject.put("c", string2);
                }
            } else if (encodedNonIABString != null) {
                jSONObject = new JSONObject();
                jSONObject.put("c", encodedNonIABString);
            }
            if (string != null || obj != null) {
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                if (obj != null) {
                    try {
                        if ((obj instanceof Integer) && (((Integer) obj).intValue() == 1 || ((Integer) obj).intValue() == 0)) {
                            jSONObject.put("e", obj);
                        } else if (((obj instanceof String) && ((String) obj).equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) || ((String) obj).equals("0")) {
                            jSONObject.put("e", obj);
                        } else {
                            DtbLog.info("IABTCF_gdprApplies should be a 1 or 0 as per IAB guideline");
                        }
                    } catch (ClassCastException unused) {
                        DtbLog.info("IABTCF_gdprApplies should be a number as per IAB guideline");
                    }
                } else if (string != null) {
                    jSONObject.put("e", string);
                }
            }
            if (jSONObject == null || jSONObject.length() == 0) {
                return;
            }
            map.put("gdpr", jSONObject);
        } catch (JSONException unused2) {
            DtbLog.error("INVALID JSON formed for GDPR clause");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadAdRequest() {
        /*
            Method dump skipped, instructions count: 846
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdRequest.loadAdRequest():void");
    }

    private AdError createAdError(AdError.ErrorCode errorCode, String str) {
        AdError adError = new AdError(errorCode, str);
        adError.setAdLoader(DtbCommonUtils.createAutoRefreshAdLoader(this));
        return adError;
    }

    private void triggerCallBack(final DtbMetrics dtbMetrics) {
        scheduleAdRefreshIfEnabled();
        DtbLog.info(LOG_TAG, "Forwarding the error handling to view on main thread.");
        DtbThreadService.executeOnMainThread(new Runnable() { // from class: com.amazon.device.ads.DTBAdRequest$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdRequest.this.m60lambda$triggerCallBack$2$comamazondeviceadsDTBAdRequest(dtbMetrics);
            }
        });
        if (this.submitMetrics) {
            DtbMetrics.Submitter.INSTANCE.submitMetrics(dtbMetrics);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: executeCallback */
    public void m60lambda$triggerCallBack$2$comamazondeviceadsDTBAdRequest(DtbMetrics dtbMetrics) {
        WrapperReport detectWrapper;
        if (this.callback != null) {
            if (this.adError != null && this.adError.getCode() == AdError.ErrorCode.NO_ERROR) {
                DtbLog.debug("Invoking onSuccess() callback for pricepoints: [" + this.adResponse.getDefaultPricePoints() + "]");
                this.callback.onSuccess(this.adResponse);
                DtbLog.debug("Performing SDK wrapping detection. Will submit a report if needed.");
                if (!wrapperDetectionNeeded() || (detectWrapper = detectWrapper(this.callback)) == null) {
                    return;
                }
                if (Math.random() <= DTBMetricsConfiguration.getClientConfigVal("wrapping_pixel", DTBMetricsConfiguration.WRAPPING_PIXEL_DEFAULT_VALUE.intValue(), "sample_rates").intValue() / 100.0f) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("expected_package", detectWrapper.expectedPackage);
                    hashMap.put("wrapper_package", detectWrapper.wrapperPackage);
                    DTBMetricsProcessor.getInstance().submitErrorReport("alert_sdk_wrapping_v2", hashMap, DTBMetricReport.addBid(null, DtbCommonUtils.getHostNameFromUrl(dtbMetrics.getInstPxlUrl())));
                    return;
                }
                return;
            }
            DtbLog.debug("Invoking onFailure() callback with errorCode: " + this.adError.getCode() + "[" + this.adError.getMessage() + "]");
            this.callback.onFailure(this.adError);
            return;
        }
        DtbLog.error("No callback -DTBAdCallback- provided to loadAd() to handle success or failure.");
    }

    private void addMraidParameters(Map<String, Object> map) {
        JSONArray jSONArray = mRaidArray;
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        map.put("mraid", mRaidArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class WrapperReport {
        String expectedPackage;
        String wrapperPackage;

        WrapperReport() {
        }
    }

    private WrapperReport detectWrapper(Object obj) {
        Context applicationContext = AdRegistration.getContext().getApplicationContext();
        try {
            String name = obj.getClass().getPackage().getName();
            String str = applicationContext.getApplicationInfo().packageName;
            StringTokenizer stringTokenizer = new StringTokenizer(name, ".");
            StringTokenizer stringTokenizer2 = new StringTokenizer(str, ".");
            if (stringTokenizer.countTokens() < 2 || stringTokenizer2.countTokens() < 2) {
                WrapperReport wrapperReport = new WrapperReport();
                wrapperReport.expectedPackage = str;
                wrapperReport.wrapperPackage = name;
                return wrapperReport;
            }
            for (int i = 0; i < 2; i++) {
                if (!stringTokenizer.nextToken().equals(stringTokenizer2.nextToken())) {
                    WrapperReport wrapperReport2 = new WrapperReport();
                    wrapperReport2.expectedPackage = name;
                    wrapperReport2.wrapperPackage = str;
                    return wrapperReport2;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean wrapperDetectionNeeded() {
        DtbSharedPreferences dtbSharedPreferences = DtbSharedPreferences.getInstance();
        Long wrapperDetectionLastPing = dtbSharedPreferences.getWrapperDetectionLastPing();
        long time = new Date().getTime();
        boolean z = true;
        if (wrapperDetectionLastPing != null && time - wrapperDetectionLastPing.longValue() <= WEEK) {
            z = false;
        }
        if (z) {
            dtbSharedPreferences.saveWrapperDetectionLastPing(time);
        }
        return z;
    }
}
