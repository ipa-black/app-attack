package io.bidmachine.banner;

import com.explorestack.protobuf.adcom.Placement;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.AdsType;
import io.bidmachine.utils.ProtoUtils;
/* loaded from: classes5.dex */
public class BannerAdRequestParameters extends AdRequestParameters {
    private final BannerSize bannerSize;

    public BannerAdRequestParameters(BannerSize bannerSize) {
        super(AdsType.Banner);
        this.bannerSize = bannerSize;
    }

    public BannerSize getBannerSize() {
        return this.bannerSize;
    }

    @Override // io.bidmachine.AdRequestParameters
    public boolean isPlacementObjectValid(Placement placement) throws Throwable {
        return ProtoUtils.isBannerPlacement(placement, this.bannerSize);
    }

    @Override // io.bidmachine.AdRequestParameters
    public boolean isParametersMatched(AdRequestParameters adRequestParameters) {
        return super.isParametersMatched(adRequestParameters) && (adRequestParameters instanceof BannerAdRequestParameters) && isParametersMatchedInternal((BannerAdRequestParameters) adRequestParameters);
    }

    private boolean isParametersMatchedInternal(BannerAdRequestParameters bannerAdRequestParameters) {
        return this.bannerSize == bannerAdRequestParameters.bannerSize;
    }
}
