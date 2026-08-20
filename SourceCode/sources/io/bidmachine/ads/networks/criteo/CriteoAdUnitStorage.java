package io.bidmachine.ads.networks.criteo;

import android.text.TextUtils;
import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.BannerAdUnit;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.explorestack.iab.vast.VastError;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkConfigParams;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
class CriteoAdUnitStorage {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Map<String, AdUnit> adUnitMap = new HashMap();

    CriteoAdUnitStorage() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<AdUnit> extractAdUnits(NetworkConfigParams networkConfigParams) {
        List<Map<String, String>> value;
        AdUnit bannerAdUnit;
        EnumMap<AdsFormat, List<Map<String, String>>> obtainNetworkMediationConfigs = networkConfigParams.obtainNetworkMediationConfigs(AdsFormat.values());
        if (obtainNetworkMediationConfigs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<AdsFormat, List<Map<String, String>>> entry : obtainNetworkMediationConfigs.entrySet()) {
            AdsFormat key = entry.getKey();
            if (key != null && (value = entry.getValue()) != null) {
                for (Map<String, String> map : value) {
                    String str = map.get("ad_unit_id");
                    if (!TextUtils.isEmpty(str)) {
                        switch (AnonymousClass1.$SwitchMap$io$bidmachine$AdsFormat[key.ordinal()]) {
                            case 1:
                            case 2:
                                bannerAdUnit = new BannerAdUnit(str, new AdSize(320, 50));
                                break;
                            case 3:
                                bannerAdUnit = new BannerAdUnit(str, new AdSize(VastError.ERROR_CODE_GENERAL_WRAPPER, 250));
                                break;
                            case 4:
                                bannerAdUnit = new BannerAdUnit(str, new AdSize(728, 90));
                                break;
                            case 5:
                            case 6:
                            case 7:
                                bannerAdUnit = new InterstitialAdUnit(str);
                                break;
                            default:
                                bannerAdUnit = null;
                                break;
                        }
                        if (bannerAdUnit != null) {
                            adUnitMap.put(str, bannerAdUnit);
                            arrayList.add(bannerAdUnit);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: io.bidmachine.ads.networks.criteo.CriteoAdUnitStorage$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$AdsFormat;

        static {
            int[] iArr = new int[AdsFormat.values().length];
            $SwitchMap$io$bidmachine$AdsFormat = iArr;
            try {
                iArr[AdsFormat.Banner.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Banner_320x50.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Banner_300x250.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Banner_728x90.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Interstitial.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.InterstitialStatic.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.InterstitialVideo.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdUnit getAdUnit(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return adUnitMap.get(str);
    }

    static Map<String, AdUnit> getAdUnitMap() {
        return adUnitMap;
    }
}
