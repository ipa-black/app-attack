package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
/* loaded from: classes2.dex */
public class h extends g<CircularProgressBar> {
    public h(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.g
    public IabElementStyle c(Context context, IabElementStyle iabElementStyle) {
        return Assets.defLoadingStyle;
    }

    @Override // com.explorestack.iab.utils.g
    /* renamed from: d */
    public CircularProgressBar b(Context context, IabElementStyle iabElementStyle) {
        return new CircularProgressBar(context);
    }
}
