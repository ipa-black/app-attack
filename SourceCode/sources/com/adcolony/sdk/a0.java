package com.adcolony.sdk;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.MotionEventCompat;
import io.bidmachine.utils.IabUtils;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a0 extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f129a;

    /* renamed from: b  reason: collision with root package name */
    private int f130b;

    /* renamed from: c  reason: collision with root package name */
    private int f131c;

    /* renamed from: d  reason: collision with root package name */
    private int f132d;

    /* renamed from: e  reason: collision with root package name */
    private int f133e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f134f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f135g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f136h;
    private String i;
    private String j;
    private h0 k;
    private com.adcolony.sdk.c l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (a0.this.a(h0Var)) {
                a0.this.d(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements j0 {
        b() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (a0.this.a(h0Var)) {
                a0.this.b(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements j0 {
        c() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (a0.this.a(h0Var)) {
                a0.this.c(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(Context context, h0 h0Var, int i, com.adcolony.sdk.c cVar) {
        super(context);
        this.f129a = i;
        this.k = h0Var;
        this.l = cVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        k b2 = com.adcolony.sdk.a.b();
        d c2 = b2.c();
        int action = motionEvent.getAction() & 255;
        if (action == 0 || action == 1 || action == 3 || action == 2 || action == 5 || action == 6) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            f1 b3 = c0.b();
            c0.b(b3, "view_id", this.f129a);
            c0.a(b3, "ad_session_id", this.j);
            c0.b(b3, "container_x", this.f130b + x);
            c0.b(b3, "container_y", this.f131c + y);
            c0.b(b3, "view_x", x);
            c0.b(b3, "view_y", y);
            c0.b(b3, "id", this.l.getId());
            if (action == 0) {
                new h0("AdContainer.on_touch_began", this.l.k(), b3).c();
            } else if (action == 1) {
                if (!this.l.p()) {
                    b2.a(c2.d().get(this.j));
                }
                if (x > 0 && x < this.f132d && y > 0 && y < this.f133e) {
                    new h0("AdContainer.on_touch_ended", this.l.k(), b3).c();
                } else {
                    new h0("AdContainer.on_touch_cancelled", this.l.k(), b3).c();
                }
            } else if (action == 2) {
                new h0("AdContainer.on_touch_moved", this.l.k(), b3).c();
            } else if (action == 3) {
                new h0("AdContainer.on_touch_cancelled", this.l.k(), b3).c();
            } else if (action == 5) {
                int action2 = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                c0.b(b3, "container_x", ((int) motionEvent.getX(action2)) + this.f130b);
                c0.b(b3, "container_y", ((int) motionEvent.getY(action2)) + this.f131c);
                c0.b(b3, "view_x", (int) motionEvent.getX(action2));
                c0.b(b3, "view_y", (int) motionEvent.getY(action2));
                new h0("AdContainer.on_touch_began", this.l.k(), b3).c();
            } else if (action != 6) {
                return true;
            } else {
                int action3 = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                int x2 = (int) motionEvent.getX(action3);
                int y2 = (int) motionEvent.getY(action3);
                c0.b(b3, "container_x", ((int) motionEvent.getX(action3)) + this.f130b);
                c0.b(b3, "container_y", ((int) motionEvent.getY(action3)) + this.f131c);
                c0.b(b3, "view_x", (int) motionEvent.getX(action3));
                c0.b(b3, "view_y", (int) motionEvent.getY(action3));
                if (!this.l.p()) {
                    b2.a(c2.d().get(this.j));
                }
                if (x2 > 0 && x2 < this.f132d && y2 > 0 && y2 < this.f133e) {
                    new h0("AdContainer.on_touch_ended", this.l.k(), b3).c();
                } else {
                    new h0("AdContainer.on_touch_cancelled", this.l.k(), b3).c();
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(h0 h0Var) {
        f1 a2 = h0Var.a();
        return c0.d(a2, "id") == this.f129a && c0.d(a2, "container_id") == this.l.c() && c0.h(a2, "ad_session_id").equals(this.l.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(h0 h0Var) {
        f1 a2 = h0Var.a();
        this.f130b = c0.d(a2, "x");
        this.f131c = c0.d(a2, "y");
        this.f132d = c0.d(a2, IabUtils.KEY_WIDTH);
        this.f133e = c0.d(a2, IabUtils.KEY_HEIGHT);
        if (this.f134f) {
            float s = (this.f133e * com.adcolony.sdk.a.b().n().s()) / getDrawable().getIntrinsicHeight();
            this.f133e = (int) (getDrawable().getIntrinsicHeight() * s);
            int intrinsicWidth = (int) (getDrawable().getIntrinsicWidth() * s);
            this.f132d = intrinsicWidth;
            this.f130b -= intrinsicWidth;
            this.f131c -= this.f133e;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(this.f130b, this.f131c, 0, 0);
        layoutParams.width = this.f132d;
        layoutParams.height = this.f133e;
        setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(h0 h0Var) {
        this.i = c0.h(h0Var.a(), "filepath");
        setImageURI(Uri.fromFile(new File(this.i)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(h0 h0Var) {
        if (c0.b(h0Var.a(), "visible")) {
            setVisibility(0);
        } else {
            setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        FrameLayout.LayoutParams layoutParams;
        int i;
        f1 a2 = this.k.a();
        this.j = c0.h(a2, "ad_session_id");
        this.f130b = c0.d(a2, "x");
        this.f131c = c0.d(a2, "y");
        this.f132d = c0.d(a2, IabUtils.KEY_WIDTH);
        this.f133e = c0.d(a2, IabUtils.KEY_HEIGHT);
        this.i = c0.h(a2, "filepath");
        this.f134f = c0.b(a2, "dpi");
        this.f135g = c0.b(a2, "invert_y");
        this.f136h = c0.b(a2, "wrap_content");
        setImageURI(Uri.fromFile(new File(this.i)));
        if (this.f134f) {
            float s = (this.f133e * com.adcolony.sdk.a.b().n().s()) / getDrawable().getIntrinsicHeight();
            this.f133e = (int) (getDrawable().getIntrinsicHeight() * s);
            int intrinsicWidth = (int) (getDrawable().getIntrinsicWidth() * s);
            this.f132d = intrinsicWidth;
            this.f130b -= intrinsicWidth;
            if (this.f135g) {
                i = this.f131c + this.f133e;
            } else {
                i = this.f131c - this.f133e;
            }
            this.f131c = i;
        }
        setVisibility(4);
        if (this.f136h) {
            layoutParams = new FrameLayout.LayoutParams(-2, -2);
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.f132d, this.f133e);
        }
        layoutParams.setMargins(this.f130b, this.f131c, 0, 0);
        layoutParams.gravity = 0;
        this.l.addView(this, layoutParams);
        this.l.i().add(com.adcolony.sdk.a.a("ImageView.set_visible", (j0) new a(), true));
        this.l.i().add(com.adcolony.sdk.a.a("ImageView.set_bounds", (j0) new b(), true));
        this.l.i().add(com.adcolony.sdk.a.a("ImageView.set_image", (j0) new c(), true));
        this.l.j().add("ImageView.set_visible");
        this.l.j().add("ImageView.set_bounds");
        this.l.j().add("ImageView.set_image");
    }
}
