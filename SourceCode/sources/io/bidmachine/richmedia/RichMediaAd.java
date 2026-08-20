package io.bidmachine.richmedia;

import android.content.Context;
import io.bidmachine.AdListener;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.ViewAd;
import io.bidmachine.ViewAdObject;
import io.bidmachine.core.Logger;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedRichMediaAd;
/* loaded from: classes5.dex */
class RichMediaAd extends ViewAd<RichMediaAd, RichMediaRequest, ViewAdObject<RichMediaRequest, UnifiedRichMediaAd, UnifiedFullscreenAdRequestParams>, UnifiedFullscreenAdRequestParams, AdListener<RichMediaAd>> implements RichMediaInteractor {
    /* JADX INFO: Access modifiers changed from: protected */
    public RichMediaAd(Context context) {
        super(context, AdsType.RichMedia);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.BidMachineAd
    public ViewAdObject<RichMediaRequest, UnifiedRichMediaAd, UnifiedFullscreenAdRequestParams> createAdObject(ContextProvider contextProvider, RichMediaRequest richMediaRequest, NetworkAdapter networkAdapter, AdObjectParams adObjectParams, AdProcessCallback adProcessCallback) {
        UnifiedRichMediaAd createRichMedia = networkAdapter.createRichMedia();
        if (createRichMedia == null) {
            return null;
        }
        ViewAdObject<RichMediaRequest, UnifiedRichMediaAd, UnifiedFullscreenAdRequestParams> viewAdObject = new ViewAdObject<>(contextProvider, adProcessCallback, richMediaRequest, adObjectParams, createRichMedia);
        viewAdObject.setWidthMeasureMode(ViewAdObject.MeasureMode.Match);
        viewAdObject.setHeightMeasureMode(ViewAdObject.MeasureMode.Match);
        return viewAdObject;
    }

    @Override // io.bidmachine.richmedia.RichMediaInteractor
    public void resume() {
        try {
            ViewAdObject viewAdObject = (ViewAdObject) getLoadedAdObject();
            if (viewAdObject != null) {
                ((UnifiedRichMediaAd) viewAdObject.getUnifiedAd()).onResume();
            }
        } catch (Throwable th) {
            Logger.log(th);
        }
    }

    @Override // io.bidmachine.richmedia.RichMediaInteractor
    public void pause() {
        try {
            ViewAdObject viewAdObject = (ViewAdObject) getLoadedAdObject();
            if (viewAdObject != null) {
                ((UnifiedRichMediaAd) viewAdObject.getUnifiedAd()).onPause();
            }
        } catch (Throwable th) {
            Logger.log(th);
        }
    }

    @Override // io.bidmachine.richmedia.RichMediaInteractor
    public void mute() {
        try {
            ViewAdObject viewAdObject = (ViewAdObject) getLoadedAdObject();
            if (viewAdObject != null) {
                ((UnifiedRichMediaAd) viewAdObject.getUnifiedAd()).onMute();
            }
        } catch (Throwable th) {
            Logger.log(th);
        }
    }

    @Override // io.bidmachine.richmedia.RichMediaInteractor
    public void unmute() {
        try {
            ViewAdObject viewAdObject = (ViewAdObject) getLoadedAdObject();
            if (viewAdObject != null) {
                ((UnifiedRichMediaAd) viewAdObject.getUnifiedAd()).onUnMute();
            }
        } catch (Throwable th) {
            Logger.log(th);
        }
    }
}
