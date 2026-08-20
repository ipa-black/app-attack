package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
/* loaded from: classes2.dex */
public class d extends g<CircleCountdownView> {
    public d(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.g
    public void a(Context context, CircleCountdownView circleCountdownView, IabElementStyle iabElementStyle) {
        super.a(context, (Context) circleCountdownView, iabElementStyle);
        circleCountdownView.setImage(Assets.getBitmapFromBase64(("skip".equals(iabElementStyle.getStyle()) || "skipfill".equals(iabElementStyle.getStyle())) ? Assets.skip : Assets.close));
    }

    @Override // com.explorestack.iab.utils.g
    public IabElementStyle c(Context context, IabElementStyle iabElementStyle) {
        return Assets.resolveDefCloseStyle(context, iabElementStyle);
    }

    @Override // com.explorestack.iab.utils.g
    /* renamed from: d */
    public CircleCountdownView b(Context context, IabElementStyle iabElementStyle) {
        return new CircleCountdownView(context);
    }
}
