package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
import com.explorestack.iab.vast.view.TextCountdownView;
/* loaded from: classes2.dex */
public class e extends g<View> {
    public e(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    public void a(int i, int i2) {
        T t = this.f9435b;
        if (!(t instanceof TextCountdownView)) {
            if (t instanceof CircleCountdownView) {
                ((CircleCountdownView) t).changePercentage(i, i2);
                return;
            }
            return;
        }
        TextCountdownView textCountdownView = (TextCountdownView) t;
        if (i2 == 0) {
            textCountdownView.setText("");
        } else {
            textCountdownView.setRemaining(i2);
        }
    }

    @Override // com.explorestack.iab.utils.g
    public View b(Context context, IabElementStyle iabElementStyle) {
        return "text".equals(iabElementStyle.getStyle()) ? new TextCountdownView(context) : new CircleCountdownView(context);
    }

    @Override // com.explorestack.iab.utils.g
    public IabElementStyle c(Context context, IabElementStyle iabElementStyle) {
        return (iabElementStyle == null || !"text".equals(iabElementStyle.getStyle())) ? Assets.defCountDownStyle : Assets.defTextCountDownStyle;
    }
}
