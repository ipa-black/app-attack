package com.applovin.impl.adview;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.applovin.impl.adview.i;
/* loaded from: classes.dex */
public class m extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private i f4452a;

    /* renamed from: b  reason: collision with root package name */
    private int f4453b;

    public m(i.a aVar, Activity activity) {
        super(activity);
        setBackgroundColor(0);
        i a2 = i.a(aVar, activity);
        this.f4452a = a2;
        addView(a2);
    }

    public void a(int i, int i2, int i3, int i4) {
        this.f4453b = i;
        int i5 = i2 + i + i3;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = i5;
            layoutParams.width = i5;
        } else {
            setLayoutParams(new FrameLayout.LayoutParams(i5, i5));
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i, i4);
        layoutParams2.setMargins(i3, i3, i3, 0);
        this.f4452a.setLayoutParams(layoutParams2);
        this.f4452a.a(i);
    }

    public void a(i.a aVar) {
        if (aVar == null || aVar == this.f4452a.getStyle()) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f4452a.getLayoutParams();
        removeView(this.f4452a);
        i a2 = i.a(aVar, getContext());
        this.f4452a = a2;
        addView(a2);
        this.f4452a.setLayoutParams(layoutParams);
        this.f4452a.a(this.f4453b);
    }
}
