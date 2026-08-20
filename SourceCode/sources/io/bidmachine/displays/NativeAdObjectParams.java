package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.TrackEventType;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.IabUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
final class NativeAdObjectParams extends AdObjectParams implements UnifiedMediationParams.MappedUnifiedMediationParams.DataProvider {
    private final UnifiedMediationParams mediationParams;
    private HashMap<String, Object> params;

    @Override // io.bidmachine.models.AdObjectParams
    public boolean isValid() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAdObjectParams(Ad ad) {
        super(ad);
        this.mediationParams = new UnifiedMediationParams.MappedUnifiedMediationParams(this);
        prepareEvents(ad.getDisplay().getEventList());
        Ad.Display.Native r6 = ad.getDisplay().getNative();
        Ad.Display.Native.LinkAsset link = r6.getLink();
        if (link != null && link != Ad.Display.Native.LinkAsset.getDefaultInstance()) {
            getData().put(IabUtils.KEY_CLICK_URL, link.getUrl());
            for (int i = 0; i < link.getTrkrCount(); i++) {
                addEvent(TrackEventType.Click, link.getTrkr(i));
            }
        }
        for (Ad.Display.Native.Asset asset : r6.getAssetList()) {
            int id = asset.getId();
            if (id == 4) {
                Ad.Display.Native.Asset.VideoAsset defaultInstance = Ad.Display.Native.Asset.VideoAsset.getDefaultInstance();
                if (!asset.getVideo().getCurl().equals(defaultInstance.getCurl())) {
                    getData().put(IabUtils.KEY_VIDEO_URL, asset.getVideo().getCurl());
                }
                if (!asset.getVideo().getAdm().equals(defaultInstance.getAdm())) {
                    getData().put(IabUtils.KEY_VIDEO_ADM, asset.getVideo().getAdm());
                }
            } else if (id == 7) {
                try {
                    getData().put(IabUtils.KEY_RATING, Float.valueOf(asset.getData().getValue()));
                } catch (NumberFormatException unused) {
                }
            } else if (id == 8) {
                getData().put(IabUtils.KEY_CTA, asset.getData().getValue());
            } else if (id == 123) {
                getData().put("title", asset.getTitle().getText());
            } else if (id == 124) {
                getData().put(IabUtils.KEY_ICON_URL, asset.getImage().getUrl());
            } else if (id == 127) {
                getData().put("description", asset.getData().getValue());
            } else if (id == 128) {
                getData().put(IabUtils.KEY_IMAGE_URL, asset.getImage().getUrl());
            }
        }
    }

    @Override // io.bidmachine.unified.UnifiedMediationParams.MappedUnifiedMediationParams.DataProvider
    public Map<String, Object> getData() {
        if (this.params == null) {
            this.params = new HashMap<>();
        }
        return this.params;
    }

    @Override // io.bidmachine.models.AdObjectParams
    public UnifiedMediationParams toMediationParams() {
        return this.mediationParams;
    }
}
