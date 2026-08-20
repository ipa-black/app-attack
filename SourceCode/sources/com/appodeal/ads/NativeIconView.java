package com.appodeal.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class NativeIconView extends FrameLayout {
    public NativeIconView(Context context) {
        super(context);
    }

    public NativeIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NativeIconView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        double d2 = (size2 * 1.0f) + 0.5d;
        if (size > d2) {
            size = (int) d2;
        } else {
            size2 = (int) ((size / 1.0f) + 0.5d);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }
}
