package com.explorestack.iab.vast.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.explorestack.iab.utils.IabElementStyle;
/* loaded from: classes2.dex */
public class TextCountdownView extends IabTextView {

    /* renamed from: e  reason: collision with root package name */
    public String f9664e;

    public TextCountdownView(Context context) {
        super(context);
        this.f9664e = "%1.0fs";
    }

    public TextCountdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9664e = "%1.0fs";
    }

    @Override // com.explorestack.iab.vast.view.IabTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        if (TextUtils.isEmpty(getText())) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void setProgress(int i) {
        setText(this.f9664e.replace("%1.0f", String.valueOf(i)));
    }

    public void setProgress(int i, int i2) {
        setProgress(Math.round((i / i2) * 100.0f));
    }

    public void setRemaining(int i) {
        setText(this.f9664e.replace("%1.0f", String.valueOf(i)));
    }

    @Override // com.explorestack.iab.vast.view.IabTextView, com.explorestack.iab.utils.IabElement
    public void setStyle(IabElementStyle iabElementStyle) {
        super.setStyle(iabElementStyle);
        String content = iabElementStyle.getContent();
        if (content != null) {
            this.f9664e = content;
        }
    }
}
