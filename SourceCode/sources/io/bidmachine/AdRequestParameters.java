package io.bidmachine;

import com.explorestack.protobuf.adcom.Placement;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class AdRequestParameters {
    private final AdsType adsType;
    private String bidPayload;
    private CustomParams customParams;
    private List<NetworkConfig> networkConfigList;
    private String placementId;
    private PriceFloorParams priceFloorParams;
    private SessionAdParams sessionAdParams;
    private TargetingParams targetingParams;
    private Integer timeOutMs;

    public abstract boolean isPlacementObjectValid(Placement placement) throws Throwable;

    /* JADX INFO: Access modifiers changed from: protected */
    public AdRequestParameters(AdsType adsType) {
        this.adsType = adsType;
    }

    public AdsType getAdsType() {
        return this.adsType;
    }

    public PriceFloorParams getPriceFloorParams() {
        return this.priceFloorParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPriceFloorParams(PriceFloorParams priceFloorParams) {
        this.priceFloorParams = priceFloorParams;
    }

    public TargetingParams getTargetingParams() {
        return this.targetingParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTargetingParams(TargetingParams targetingParams) {
        this.targetingParams = targetingParams;
    }

    public SessionAdParams getSessionAdParams() {
        return this.sessionAdParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSessionAdParams(SessionAdParams sessionAdParams) {
        this.sessionAdParams = sessionAdParams;
    }

    public List<NetworkConfig> getNetworkConfigList() {
        return this.networkConfigList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNetworkConfigList(List<NetworkConfig> list) {
        this.networkConfigList = list;
    }

    public Integer getTimeOutMs() {
        return this.timeOutMs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTimeOutMs(Integer num) {
        this.timeOutMs = num;
    }

    public String getBidPayload() {
        return this.bidPayload;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBidPayload(String str) {
        this.bidPayload = str;
    }

    public String getPlacementId() {
        return this.placementId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlacementId(String str) {
        this.placementId = str;
    }

    public CustomParams getCustomParams() {
        return this.customParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCustomParams(CustomParams customParams) {
        this.customParams = customParams;
    }

    public boolean isParametersMatched(AdRequestParameters adRequestParameters) {
        return this.adsType == adRequestParameters.adsType;
    }

    public boolean isPricePassedByPriceFloor(double d2) {
        PriceFloorParams priceFloorParams = this.priceFloorParams;
        if (priceFloorParams == null) {
            return true;
        }
        Map<String, Double> priceFloors = priceFloorParams.getPriceFloors();
        if (priceFloors.isEmpty()) {
            return true;
        }
        Iterator<Double> it = priceFloors.values().iterator();
        while (it.hasNext()) {
            if (d2 > it.next().doubleValue()) {
                return true;
            }
        }
        return false;
    }
}
