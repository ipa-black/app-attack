package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* compiled from: AdChoiceOverlay.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<View, WeakReference<ImageView>> f8635a = new WeakHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8636b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.n0.c f8637c;

    public b(com.criteo.publisher.n0.g gVar, com.criteo.publisher.n0.c cVar) {
        this.f8636b = gVar;
        this.f8637c = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewGroup a(View view) {
        Context context = view.getContext();
        ImageView imageView = new ImageView(context);
        FrameLayout frameLayout = new FrameLayout(context);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            frameLayout.setLayoutParams(layoutParams);
        }
        frameLayout.addView(view);
        frameLayout.addView(imageView);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams2.gravity = 5;
        layoutParams2.width = this.f8637c.a(this.f8636b.b());
        layoutParams2.height = this.f8637c.a(this.f8636b.a());
        imageView.setMinimumWidth(layoutParams2.width);
        imageView.setMinimumHeight(layoutParams2.height);
        imageView.setElevation(1000.0f);
        imageView.setOutlineProvider(null);
        this.f8635a.put(frameLayout, new WeakReference<>(imageView));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageView b(View view) {
        WeakReference<ImageView> weakReference = this.f8635a.get(view);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View c(View view) {
        if (b(view) == null) {
            return null;
        }
        return ((ViewGroup) view).getChildAt(0);
    }
}
