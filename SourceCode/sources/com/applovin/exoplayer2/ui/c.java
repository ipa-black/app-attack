package com.applovin.exoplayer2.ui;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f4115a = new c(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);

    /* renamed from: b  reason: collision with root package name */
    public final int f4116b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4117c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4118d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4119e;

    /* renamed from: f  reason: collision with root package name */
    public final int f4120f;

    /* renamed from: g  reason: collision with root package name */
    public final Typeface f4121g;

    public c(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        this.f4116b = i;
        this.f4117c = i2;
        this.f4118d = i3;
        this.f4119e = i4;
        this.f4120f = i5;
        this.f4121g = typeface;
    }

    public static c a(CaptioningManager.CaptionStyle captionStyle) {
        return ai.f3781a >= 21 ? c(captionStyle) : b(captionStyle);
    }

    private static c b(CaptioningManager.CaptionStyle captionStyle) {
        return new c(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    private static c c(CaptioningManager.CaptionStyle captionStyle) {
        return new c(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f4115a.f4116b, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f4115a.f4117c, captionStyle.hasWindowColor() ? captionStyle.windowColor : f4115a.f4118d, captionStyle.hasEdgeType() ? captionStyle.edgeType : f4115a.f4119e, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f4115a.f4120f, captionStyle.getTypeface());
    }
}
