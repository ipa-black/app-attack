package io.bidmachine.richmedia;

import android.content.Context;
import android.util.AttributeSet;
import io.bidmachine.AdView;
import io.bidmachine.ViewAdObject;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedRichMediaAd;
/* loaded from: classes5.dex */
public class RichMediaView extends AdView<RichMediaView, RichMediaAd, RichMediaRequest, ViewAdObject<RichMediaRequest, UnifiedRichMediaAd, UnifiedFullscreenAdRequestParams>, RichMediaListener> implements RichMediaInteractor {
    public RichMediaView(Context context) {
        super(context);
    }

    public RichMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RichMediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdView
    public RichMediaAd createAd(Context context) {
        return new RichMediaAd(context);
    }

    @Override // io.bidmachine.richmedia.RichMediaInteractor
    public void resume() {
        resume(getPendingAd());
        resume(getCurrentAd());
    }

    private void resume(RichMediaAd richMediaAd) {
        if (richMediaAd != null) {
            richMediaAd.resume();
        }
    }

    @Override // io.bidmachine.richmedia.RichMediaInteractor
    public void pause() {
        pause(getPendingAd());
        pause(getCurrentAd());
    }

    private void pause(RichMediaAd richMediaAd) {
        if (richMediaAd != null) {
            richMediaAd.pause();
        }
    }

    @Override // io.bidmachine.richmedia.RichMediaInteractor
    public void mute() {
        mute(getPendingAd());
        mute(getCurrentAd());
    }

    private void mute(RichMediaAd richMediaAd) {
        if (richMediaAd != null) {
            richMediaAd.mute();
        }
    }

    @Override // io.bidmachine.richmedia.RichMediaInteractor
    public void unmute() {
        unmute(getPendingAd());
        unmute(getCurrentAd());
    }

    private void unmute(RichMediaAd richMediaAd) {
        if (richMediaAd != null) {
            richMediaAd.unmute();
        }
    }
}
