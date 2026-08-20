package com.appsgeyser.multiTabApp.controllers;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes2.dex */
public class ContentSwipeAwareViewPager extends ViewPager {
    private boolean enabled;

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public ContentSwipeAwareViewPager(Context context) {
        super(context);
        this.enabled = true;
    }

    public ContentSwipeAwareViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.enabled = true;
    }

    public void setPagingEnabled(boolean z) {
        this.enabled = z;
    }
}
