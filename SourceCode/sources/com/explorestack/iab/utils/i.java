package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
/* loaded from: classes2.dex */
public class i extends g<CircleCountdownView> {

    /* renamed from: g  reason: collision with root package name */
    public boolean f9442g;

    public i(View.OnClickListener onClickListener) {
        super(onClickListener);
        this.f9442g = false;
    }

    @Override // com.explorestack.iab.utils.g
    public void a(Context context, CircleCountdownView circleCountdownView, IabElementStyle iabElementStyle) {
        circleCountdownView.setImage(Assets.getBitmapFromBase64(this.f9442g ? Assets.unmute : Assets.mute));
    }

    public void a(boolean z) {
        this.f9442g = z;
        d();
    }

    @Override // com.explorestack.iab.utils.g
    public IabElementStyle c(Context context, IabElementStyle iabElementStyle) {
        if (iabElementStyle == null || !"speakerfill".equals(iabElementStyle.getStyle())) {
            return Assets.defMuteStyle;
        }
        IabElementStyle iabElementStyle2 = new IabElementStyle();
        iabElementStyle2.setOutlined(Boolean.TRUE);
        return Assets.defMuteStyle.copyWith(iabElementStyle2);
    }

    @Override // com.explorestack.iab.utils.g
    /* renamed from: d */
    public CircleCountdownView b(Context context, IabElementStyle iabElementStyle) {
        return new CircleCountdownView(context);
    }
}
