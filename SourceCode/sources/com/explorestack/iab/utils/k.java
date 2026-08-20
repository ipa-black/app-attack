package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
/* loaded from: classes2.dex */
public class k extends g<CircleCountdownView> {
    public k(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.g
    public void a(Context context, CircleCountdownView circleCountdownView, IabElementStyle iabElementStyle) {
        circleCountdownView.setImage(Assets.getBitmapFromBase64(Assets.repeat));
    }

    @Override // com.explorestack.iab.utils.g
    public IabElementStyle c(Context context, IabElementStyle iabElementStyle) {
        if (iabElementStyle == null || !"repeatfill".equals(iabElementStyle.getStyle())) {
            return Assets.defRepeatStyle;
        }
        IabElementStyle iabElementStyle2 = new IabElementStyle();
        iabElementStyle2.setOutlined(Boolean.TRUE);
        return Assets.defRepeatStyle.copyWith(iabElementStyle2);
    }

    @Override // com.explorestack.iab.utils.g
    /* renamed from: d */
    public CircleCountdownView b(Context context, IabElementStyle iabElementStyle) {
        return new CircleCountdownView(context);
    }
}
