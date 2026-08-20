package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class b extends View implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<i> f4109a;

    /* renamed from: b  reason: collision with root package name */
    private List<com.applovin.exoplayer2.i.a> f4110b;

    /* renamed from: c  reason: collision with root package name */
    private int f4111c;

    /* renamed from: d  reason: collision with root package name */
    private float f4112d;

    /* renamed from: e  reason: collision with root package name */
    private c f4113e;

    /* renamed from: f  reason: collision with root package name */
    private float f4114f;

    public b(Context context) {
        this(context, null);
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4109a = new ArrayList();
        this.f4110b = Collections.emptyList();
        this.f4111c = 0;
        this.f4112d = 0.0533f;
        this.f4113e = c.f4115a;
        this.f4114f = 0.08f;
    }

    private static com.applovin.exoplayer2.i.a a(com.applovin.exoplayer2.i.a aVar) {
        a.C0045a a2 = aVar.a().a(-3.4028235E38f).b(Integer.MIN_VALUE).a((Layout.Alignment) null);
        if (aVar.f3169g == 0) {
            a2.a(1.0f - aVar.f3168f, 0);
        } else {
            a2.a((-aVar.f3168f) - 1.0f, 1);
        }
        int i = aVar.f3170h;
        if (i == 0) {
            a2.a(2);
        } else if (i == 2) {
            a2.a(0);
        }
        return a2.e();
    }

    @Override // com.applovin.exoplayer2.ui.SubtitleView.a
    public void a(List<com.applovin.exoplayer2.i.a> list, c cVar, float f2, int i, float f3) {
        this.f4110b = list;
        this.f4113e = cVar;
        this.f4112d = f2;
        this.f4111c = i;
        this.f4114f = f3;
        while (this.f4109a.size() < list.size()) {
            this.f4109a.add(new i(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<com.applovin.exoplayer2.i.a> list = this.f4110b;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i = paddingBottom - paddingTop;
        float a2 = j.a(this.f4111c, this.f4112d, height, i);
        if (a2 <= 0.0f) {
            return;
        }
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            com.applovin.exoplayer2.i.a aVar = list.get(i2);
            if (aVar.q != Integer.MIN_VALUE) {
                aVar = a(aVar);
            }
            com.applovin.exoplayer2.i.a aVar2 = aVar;
            int i3 = paddingBottom;
            this.f4109a.get(i2).a(aVar2, this.f4113e, a2, j.a(aVar2.o, aVar2.p, height, i), this.f4114f, canvas, paddingLeft, paddingTop, width, i3);
            i2++;
            size = size;
            i = i;
            paddingBottom = i3;
            width = width;
        }
    }
}
