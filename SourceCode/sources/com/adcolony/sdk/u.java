package com.adcolony.sdk;

import android.content.Context;
import android.graphics.Typeface;
import android.view.MotionEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.MotionEventCompat;
import io.bidmachine.utils.IabUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u extends EditText {

    /* renamed from: a  reason: collision with root package name */
    private int f561a;

    /* renamed from: b  reason: collision with root package name */
    private int f562b;

    /* renamed from: c  reason: collision with root package name */
    private int f563c;

    /* renamed from: d  reason: collision with root package name */
    private int f564d;

    /* renamed from: e  reason: collision with root package name */
    private int f565e;

    /* renamed from: f  reason: collision with root package name */
    private int f566f;

    /* renamed from: g  reason: collision with root package name */
    private int f567g;

    /* renamed from: h  reason: collision with root package name */
    private int f568h;
    private int i;
    private int j;
    private String k;
    private String l;
    private String m;
    private String n;
    private com.adcolony.sdk.c o;
    private h0 p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (u.this.c(h0Var)) {
                u.this.a(h0Var);
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
            if (u.this.c(h0Var)) {
                u.this.k(h0Var);
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
            if (u.this.c(h0Var)) {
                u.this.e(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements j0 {
        d() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (u.this.c(h0Var)) {
                u.this.f(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements j0 {
        e() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (u.this.c(h0Var)) {
                u.this.d(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements j0 {
        f() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (u.this.c(h0Var)) {
                u.this.j(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements j0 {
        g() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (u.this.c(h0Var)) {
                u.this.g(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements j0 {
        h() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (u.this.c(h0Var)) {
                u.this.h(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements j0 {
        i() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (u.this.c(h0Var)) {
                u.this.b(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j implements j0 {
        j() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (u.this.c(h0Var)) {
                u.this.i(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(Context context, h0 h0Var, int i2, com.adcolony.sdk.c cVar) {
        super(context);
        this.f561a = i2;
        this.p = h0Var;
        this.o = cVar;
    }

    int a(boolean z, int i2) {
        if (i2 == 0) {
            return z ? 1 : 16;
        } else if (i2 == 1) {
            if (z) {
                return GravityCompat.START;
            }
            return 48;
        } else if (i2 != 2) {
            return 17;
        } else {
            if (z) {
                return GravityCompat.END;
            }
            return 80;
        }
    }

    void a(h0 h0Var) {
        f1 a2 = h0Var.a();
        this.i = c0.d(a2, "x");
        this.j = c0.d(a2, "y");
        setGravity(a(true, this.i) | a(false, this.j));
    }

    void b(h0 h0Var) {
        f1 b2 = c0.b();
        c0.a(b2, "text", getText().toString());
        h0Var.a(b2).c();
    }

    boolean c(h0 h0Var) {
        f1 a2 = h0Var.a();
        return c0.d(a2, "id") == this.f561a && c0.d(a2, "container_id") == this.o.c() && c0.h(a2, "ad_session_id").equals(this.o.a());
    }

    void d(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "background_color");
        this.l = h2;
        setBackgroundColor(z0.f(h2));
    }

    void e(h0 h0Var) {
        f1 a2 = h0Var.a();
        this.f562b = c0.d(a2, "x");
        this.f563c = c0.d(a2, "y");
        this.f564d = c0.d(a2, IabUtils.KEY_WIDTH);
        this.f565e = c0.d(a2, IabUtils.KEY_HEIGHT);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(this.f562b, this.f563c, 0, 0);
        layoutParams.width = this.f564d;
        layoutParams.height = this.f565e;
        setLayoutParams(layoutParams);
    }

    void f(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "font_color");
        this.m = h2;
        setTextColor(z0.f(h2));
    }

    void g(h0 h0Var) {
        int d2 = c0.d(h0Var.a(), "font_size");
        this.f568h = d2;
        setTextSize(d2);
    }

    void h(h0 h0Var) {
        int d2 = c0.d(h0Var.a(), "font_style");
        this.f566f = d2;
        if (d2 == 0) {
            setTypeface(getTypeface(), 0);
        } else if (d2 == 1) {
            setTypeface(getTypeface(), 1);
        } else if (d2 == 2) {
            setTypeface(getTypeface(), 2);
        } else if (d2 != 3) {
        } else {
            setTypeface(getTypeface(), 3);
        }
    }

    void i(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "text");
        this.n = h2;
        setText(h2);
    }

    void j(h0 h0Var) {
        int d2 = c0.d(h0Var.a(), "font_family");
        this.f567g = d2;
        if (d2 == 0) {
            setTypeface(Typeface.DEFAULT);
        } else if (d2 == 1) {
            setTypeface(Typeface.SERIF);
        } else if (d2 == 2) {
            setTypeface(Typeface.SANS_SERIF);
        } else if (d2 != 3) {
        } else {
            setTypeface(Typeface.MONOSPACE);
        }
    }

    void k(h0 h0Var) {
        if (c0.b(h0Var.a(), "visible")) {
            setVisibility(0);
        } else {
            setVisibility(4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        k b2 = com.adcolony.sdk.a.b();
        com.adcolony.sdk.d c2 = b2.c();
        int action = motionEvent.getAction() & 255;
        if (action == 0 || action == 1 || action == 3 || action == 2 || action == 5 || action == 6) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            f1 b3 = c0.b();
            c0.b(b3, "view_id", this.f561a);
            c0.a(b3, "ad_session_id", this.k);
            c0.b(b3, "container_x", this.f562b + x);
            c0.b(b3, "container_y", this.f563c + y);
            c0.b(b3, "view_x", x);
            c0.b(b3, "view_y", y);
            c0.b(b3, "id", this.o.c());
            if (action == 0) {
                new h0("AdContainer.on_touch_began", this.o.k(), b3).c();
            } else if (action == 1) {
                if (!this.o.p()) {
                    b2.a(c2.d().get(this.k));
                }
                new h0("AdContainer.on_touch_ended", this.o.k(), b3).c();
            } else if (action == 2) {
                new h0("AdContainer.on_touch_moved", this.o.k(), b3).c();
            } else if (action == 3) {
                new h0("AdContainer.on_touch_cancelled", this.o.k(), b3).c();
            } else if (action == 5) {
                int action2 = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                c0.b(b3, "container_x", ((int) motionEvent.getX(action2)) + this.f562b);
                c0.b(b3, "container_y", ((int) motionEvent.getY(action2)) + this.f563c);
                c0.b(b3, "view_x", (int) motionEvent.getX(action2));
                c0.b(b3, "view_y", (int) motionEvent.getY(action2));
                new h0("AdContainer.on_touch_began", this.o.k(), b3).c();
            } else if (action == 6) {
                int action3 = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                c0.b(b3, "container_x", ((int) motionEvent.getX(action3)) + this.f562b);
                c0.b(b3, "container_y", ((int) motionEvent.getY(action3)) + this.f563c);
                c0.b(b3, "view_x", (int) motionEvent.getX(action3));
                c0.b(b3, "view_y", (int) motionEvent.getY(action3));
                if (!this.o.p()) {
                    b2.a(c2.d().get(this.k));
                }
                new h0("AdContainer.on_touch_ended", this.o.k(), b3).c();
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        f1 a2 = this.p.a();
        this.k = c0.h(a2, "ad_session_id");
        this.f562b = c0.d(a2, "x");
        this.f563c = c0.d(a2, "y");
        this.f564d = c0.d(a2, IabUtils.KEY_WIDTH);
        this.f565e = c0.d(a2, IabUtils.KEY_HEIGHT);
        this.f567g = c0.d(a2, "font_family");
        this.f566f = c0.d(a2, "font_style");
        this.f568h = c0.d(a2, "font_size");
        this.l = c0.h(a2, "background_color");
        this.m = c0.h(a2, "font_color");
        this.n = c0.h(a2, "text");
        this.i = c0.d(a2, "align_x");
        this.j = c0.d(a2, "align_y");
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f564d, this.f565e);
        layoutParams.setMargins(this.f562b, this.f563c, 0, 0);
        layoutParams.gravity = 0;
        this.o.addView(this, layoutParams);
        int i2 = this.f567g;
        if (i2 == 0) {
            setTypeface(Typeface.DEFAULT);
        } else if (i2 == 1) {
            setTypeface(Typeface.SERIF);
        } else if (i2 == 2) {
            setTypeface(Typeface.SANS_SERIF);
        } else if (i2 == 3) {
            setTypeface(Typeface.MONOSPACE);
        }
        int i3 = this.f566f;
        if (i3 == 0) {
            setTypeface(getTypeface(), 0);
        } else if (i3 == 1) {
            setTypeface(getTypeface(), 1);
        } else if (i3 == 2) {
            setTypeface(getTypeface(), 2);
        } else if (i3 == 3) {
            setTypeface(getTypeface(), 3);
        }
        setText(this.n);
        setTextSize(this.f568h);
        setGravity(a(true, this.i) | a(false, this.j));
        if (!this.l.equals("")) {
            setBackgroundColor(z0.f(this.l));
        }
        if (!this.m.equals("")) {
            setTextColor(z0.f(this.m));
        }
        this.o.i().add(com.adcolony.sdk.a.a("TextView.set_visible", (j0) new b(), true));
        this.o.i().add(com.adcolony.sdk.a.a("TextView.set_bounds", (j0) new c(), true));
        this.o.i().add(com.adcolony.sdk.a.a("TextView.set_font_color", (j0) new d(), true));
        this.o.i().add(com.adcolony.sdk.a.a("TextView.set_background_color", (j0) new e(), true));
        this.o.i().add(com.adcolony.sdk.a.a("TextView.set_typeface", (j0) new f(), true));
        this.o.i().add(com.adcolony.sdk.a.a("TextView.set_font_size", (j0) new g(), true));
        this.o.i().add(com.adcolony.sdk.a.a("TextView.set_font_style", (j0) new h(), true));
        this.o.i().add(com.adcolony.sdk.a.a("TextView.get_text", (j0) new i(), true));
        this.o.i().add(com.adcolony.sdk.a.a("TextView.set_text", (j0) new j(), true));
        this.o.i().add(com.adcolony.sdk.a.a("TextView.align", (j0) new a(), true));
        this.o.j().add("TextView.set_visible");
        this.o.j().add("TextView.set_bounds");
        this.o.j().add("TextView.set_font_color");
        this.o.j().add("TextView.set_background_color");
        this.o.j().add("TextView.set_typeface");
        this.o.j().add("TextView.set_font_size");
        this.o.j().add("TextView.set_font_style");
        this.o.j().add("TextView.get_text");
        this.o.j().add("TextView.set_text");
        this.o.j().add("TextView.align");
    }
}
