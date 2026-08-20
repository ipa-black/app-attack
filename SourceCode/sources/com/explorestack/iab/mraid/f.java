package com.explorestack.iab.mraid;

import android.content.Context;
import android.graphics.Rect;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public final Rect f9325a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    public final Rect f9326b = new Rect();

    /* renamed from: c  reason: collision with root package name */
    public final Rect f9327c = new Rect();

    /* renamed from: d  reason: collision with root package name */
    public final Rect f9328d = new Rect();

    /* renamed from: e  reason: collision with root package name */
    public final Rect f9329e = new Rect();

    /* renamed from: f  reason: collision with root package name */
    public final Rect f9330f = new Rect();

    /* renamed from: g  reason: collision with root package name */
    public final Rect f9331g = new Rect();

    /* renamed from: h  reason: collision with root package name */
    public final Rect f9332h = new Rect();
    public final float i;

    public f(Context context) {
        this.i = context.getResources().getDisplayMetrics().density;
    }

    public Rect a() {
        return this.f9330f;
    }

    public void a(Rect rect, Rect rect2) {
        rect2.set(Utils.pixelsToIntDips(rect.left, this.i), Utils.pixelsToIntDips(rect.top, this.i), Utils.pixelsToIntDips(rect.right, this.i), Utils.pixelsToIntDips(rect.bottom, this.i));
    }

    public boolean a(int i, int i2) {
        if (this.f9325a.width() == i && this.f9325a.height() == i2) {
            return false;
        }
        this.f9325a.set(0, 0, i, i2);
        a(this.f9325a, this.f9326b);
        return true;
    }

    public boolean a(int i, int i2, int i3, int i4) {
        return a(this.f9329e, this.f9330f, i, i2, i3, i4);
    }

    public final boolean a(Rect rect, Rect rect2, int i, int i2, int i3, int i4) {
        if (rect.left == i && rect.top == i2 && i + i3 == rect.right && i2 + i4 == rect.bottom) {
            return false;
        }
        rect.set(i, i2, i3 + i, i4 + i2);
        a(rect, rect2);
        return true;
    }

    public Rect b() {
        return this.f9331g;
    }

    public boolean b(int i, int i2, int i3, int i4) {
        return a(this.f9331g, this.f9332h, i, i2, i3, i4);
    }

    public Rect c() {
        return this.f9332h;
    }

    public boolean c(int i, int i2, int i3, int i4) {
        return a(this.f9327c, this.f9328d, i, i2, i3, i4);
    }

    public Rect d() {
        return this.f9328d;
    }

    public Rect e() {
        return this.f9326b;
    }
}
