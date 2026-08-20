package com.adcolony.sdk;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.VideoView;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.adcolony.sdk.e0;
import com.iab.omid.library.adcolony.adsession.AdSession;
import com.iab.omid.library.adcolony.adsession.FriendlyObstructionPurpose;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<Integer, a1> f199a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<Integer, y0> f200b;

    /* renamed from: c  reason: collision with root package name */
    private HashMap<Integer, b1> f201c;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<Integer, u> f202d;

    /* renamed from: e  reason: collision with root package name */
    private HashMap<Integer, a0> f203e;

    /* renamed from: f  reason: collision with root package name */
    private HashMap<Integer, Boolean> f204f;

    /* renamed from: g  reason: collision with root package name */
    private HashMap<Integer, View> f205g;

    /* renamed from: h  reason: collision with root package name */
    private int f206h;
    private int i;
    private int j;
    private int k;
    private String l;
    boolean m;
    boolean n;
    private float o;
    private double p;
    private int q;
    private int r;
    private ArrayList<j0> s;
    private ArrayList<String> t;
    private boolean u;
    private boolean v;
    private boolean w;
    private AdSession x;
    Context y;
    VideoView z;

    /* loaded from: classes.dex */
    class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (c.this.i(h0Var)) {
                c cVar = c.this;
                cVar.a(cVar.c(h0Var), FriendlyObstructionPurpose.OTHER);
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements j0 {
        b() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (c.this.i(h0Var)) {
                c.this.g(h0Var);
            }
        }
    }

    /* renamed from: com.adcolony.sdk.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0008c implements j0 {

        /* renamed from: com.adcolony.sdk.c$c$a */
        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f210a;

            a(h0 h0Var) {
                this.f210a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.d(this.f210a), FriendlyObstructionPurpose.OTHER);
            }
        }

        C0008c() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (c.this.i(h0Var)) {
                z0.b(new a(h0Var));
            }
        }
    }

    /* loaded from: classes.dex */
    class d implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f213a;

            a(h0 h0Var) {
                this.f213a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.h(this.f213a);
            }
        }

        d() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (c.this.i(h0Var)) {
                z0.b(new a(h0Var));
            }
        }
    }

    /* loaded from: classes.dex */
    class e implements j0 {
        e() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (c.this.i(h0Var)) {
                c cVar = c.this;
                cVar.a(cVar.b(h0Var), FriendlyObstructionPurpose.OTHER);
            }
        }
    }

    /* loaded from: classes.dex */
    class f implements j0 {
        f() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (c.this.i(h0Var)) {
                c.this.f(h0Var);
            }
        }
    }

    /* loaded from: classes.dex */
    class g implements j0 {
        g() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (c.this.i(h0Var)) {
                c cVar = c.this;
                cVar.a(cVar.a(h0Var), FriendlyObstructionPurpose.OTHER);
            }
        }
    }

    /* loaded from: classes.dex */
    class h implements j0 {
        h() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (c.this.i(h0Var)) {
                c.this.e(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f219a;

        i(boolean z) {
            this.f219a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            if (cVar.m) {
                return;
            }
            cVar.a(this.f219a);
            c.this.b(this.f219a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, String str) {
        super(context);
        this.o = 0.0f;
        this.p = 0.0d;
        this.q = 0;
        this.r = 0;
        this.y = context;
        this.l = str;
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
    }

    a1 c(h0 h0Var) {
        int d2 = c0.d(h0Var.a(), "id");
        a1 a1Var = new a1(this.y, h0Var, d2, this);
        a1Var.d();
        this.f199a.put(Integer.valueOf(d2), a1Var);
        this.f205g.put(Integer.valueOf(d2), a1Var);
        return a1Var;
    }

    b1 d(h0 h0Var) {
        c1 a2;
        f1 a3 = h0Var.a();
        int d2 = c0.d(a3, "id");
        boolean b2 = c0.b(a3, "is_module");
        k b3 = com.adcolony.sdk.a.b();
        if (b2) {
            a2 = b3.B().get(Integer.valueOf(c0.d(a3, "module_id")));
            if (a2 == null) {
                new e0.a().a("Module WebView created with invalid id").a(e0.f297h);
                return null;
            }
            a2.b(h0Var, d2, this);
        } else {
            try {
                a2 = b1.a(this.y, h0Var, d2, this);
            } catch (RuntimeException e2) {
                new e0.a().a(e2.toString() + ": during WebView initialization.").a(" Disabling AdColony.").a(e0.f297h);
                AdColony.disable();
                return null;
            }
        }
        this.f201c.put(Integer.valueOf(d2), a2);
        this.f205g.put(Integer.valueOf(d2), a2);
        f1 b4 = c0.b();
        c0.b(b4, "module_id", a2.getWebViewModuleId());
        if (a2 instanceof l0) {
            c0.b(b4, "mraid_module_id", ((l0) a2).getAdcModuleId());
        }
        h0Var.a(b4).c();
        return a2;
    }

    boolean e(h0 h0Var) {
        int d2 = c0.d(h0Var.a(), "id");
        View remove = this.f205g.remove(Integer.valueOf(d2));
        a0 remove2 = this.f203e.remove(Integer.valueOf(d2));
        if (remove != null && remove2 != null) {
            removeView(remove2);
            return true;
        }
        com.adcolony.sdk.a.b().c().a(h0Var.b(), "" + d2);
        return false;
    }

    boolean f(h0 h0Var) {
        y0 remove;
        int d2 = c0.d(h0Var.a(), "id");
        View remove2 = this.f205g.remove(Integer.valueOf(d2));
        if (this.f204f.remove(Integer.valueOf(d2)).booleanValue()) {
            remove = this.f202d.remove(Integer.valueOf(d2));
        } else {
            remove = this.f200b.remove(Integer.valueOf(d2));
        }
        if (remove2 != null && remove != null) {
            removeView(remove);
            return true;
        }
        com.adcolony.sdk.a.b().c().a(h0Var.b(), "" + d2);
        return false;
    }

    boolean g(h0 h0Var) {
        int d2 = c0.d(h0Var.a(), "id");
        View remove = this.f205g.remove(Integer.valueOf(d2));
        a1 remove2 = this.f199a.remove(Integer.valueOf(d2));
        if (remove != null && remove2 != null) {
            if (remove2.c()) {
                remove2.j();
            }
            remove2.a();
            removeView(remove2);
            return true;
        }
        com.adcolony.sdk.a.b().c().a(h0Var.b(), "" + d2);
        return false;
    }

    boolean h(h0 h0Var) {
        int d2 = c0.d(h0Var.a(), "id");
        k b2 = com.adcolony.sdk.a.b();
        View remove = this.f205g.remove(Integer.valueOf(d2));
        b1 remove2 = this.f201c.remove(Integer.valueOf(d2));
        if (remove2 != null && remove != null) {
            if (remove2 instanceof k0) {
                b2.r().b((k0) remove2);
            }
            removeView(remove2);
            return true;
        }
        b2.c().a(h0Var.b(), "" + d2);
        return false;
    }

    boolean i(h0 h0Var) {
        f1 a2 = h0Var.a();
        return c0.d(a2, "container_id") == this.j && c0.h(a2, "ad_session_id").equals(this.l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(h0 h0Var) {
        this.f199a = new HashMap<>();
        this.f200b = new HashMap<>();
        this.f201c = new HashMap<>();
        this.f202d = new HashMap<>();
        this.f203e = new HashMap<>();
        this.f204f = new HashMap<>();
        this.f205g = new HashMap<>();
        this.s = new ArrayList<>();
        this.t = new ArrayList<>();
        f1 a2 = h0Var.a();
        if (c0.b(a2, "transparent")) {
            setBackgroundColor(0);
        }
        this.j = c0.d(a2, "id");
        this.f206h = c0.d(a2, IabUtils.KEY_WIDTH);
        this.i = c0.d(a2, IabUtils.KEY_HEIGHT);
        this.k = c0.d(a2, "module_id");
        this.n = c0.b(a2, "viewability_enabled");
        this.u = this.j == 1;
        k b2 = com.adcolony.sdk.a.b();
        if (this.f206h == 0 && this.i == 0) {
            Rect x = this.w ? b2.n().x() : b2.n().w();
            this.f206h = x.width();
            this.i = x.height();
        } else {
            setLayoutParams(new FrameLayout.LayoutParams(this.f206h, this.i));
        }
        this.s.add(com.adcolony.sdk.a.a("VideoView.create", (j0) new a(), true));
        this.s.add(com.adcolony.sdk.a.a("VideoView.destroy", (j0) new b(), true));
        this.s.add(com.adcolony.sdk.a.a("WebView.create", (j0) new C0008c(), true));
        this.s.add(com.adcolony.sdk.a.a("WebView.destroy", (j0) new d(), true));
        this.s.add(com.adcolony.sdk.a.a("TextView.create", (j0) new e(), true));
        this.s.add(com.adcolony.sdk.a.a("TextView.destroy", (j0) new f(), true));
        this.s.add(com.adcolony.sdk.a.a("ImageView.create", (j0) new g(), true));
        this.s.add(com.adcolony.sdk.a.a("ImageView.destroy", (j0) new h(), true));
        this.t.add("VideoView.create");
        this.t.add("VideoView.destroy");
        this.t.add("WebView.create");
        this.t.add("WebView.destroy");
        this.t.add("TextView.create");
        this.t.add("TextView.destroy");
        this.t.add("ImageView.create");
        this.t.add("ImageView.destroy");
        VideoView videoView = new VideoView(this.y);
        this.z = videoView;
        videoView.setVisibility(8);
        addView(this.z);
        setClipToPadding(false);
        if (this.n) {
            b(c0.b(h0Var.a(), "advanced_viewability"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<Integer, y0> l() {
        return this.f200b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<Integer, a1> m() {
        return this.f199a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<Integer, b1> n() {
        return this.f201c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        return this.v;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0 || action == 1 || action == 3 || action == 2 || action == 5 || action == 6) {
            k b2 = com.adcolony.sdk.a.b();
            com.adcolony.sdk.d c2 = b2.c();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            f1 b3 = c0.b();
            c0.b(b3, "view_id", -1);
            c0.a(b3, "ad_session_id", this.l);
            c0.b(b3, "container_x", x);
            c0.b(b3, "container_y", y);
            c0.b(b3, "view_x", x);
            c0.b(b3, "view_y", y);
            c0.b(b3, "id", this.j);
            if (action == 0) {
                new h0("AdContainer.on_touch_began", this.k, b3).c();
            } else if (action == 1) {
                if (!this.u) {
                    b2.a(c2.d().get(this.l));
                }
                new h0("AdContainer.on_touch_ended", this.k, b3).c();
            } else if (action == 2) {
                new h0("AdContainer.on_touch_moved", this.k, b3).c();
            } else if (action == 3) {
                new h0("AdContainer.on_touch_cancelled", this.k, b3).c();
            } else if (action == 5) {
                int action2 = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                c0.b(b3, "container_x", (int) motionEvent.getX(action2));
                c0.b(b3, "container_y", (int) motionEvent.getY(action2));
                c0.b(b3, "view_x", (int) motionEvent.getX(action2));
                c0.b(b3, "view_y", (int) motionEvent.getY(action2));
                new h0("AdContainer.on_touch_began", this.k, b3).c();
            } else if (action == 6) {
                int action3 = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                c0.b(b3, "container_x", (int) motionEvent.getX(action3));
                c0.b(b3, "container_y", (int) motionEvent.getY(action3));
                c0.b(b3, "view_x", (int) motionEvent.getX(action3));
                c0.b(b3, "view_y", (int) motionEvent.getY(action3));
                c0.b(b3, "x", (int) motionEvent.getX(action3));
                c0.b(b3, "y", (int) motionEvent.getY(action3));
                if (!this.u) {
                    b2.a(c2.d().get(this.l));
                }
                new h0("AdContainer.on_touch_ended", this.k, b3).c();
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p() {
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q() {
        return this.w;
    }

    a0 a(h0 h0Var) {
        int d2 = c0.d(h0Var.a(), "id");
        a0 a0Var = new a0(this.y, h0Var, d2, this);
        a0Var.a();
        this.f203e.put(Integer.valueOf(d2), a0Var);
        this.f205g.put(Integer.valueOf(d2), a0Var);
        return a0Var;
    }

    View b(h0 h0Var) {
        f1 a2 = h0Var.a();
        int d2 = c0.d(a2, "id");
        if (c0.b(a2, "editable")) {
            u uVar = new u(this.y, h0Var, d2, this);
            uVar.a();
            this.f202d.put(Integer.valueOf(d2), uVar);
            this.f205g.put(Integer.valueOf(d2), uVar);
            this.f204f.put(Integer.valueOf(d2), Boolean.TRUE);
            return uVar;
        } else if (!c0.b(a2, "button")) {
            y0 y0Var = new y0(this.y, h0Var, d2, this);
            y0Var.a();
            this.f200b.put(Integer.valueOf(d2), y0Var);
            this.f205g.put(Integer.valueOf(d2), y0Var);
            this.f204f.put(Integer.valueOf(d2), Boolean.FALSE);
            return y0Var;
        } else {
            y0 y0Var2 = new y0(this.y, 16974145, h0Var, d2, this);
            y0Var2.a();
            this.f200b.put(Integer.valueOf(d2), y0Var2);
            this.f205g.put(Integer.valueOf(d2), y0Var2);
            this.f204f.put(Integer.valueOf(d2), Boolean.FALSE);
            return y0Var2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<j0> i() {
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        View view = (View) getParent();
        AdColonyAdView adColonyAdView = com.adcolony.sdk.a.b().c().d().get(this.l);
        b1 webView = adColonyAdView == null ? null : adColonyAdView.getWebView();
        Context a2 = com.adcolony.sdk.a.a();
        boolean z2 = true;
        float a3 = g1.a(view, a2, true, z, true, adColonyAdView != null);
        double a4 = a2 == null ? 0.0d : z0.a(z0.a(a2));
        int a5 = z0.a(webView);
        int b2 = z0.b(webView);
        if (a5 == this.q && b2 == this.r) {
            z2 = false;
        }
        if (z2) {
            this.q = a5;
            this.r = b2;
            a(a5, b2, webView);
        }
        if (this.o != a3 || this.p != a4 || z2) {
            a(a3, a4);
        }
        this.o = a3;
        this.p = a4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z) {
        this.u = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<Integer, View> e() {
        return this.f205g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(boolean z) {
        this.v = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<Integer, Boolean> g() {
        return this.f204f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<Integer, a0> h() {
        return this.f203e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<Integer, u> f() {
        return this.f202d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        z0.a(new i(z), 200L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i2) {
        this.f206h = i2;
    }

    private void a(int i2, int i3, b1 b1Var) {
        float s = com.adcolony.sdk.a.b().n().s();
        if (b1Var != null) {
            f1 b2 = c0.b();
            c0.b(b2, "app_orientation", z0.d(z0.f()));
            c0.b(b2, IabUtils.KEY_WIDTH, (int) (b1Var.getCurrentWidth() / s));
            c0.b(b2, IabUtils.KEY_HEIGHT, (int) (b1Var.getCurrentHeight() / s));
            c0.b(b2, "x", i2);
            c0.b(b2, "y", i3);
            c0.a(b2, "ad_session_id", this.l);
            new h0("MRAID.on_size_change", this.k, b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f206h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(boolean z) {
        this.w = z;
    }

    private void a(float f2, double d2) {
        f1 b2 = c0.b();
        c0.b(b2, "id", this.j);
        c0.a(b2, "ad_session_id", this.l);
        c0.a(b2, "exposure", f2);
        c0.a(b2, "volume", d2);
        new h0("AdContainer.on_exposure_change", this.k, b2).c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        this.i = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdSession adSession) {
        this.x = adSession;
        a(this.f205g);
    }

    void a(Map map) {
        if (this.x == null || map == null) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            a((View) entry.getValue(), FriendlyObstructionPurpose.OTHER);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose) {
        AdSession adSession = this.x;
        if (adSession == null || view == null) {
            return;
        }
        try {
            adSession.addFriendlyObstruction(view, friendlyObstructionPurpose, null);
        } catch (RuntimeException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view) {
        AdSession adSession = this.x;
        if (adSession == null || view == null) {
            return;
        }
        try {
            adSession.removeFriendlyObstruction(view);
        } catch (RuntimeException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<String> j() {
        return this.t;
    }
}
