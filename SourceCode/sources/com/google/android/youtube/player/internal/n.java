package com.google.android.youtube.player.internal;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
/* loaded from: classes4.dex */
public final class n extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final ProgressBar f9751a;

    /* renamed from: b  reason: collision with root package name */
    private final TextView f9752b;

    public n(Context context) {
        super(context, null, z.c(context));
        m mVar = new m(context);
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        ProgressBar progressBar = new ProgressBar(context);
        this.f9751a = progressBar;
        progressBar.setVisibility(8);
        addView(progressBar, new FrameLayout.LayoutParams(-2, -2, 17));
        int i = (int) ((context.getResources().getDisplayMetrics().density * 10.0f) + 0.5f);
        TextView textView = new TextView(context);
        this.f9752b = textView;
        textView.setTextAppearance(context, 16973894);
        textView.setTextColor(-1);
        textView.setVisibility(8);
        textView.setPadding(i, i, i, i);
        textView.setGravity(17);
        textView.setText(mVar.f9743a);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
    }

    public final void a() {
        this.f9751a.setVisibility(8);
        this.f9752b.setVisibility(8);
    }

    public final void b() {
        this.f9751a.setVisibility(0);
        this.f9752b.setVisibility(8);
    }

    public final void c() {
        this.f9751a.setVisibility(8);
        this.f9752b.setVisibility(0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        float f2;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (mode == 1073741824 || (mode == Integer.MIN_VALUE && mode2 == 0)) {
                size2 = (int) (size / 1.777f);
            } else {
                if (mode2 == 1073741824 || (mode2 == Integer.MIN_VALUE && mode == 0)) {
                    f2 = size2;
                } else if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    f2 = size2;
                    float f3 = size / 1.777f;
                    if (f2 >= f3) {
                        size2 = (int) f3;
                    }
                } else {
                    size = 0;
                    size2 = 0;
                }
                size = (int) (f2 * 1.777f);
            }
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(resolveSize(size, i), 1073741824), View.MeasureSpec.makeMeasureSpec(resolveSize(size2, i2), 1073741824));
    }
}
