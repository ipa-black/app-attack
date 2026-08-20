package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.l.ai;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class SubtitleView extends FrameLayout implements an.d {

    /* renamed from: a  reason: collision with root package name */
    private List<com.applovin.exoplayer2.i.a> f4098a;

    /* renamed from: b  reason: collision with root package name */
    private c f4099b;

    /* renamed from: c  reason: collision with root package name */
    private int f4100c;

    /* renamed from: d  reason: collision with root package name */
    private float f4101d;

    /* renamed from: e  reason: collision with root package name */
    private float f4102e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f4103f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f4104g;

    /* renamed from: h  reason: collision with root package name */
    private int f4105h;
    private a i;
    private View j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        void a(List<com.applovin.exoplayer2.i.a> list, c cVar, float f2, int i, float f3);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4098a = Collections.emptyList();
        this.f4099b = c.f4115a;
        this.f4100c = 0;
        this.f4101d = 0.0533f;
        this.f4102e = 0.08f;
        this.f4103f = true;
        this.f4104g = true;
        b bVar = new b(context);
        this.i = bVar;
        this.j = bVar;
        addView(bVar);
        this.f4105h = 1;
    }

    private com.applovin.exoplayer2.i.a a(com.applovin.exoplayer2.i.a aVar) {
        a.C0045a a2 = aVar.a();
        if (!this.f4103f) {
            j.a(a2);
        } else if (!this.f4104g) {
            j.b(a2);
        }
        return a2.e();
    }

    private void a(int i, float f2) {
        this.f4100c = i;
        this.f4101d = f2;
        e();
    }

    private void e() {
        this.i.a(getCuesWithStylingPreferencesApplied(), this.f4099b, this.f4101d, this.f4100c, this.f4102e);
    }

    private List<com.applovin.exoplayer2.i.a> getCuesWithStylingPreferencesApplied() {
        if (this.f4103f && this.f4104g) {
            return this.f4098a;
        }
        ArrayList arrayList = new ArrayList(this.f4098a.size());
        for (int i = 0; i < this.f4098a.size(); i++) {
            arrayList.add(a(this.f4098a.get(i)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (ai.f3781a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private c getUserCaptionStyle() {
        if (ai.f3781a < 19 || isInEditMode()) {
            return c.f4115a;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        return (captioningManager == null || !captioningManager.isEnabled()) ? c.f4115a : c.a(captioningManager.getUserStyle());
    }

    private <T extends View & a> void setView(T t) {
        removeView(this.j);
        View view = this.j;
        if (view instanceof l) {
            ((l) view).a();
        }
        this.j = t;
        this.i = t;
        addView(t);
    }

    public void a(float f2, boolean z) {
        a(z ? 1 : 0, f2);
    }

    @Override // com.applovin.exoplayer2.an.d
    public void a(List<com.applovin.exoplayer2.i.a> list) {
        setCues(list);
    }

    public void c() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void d() {
        setStyle(getUserCaptionStyle());
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        this.f4104g = z;
        e();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        this.f4103f = z;
        e();
    }

    public void setBottomPaddingFraction(float f2) {
        this.f4102e = f2;
        e();
    }

    public void setCues(List<com.applovin.exoplayer2.i.a> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f4098a = list;
        e();
    }

    public void setFractionalTextSize(float f2) {
        a(f2, false);
    }

    public void setStyle(c cVar) {
        this.f4099b = cVar;
        e();
    }

    public void setViewType(int i) {
        KeyEvent.Callback bVar;
        if (this.f4105h == i) {
            return;
        }
        if (i == 1) {
            bVar = new b(getContext());
        } else if (i != 2) {
            throw new IllegalArgumentException();
        } else {
            bVar = new l(getContext());
        }
        setView(bVar);
        this.f4105h = i;
    }
}
