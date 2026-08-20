package com.amazon.device.ads;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class DTBAdResponse {
    private static final String AMAZON_AD_INFO = "{bidID:'%s',aaxHost:'%s',type:'%s',width:%d,height:%d}";
    private static final String LOG_TAG = "DTBAdResponse";
    private String bidId;
    private String crid;
    private String hostName;
    private String impressionUrl;
    private boolean isVideo;
    private Map<String, List<String>> kvpDictionary = new HashMap();
    private Map<DTBAdSize, List<DtbPricePoint>> pricepoints = new HashMap();
    private DTBAdRequest refreshLoader;
    private String videoInventoryType;
    private int videoSkipAfterDurationInSeconds;

    public String getImpressionUrl() {
        return this.impressionUrl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setImpressionUrl(String str) {
        this.impressionUrl = str;
    }

    public String getCrid() {
        return this.crid;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCrid(String str) {
        this.crid = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBidId(String str) {
        this.bidId = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setKvpDictionary(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject.getJSONArray(next);
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (this.kvpDictionary.get(next) == null) {
                        this.kvpDictionary.put(next, new ArrayList());
                    }
                    this.kvpDictionary.get(next).add(jSONArray.getString(i));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void putPricePoint(DtbPricePoint dtbPricePoint) {
        if (this.pricepoints.get(dtbPricePoint.getAdSize()) == null) {
            this.pricepoints.put(dtbPricePoint.getAdSize(), new ArrayList());
        }
        this.pricepoints.get(dtbPricePoint.getAdSize()).add(dtbPricePoint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVideoSkipAfterDurationInSeconds(int i) {
        this.videoSkipAfterDurationInSeconds = i;
    }

    public Integer getVideoSkipAfterDurationInSeconds() {
        return Integer.valueOf(this.videoSkipAfterDurationInSeconds);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVideoInventoryType(String str) {
        this.videoInventoryType = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getVideoInventoryType() {
        return this.videoInventoryType;
    }

    public String getBidId() {
        return this.bidId;
    }

    private String getBidKey() {
        if (!this.isVideo) {
            return DTBAdLoader.A9_BID_ID_KEY;
        }
        return DTBAdLoader.A9_VID_KEY;
    }

    public Map<String, List<String>> getDefaultDisplayAdsRequestCustomParams() {
        HashMap hashMap = new HashMap();
        try {
            if (!this.isVideo) {
                if (this.pricepoints.size() > 0) {
                    hashMap.put(DTBAdLoader.A9_BID_ID_KEY, Collections.singletonList(this.bidId));
                    hashMap.put(getBidKey(), Collections.singletonList(this.bidId));
                    hashMap.put(DTBAdLoader.A9_HOST_KEY, Collections.singletonList(DtbSharedPreferences.getInstance().getAaxHostname()));
                    for (DtbPricePoint dtbPricePoint : this.pricepoints.get(getDTBAds().get(0))) {
                        hashMap.put(DTBAdLoader.A9_PRICE_POINTS_KEY, Collections.singletonList(dtbPricePoint.getPricePoint()));
                    }
                }
                hashMap.putAll(getKvpDictionary());
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getDefaultDisplayAdsRequestCustomParams method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute getDefaultDisplayAdsRequestCustomParams method", e2);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, List<String>> getKvpDictionary() {
        return this.kvpDictionary;
    }

    public Map<String, String> getDefaultVideoAdsRequestCustomParams() {
        HashMap hashMap = new HashMap();
        try {
            if (this.isVideo) {
                hashMap.put(DTBAdLoader.A9_VID_KEY, this.bidId);
                hashMap.put(DTBAdLoader.A9_HOST_KEY, this.hostName);
                for (DtbPricePoint dtbPricePoint : this.pricepoints.get(getDTBAds().get(0))) {
                    hashMap.put(DTBAdLoader.A9_PRICE_POINTS_KEY, dtbPricePoint.getPricePoint());
                }
                for (Map.Entry<String, List<String>> entry : this.kvpDictionary.entrySet()) {
                    hashMap.put(entry.getKey(), TextUtils.join(", ", entry.getValue()));
                }
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getDefaultVideoAdsRequestCustomParams method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute getDefaultVideoAdsRequestCustomParams method", e2);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, List<String>> getVideoAdsRequestCustomParamsAsList() {
        HashMap hashMap = new HashMap();
        if (this.isVideo) {
            hashMap.put(DTBAdLoader.A9_VID_KEY, Collections.singletonList(this.bidId));
            hashMap.put(DTBAdLoader.A9_HOST_KEY, Collections.singletonList(this.hostName));
            for (DtbPricePoint dtbPricePoint : this.pricepoints.get(getDTBAds().get(0))) {
                hashMap.put(DTBAdLoader.A9_PRICE_POINTS_KEY, Collections.singletonList(dtbPricePoint.getPricePoint()));
            }
            hashMap.putAll(getKvpDictionary());
        }
        return hashMap;
    }

    public int getAdCount() {
        return this.pricepoints.size();
    }

    public List<DTBAdSize> getDTBAds() {
        return new ArrayList(this.pricepoints.keySet());
    }

    public String getPricePoints(DTBAdSize dTBAdSize) {
        try {
            List<DtbPricePoint> list = this.pricepoints.get(dTBAdSize);
            if (list == null || list.isEmpty()) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                sb.append(list.get(i).getPricePoint());
                if (i != list.size() - 1) {
                    sb.append(",");
                }
            }
            return sb.toString();
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getPricePoints method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute getPricePoints method", e2);
            return null;
        }
    }

    @Deprecated
    public String getHost() {
        try {
            return DtbSharedPreferences.getInstance().getAaxHostname();
        } catch (IllegalArgumentException e2) {
            DtbLog.debug(LOG_TAG, "Could not get host name " + e2.getLocalizedMessage());
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute getPricePoints method", e2);
            return null;
        }
    }

    public String getDefaultPricePoints() {
        try {
            if (getAdCount() == 0) {
                return null;
            }
            return getPricePoints(getDTBAds().get(0));
        } catch (IllegalArgumentException e2) {
            DtbLog.debug(LOG_TAG, "Fail to execute getDefaultPricePoints method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute getDefaultPricePoints method", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isVideo() {
        return this.isVideo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setVideo(boolean z) {
        this.isVideo = z;
    }

    public String getMoPubKeywords() {
        Map<String, List<String>> videoAdsRequestCustomParamsAsList;
        try {
            DtbLog.debug(LOG_TAG, "API 'getMoPubKeywords' supports banner & video Ads.");
            StringBuilder sb = new StringBuilder();
            if (!this.isVideo) {
                videoAdsRequestCustomParamsAsList = getDefaultDisplayAdsRequestCustomParams();
            } else {
                videoAdsRequestCustomParamsAsList = getVideoAdsRequestCustomParamsAsList();
            }
            if (this.pricepoints.size() > 0) {
                boolean z = true;
                for (Map.Entry<String, List<String>> entry : videoAdsRequestCustomParamsAsList.entrySet()) {
                    for (String str : entry.getValue()) {
                        if (z) {
                            z = false;
                        } else {
                            sb.append(",");
                        }
                        sb.append(entry.getKey()).append(":").append(str);
                    }
                }
            }
            return sb.toString();
        } catch (IllegalArgumentException e2) {
            DtbLog.debug(LOG_TAG, "Fail to execute getMoPubKeywords method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute getMoPubKeywords method", e2);
            return "";
        }
    }

    public String getMoPubServerlessKeywords() {
        try {
            StringBuilder sb = new StringBuilder();
            Map<String, List<String>> defaultDisplayAdsRequestCustomParams = getDefaultDisplayAdsRequestCustomParams();
            if (this.pricepoints.size() > 0 && defaultDisplayAdsRequestCustomParams.containsKey(DTBAdLoader.A9_PRICE_POINTS_KEY)) {
                List<String> list = defaultDisplayAdsRequestCustomParams.get(DTBAdLoader.A9_PRICE_POINTS_KEY);
                if (list.size() > 0) {
                    sb.append("amznslots:").append(list.get(0));
                }
            }
            return sb.toString();
        } catch (IllegalArgumentException e2) {
            DtbLog.debug(LOG_TAG, "Fail to execute getMoPubServerlessKeywords method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute getMoPubServerlessKeywords method", e2);
            return "";
        }
    }

    private String getAmazonInfo() {
        String str = "";
        if (getDTBAds().size() == 0) {
            return "";
        }
        DTBAdSize dTBAdSize = getDTBAds().get(0);
        int width = dTBAdSize.getWidth();
        int height = dTBAdSize.getHeight();
        int i = AnonymousClass1.$SwitchMap$com$amazon$device$ads$AdType[dTBAdSize.getDTBAdType().ordinal()];
        if (i == 1) {
            str = "video";
        } else if (i == 2) {
            str = "banner";
        } else if (i == 3) {
            Activity currentActivity = AdRegistration.getCurrentActivity();
            str = "interstitial";
            if (currentActivity != null) {
                Display defaultDisplay = ((WindowManager) currentActivity.getSystemService("window")).getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                int pixelsToDeviceIndependenPixels = DTBAdUtil.pixelsToDeviceIndependenPixels(displayMetrics.widthPixels);
                height = DTBAdUtil.pixelsToDeviceIndependenPixels(displayMetrics.heightPixels);
                width = pixelsToDeviceIndependenPixels;
            }
        }
        String str2 = this.hostName;
        if (str2 == null) {
            str2 = DtbDebugProperties.getAaxHostName(DtbSharedPreferences.getInstance().getAaxHostname());
        }
        return String.format(AMAZON_AD_INFO, this.bidId, str2, str, Integer.valueOf(width), Integer.valueOf(height));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazon.device.ads.DTBAdResponse$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$AdType;

        static {
            int[] iArr = new int[AdType.values().length];
            $SwitchMap$com$amazon$device$ads$AdType = iArr;
            try {
                iArr[AdType.VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$AdType[AdType.DISPLAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$AdType[AdType.INTERSTITIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHostName(String str) {
        this.hostName = str;
    }

    public HashMap<String, Object> getRenderingMap() {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            hashMap.put(DTBAdView.BID_HTML, SDKUtilities.getBidInfo(this));
            hashMap.put(DTBAdView.EVENT_SERVER_PARAMETER, SDKUtilities.getPricePoint(this));
            hashMap.put(DTBAdView.AMAZON_AD_INFO, getAmazonInfo());
            hashMap.put(DTBAdView.BID_IDENTIFIER, this.bidId);
            hashMap.put(DTBAdView.HOSTNAME_IDENTIFIER, this.hostName);
            hashMap.put(DTBAdView.START_LOAD_TIME, Long.valueOf(new Date().getTime()));
        } catch (IllegalArgumentException e2) {
            DtbLog.debug(LOG_TAG, "Fail to execute getRenderingMap method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute getRenderingMap method", e2);
        }
        return hashMap;
    }

    public Bundle getRenderingBundle() {
        return getRenderingBundle(false);
    }

    public Bundle getRenderingBundle(String str) {
        return getRenderingBundle(false, str);
    }

    public Bundle getRenderingBundle(boolean z) {
        return getRenderingBundle(z, null);
    }

    public Bundle getRenderingBundle(boolean z, String str) {
        Bundle initializeEmptyBundle = DtbCommonUtils.initializeEmptyBundle();
        try {
            initializeEmptyBundle.putString(DTBAdView.BID_HTML, SDKUtilities.getBidInfo(this));
            initializeEmptyBundle.putString(DTBAdView.BID_IDENTIFIER, this.bidId);
            initializeEmptyBundle.putString(DTBAdView.HOSTNAME_IDENTIFIER, this.hostName);
            initializeEmptyBundle.putBoolean(DTBAdView.VIDEO, this.isVideo);
            initializeEmptyBundle.putString(DTBAdView.EVENT_SERVER_PARAMETER, SDKUtilities.getPricePoint(this));
            initializeEmptyBundle.putString(DTBAdView.AMAZON_AD_INFO, getAmazonInfo());
            initializeEmptyBundle.putLong(DTBAdView.START_LOAD_TIME, new Date().getTime());
            if (z) {
                initializeEmptyBundle.putInt(DTBAdView.EXPECTED_WIDTH, SDKUtilities.getWidth(this));
                initializeEmptyBundle.putInt(DTBAdView.EXPECTED_HEIGHT, SDKUtilities.getHeight(this));
            }
            if (!DtbCommonUtils.isNullOrEmpty(str)) {
                initializeEmptyBundle.putString(DTBAdView.REQUEST_QUEUE, str);
            }
        } catch (IllegalArgumentException e2) {
            DtbLog.debug(LOG_TAG, "Fail to execute getRenderingBundle method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute getRenderingBundle method", e2);
        }
        return initializeEmptyBundle;
    }

    public DTBAdRequest getAdLoader() {
        return this.refreshLoader;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdLoader(DTBAdRequest dTBAdRequest) {
        this.refreshLoader = dTBAdRequest;
    }
}
