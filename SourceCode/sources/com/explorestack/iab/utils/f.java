package com.explorestack.iab.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.explorestack.iab.vast.view.IabTextView;
/* loaded from: classes2.dex */
public class f extends g<IabTextView> {
    public f(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.g
    public void a(Context context, IabTextView iabTextView, IabElementStyle iabElementStyle) {
        super.a(context, (Context) iabTextView, iabElementStyle);
        iabTextView.setText(!TextUtils.isEmpty(iabElementStyle.getContent()) ? iabElementStyle.getContent() : "Learn more");
    }

    @Override // com.explorestack.iab.utils.g
    public IabElementStyle c(Context context, IabElementStyle iabElementStyle) {
        return Assets.defCtaStyle;
    }

    @Override // com.explorestack.iab.utils.g
    /* renamed from: d */
    public IabTextView b(Context context, IabElementStyle iabElementStyle) {
        return new IabTextView(context);
    }
}
