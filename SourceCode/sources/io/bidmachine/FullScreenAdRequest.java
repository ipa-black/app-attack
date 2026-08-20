package io.bidmachine;

import io.bidmachine.AdRequest;
import io.bidmachine.FullScreenAdRequest;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
/* loaded from: classes5.dex */
public abstract class FullScreenAdRequest<SelfType extends FullScreenAdRequest<SelfType>> extends AdRequest<SelfType, FullScreenAdRequestParameters, UnifiedFullscreenAdRequestParams> {
    /* JADX INFO: Access modifiers changed from: protected */
    public FullScreenAdRequest(FullScreenAdRequestParameters fullScreenAdRequestParameters) {
        super(fullScreenAdRequestParameters);
    }

    public AdContentType getAdContentType() {
        return getAdRequestParameters().getAdContentType();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.bidmachine.AdRequest
    public boolean isPlacementBuilderMatch(PlacementBuilder placementBuilder) {
        return super.isPlacementBuilderMatch(placementBuilder) && getAdRequestParameters().isContentTypeMatch(placementBuilder.getAdContentType());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdRequest
    public UnifiedFullscreenAdRequestParams createUnifiedAdRequestParams(FullScreenAdRequestParameters fullScreenAdRequestParameters, TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        return new FullscreenUnifiedAdRequestParams(fullScreenAdRequestParameters, targetingParams, dataRestrictions);
    }

    /* loaded from: classes5.dex */
    protected static abstract class FullScreenRequestBuilder<SelfType extends FullScreenRequestBuilder<SelfType, ReturnType>, ReturnType extends FullScreenAdRequest<ReturnType>> extends AdRequest.AdRequestBuilderImpl<SelfType, ReturnType, FullScreenAdRequestParameters> {
        protected AdContentType adContentType = AdContentType.All;

        /* JADX INFO: Access modifiers changed from: protected */
        public SelfType setAdContentType(AdContentType adContentType) {
            this.adContentType = adContentType;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class FullscreenUnifiedAdRequestParams extends UnifiedAdRequestParamsImpl<FullScreenAdRequestParameters> implements UnifiedFullscreenAdRequestParams {
        @Override // io.bidmachine.UnifiedAdRequestParamsImpl, io.bidmachine.unified.UnifiedAdRequestParams, io.bidmachine.unified.UnifiedFullscreenAdRequestParams
        public /* bridge */ /* synthetic */ FullScreenAdRequestParameters getAdRequestParameters() {
            return (FullScreenAdRequestParameters) super.getAdRequestParameters();
        }

        private FullscreenUnifiedAdRequestParams(FullScreenAdRequestParameters fullScreenAdRequestParameters, TargetingParams targetingParams, DataRestrictions dataRestrictions) {
            super(fullScreenAdRequestParameters, targetingParams, dataRestrictions);
        }
    }
}
