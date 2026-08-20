package io.bidmachine.ads.networks.notsy;

import io.bidmachine.AdsFormat;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class InternalNotsyAdUnit {
    private final AdsFormat adsFormat;
    private final Map<String, String> customTargeting;
    private final InternalNotsyData internalNotsyData;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyAdUnit(AdsFormat adsFormat, InternalNotsyData internalNotsyData, Map<String, String> map) {
        this.adsFormat = adsFormat;
        this.internalNotsyData = internalNotsyData;
        this.customTargeting = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdsFormat getAdsFormat() {
        return this.adsFormat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyData getInternalNotsyData() {
        return this.internalNotsyData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> getCustomTargeting() {
        return this.customTargeting;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        InternalNotsyAdUnit internalNotsyAdUnit = (InternalNotsyAdUnit) obj;
        return this.adsFormat == internalNotsyAdUnit.adsFormat && this.internalNotsyData == internalNotsyAdUnit.internalNotsyData;
    }

    public int hashCode() {
        return (this.adsFormat.hashCode() * 31) + this.internalNotsyData.hashCode();
    }
}
