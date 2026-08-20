package io.bidmachine;

import android.content.Context;
import io.bidmachine.AdListener;
import io.bidmachine.FullScreenAd;
import io.bidmachine.FullScreenAdObject;
import io.bidmachine.FullScreenAdRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
public abstract class FullScreenAd<SelfType extends FullScreenAd<SelfType, AdRequestType, AdObjectType, ListenerType>, AdRequestType extends FullScreenAdRequest<AdRequestType>, AdObjectType extends FullScreenAdObject<AdRequestType>, ListenerType extends AdListener<SelfType>> extends BidMachineAd<SelfType, AdRequestType, AdObjectType, AdObjectParams, UnifiedFullscreenAdRequestParams, ListenerType> {
    /* JADX INFO: Access modifiers changed from: protected */
    public FullScreenAd(Context context, AdsType adsType) {
        super(context, adsType);
    }

    public void show() {
        if (!Utils.isNetworkAvailable(getContext())) {
            processShowFail(BMError.NoConnection);
            return;
        }
        FullScreenAdObject fullScreenAdObject = (FullScreenAdObject) prepareShow();
        if (fullScreenAdObject == null) {
            return;
        }
        try {
            fullScreenAdObject.show(getContextProvider());
        } catch (Throwable th) {
            Logger.log(th);
            processShowFail(BMError.internal("Exception when showing fullscreen object"));
        }
    }

    @Override // io.bidmachine.BidMachineAd, io.bidmachine.IAd
    public boolean canShow() {
        return super.canShow() && Utils.isNetworkAvailable(getContext());
    }
}
