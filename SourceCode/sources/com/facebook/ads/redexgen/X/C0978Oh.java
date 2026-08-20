package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.facebook.ads.redexgen.X.Oh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0978Oh {
    public final int[] A00(View view, int i, int i2) {
        C04934a c04934a = (C04934a) view.getLayoutParams();
        int childHeightSpec = ViewGroup.getChildMeasureSpec(i, view.getPaddingLeft() + view.getPaddingRight(), c04934a.width);
        int childWidthSpec = view.getPaddingTop();
        view.measure(childHeightSpec, ViewGroup.getChildMeasureSpec(i2, childWidthSpec + view.getPaddingBottom(), c04934a.height));
        int childWidthSpec2 = view.getMeasuredWidth();
        int childWidthSpec3 = view.getMeasuredHeight();
        return new int[]{childWidthSpec2 + c04934a.leftMargin + c04934a.rightMargin, childWidthSpec3 + c04934a.bottomMargin + c04934a.topMargin};
    }
}
