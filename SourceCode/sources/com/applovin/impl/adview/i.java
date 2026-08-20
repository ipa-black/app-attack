package com.applovin.impl.adview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public abstract class i extends View {

    /* renamed from: a  reason: collision with root package name */
    protected float f4420a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f4421b;

    /* loaded from: classes.dex */
    public enum a {
        WHITE_ON_BLACK(0),
        WHITE_ON_TRANSPARENT(1),
        INVISIBLE(2),
        TRANSPARENT_SKIP(3);
        

        /* renamed from: e  reason: collision with root package name */
        private final int f4427e;

        a(int i) {
            this.f4427e = i;
        }

        public int a() {
            return this.f4427e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i(Context context) {
        super(context);
        this.f4420a = 1.0f;
        this.f4421b = context;
    }

    public static i a(a aVar, Context context) {
        return aVar.equals(a.INVISIBLE) ? new p(context) : aVar.equals(a.WHITE_ON_TRANSPARENT) ? new q(context) : aVar.equals(a.TRANSPARENT_SKIP) ? new r(context) : new w(context);
    }

    public void a(int i) {
        setViewScale(i / 30.0f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) getSize();
            layoutParams.height = (int) getSize();
        }
    }

    public float getSize() {
        return this.f4420a * 30.0f;
    }

    public abstract a getStyle();

    public void setViewScale(float f2) {
        this.f4420a = f2;
    }
}
