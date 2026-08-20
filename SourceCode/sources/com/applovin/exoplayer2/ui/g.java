package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.ak;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.m.o;
import com.applovin.exoplayer2.ui.AspectRatioFrameLayout;
import com.applovin.exoplayer2.ui.f;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public class g extends FrameLayout {
    private boolean A;

    /* renamed from: a  reason: collision with root package name */
    private final a f4139a;

    /* renamed from: b  reason: collision with root package name */
    private final AspectRatioFrameLayout f4140b;

    /* renamed from: c  reason: collision with root package name */
    private final View f4141c;

    /* renamed from: d  reason: collision with root package name */
    private final View f4142d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4143e;

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f4144f;

    /* renamed from: g  reason: collision with root package name */
    private final SubtitleView f4145g;

    /* renamed from: h  reason: collision with root package name */
    private final View f4146h;
    private final TextView i;
    private final f j;
    private final FrameLayout k;
    private final FrameLayout l;
    private an m;
    private boolean n;
    private f.d o;
    private boolean p;
    private Drawable q;
    private int r;
    private boolean s;
    private com.applovin.exoplayer2.l.k<? super ak> t;
    private CharSequence u;
    private int v;
    private boolean w;
    private boolean x;
    private boolean y;
    private int z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a implements View.OnClickListener, View.OnLayoutChangeListener, an.d, f.d {

        /* renamed from: b  reason: collision with root package name */
        private final ba.a f4148b = new ba.a();

        /* renamed from: c  reason: collision with root package name */
        private Object f4149c;

        public a() {
        }

        @Override // com.applovin.exoplayer2.an.d
        public void a() {
            if (g.this.f4141c != null) {
                g.this.f4141c.setVisibility(4);
            }
        }

        @Override // com.applovin.exoplayer2.ui.f.d
        public void a(int i) {
            g.this.m();
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public void a(an.e eVar, an.e eVar2, int i) {
            if (g.this.g() && g.this.x) {
                g.this.b();
            }
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public void a(ad adVar, com.applovin.exoplayer2.j.h hVar) {
            an anVar = (an) com.applovin.exoplayer2.l.a.b(g.this.m);
            ba S = anVar.S();
            if (!S.d()) {
                if (anVar.P().a()) {
                    Object obj = this.f4149c;
                    if (obj != null) {
                        int c2 = S.c(obj);
                        if (c2 != -1) {
                            if (anVar.G() == S.a(c2, this.f4148b).f1620c) {
                                return;
                            }
                        }
                    }
                } else {
                    this.f4149c = S.a(anVar.F(), this.f4148b, true).f1619b;
                }
                g.this.c(false);
            }
            this.f4149c = null;
            g.this.c(false);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.m.n
        public void a(o oVar) {
            g.this.h();
        }

        @Override // com.applovin.exoplayer2.an.d
        public void a(List<com.applovin.exoplayer2.i.a> list) {
            if (g.this.f4145g != null) {
                g.this.f4145g.setCues(list);
            }
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public void b(int i) {
            g.this.k();
            g.this.l();
            g.this.n();
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public void b(boolean z, int i) {
            g.this.k();
            g.this.n();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.e();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            g.b((TextureView) view, g.this.z);
        }
    }

    public g(Context context) {
        this(context, null);
    }

    public g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        boolean z;
        int i3;
        int i4;
        boolean z2;
        boolean z3;
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        int i7;
        boolean z6;
        boolean z7;
        boolean z8;
        int i8;
        boolean z9;
        a aVar = new a();
        this.f4139a = aVar;
        if (isInEditMode()) {
            this.f4140b = null;
            this.f4141c = null;
            this.f4142d = null;
            this.f4143e = false;
            this.f4144f = null;
            this.f4145g = null;
            this.f4146h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            ImageView imageView = new ImageView(context);
            if (ai.f3781a >= 23) {
                a(getResources(), imageView);
            } else {
                b(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i9 = R.layout.applovin_exo_player_view;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AppLovinPlayerView, i, 0);
            try {
                boolean hasValue = obtainStyledAttributes.hasValue(R.styleable.AppLovinPlayerView_al_shutter_background_color);
                int color = obtainStyledAttributes.getColor(R.styleable.AppLovinPlayerView_al_shutter_background_color, 0);
                int resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppLovinPlayerView_al_player_layout_id, i9);
                boolean z10 = obtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_use_artwork, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.AppLovinPlayerView_al_default_artwork, 0);
                boolean z11 = obtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_use_controller, true);
                int i10 = obtainStyledAttributes.getInt(R.styleable.AppLovinPlayerView_al_surface_type, 1);
                int i11 = obtainStyledAttributes.getInt(R.styleable.AppLovinPlayerView_al_resize_mode, 0);
                int i12 = obtainStyledAttributes.getInt(R.styleable.AppLovinPlayerView_al_show_timeout, 5000);
                boolean z12 = obtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_hide_on_touch, true);
                boolean z13 = obtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_auto_show, true);
                i4 = obtainStyledAttributes.getInteger(R.styleable.AppLovinPlayerView_al_show_buffering, 0);
                this.s = obtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_keep_content_on_player_reset, this.s);
                boolean z14 = obtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_hide_during_ads, true);
                obtainStyledAttributes.recycle();
                z3 = z12;
                z = z13;
                i3 = i11;
                z6 = z11;
                i7 = resourceId2;
                z5 = z10;
                i6 = color;
                z4 = hasValue;
                i5 = i10;
                i9 = resourceId;
                i2 = i12;
                z2 = z14;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i2 = 5000;
            z = true;
            i3 = 0;
            i4 = 0;
            z2 = true;
            z3 = true;
            i5 = 1;
            z4 = false;
            i6 = 0;
            z5 = true;
            i7 = 0;
            z6 = true;
        }
        LayoutInflater.from(context).inflate(i9, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R.id.al_exo_content_frame);
        this.f4140b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            a(aspectRatioFrameLayout, i3);
        }
        View findViewById = findViewById(R.id.al_exo_shutter);
        this.f4141c = findViewById;
        if (findViewById != null && z4) {
            findViewById.setBackgroundColor(i6);
        }
        if (aspectRatioFrameLayout == null || i5 == 0) {
            z7 = true;
            this.f4142d = null;
            z8 = false;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i5 == 2) {
                z7 = true;
                this.f4142d = new TextureView(context);
            } else if (i5 != 3) {
                if (i5 != 4) {
                    this.f4142d = new SurfaceView(context);
                } else {
                    try {
                        this.f4142d = (View) Class.forName("com.applovin.exoplayer2.m.i").getConstructor(Context.class).newInstance(context);
                    } catch (Exception e2) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e2);
                    }
                }
                z7 = true;
            } else {
                try {
                    z7 = true;
                    this.f4142d = (View) Class.forName("com.applovin.exoplayer2.m.a.i").getConstructor(Context.class).newInstance(context);
                    z9 = true;
                    this.f4142d.setLayoutParams(layoutParams);
                    this.f4142d.setOnClickListener(aVar);
                    this.f4142d.setClickable(false);
                    aspectRatioFrameLayout.addView(this.f4142d, 0);
                    z8 = z9;
                } catch (Exception e3) {
                    throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e3);
                }
            }
            z9 = false;
            this.f4142d.setLayoutParams(layoutParams);
            this.f4142d.setOnClickListener(aVar);
            this.f4142d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f4142d, 0);
            z8 = z9;
        }
        this.f4143e = z8;
        this.k = (FrameLayout) findViewById(R.id.al_exo_ad_overlay);
        this.l = (FrameLayout) findViewById(R.id.al_exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R.id.al_exo_artwork);
        this.f4144f = imageView2;
        this.p = (!z5 || imageView2 == null) ? false : z7;
        if (i7 != 0) {
            this.q = ContextCompat.getDrawable(getContext(), i7);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.al_exo_subtitles);
        this.f4145g = subtitleView;
        if (subtitleView != null) {
            subtitleView.d();
            subtitleView.c();
        }
        View findViewById2 = findViewById(R.id.al_exo_buffering);
        this.f4146h = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.r = i4;
        TextView textView = (TextView) findViewById(R.id.al_exo_error_message);
        this.i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        f fVar = (f) findViewById(R.id.al_exo_controller);
        View findViewById3 = findViewById(R.id.al_exo_controller_placeholder);
        if (fVar != null) {
            this.j = fVar;
            i8 = 0;
        } else if (findViewById3 != null) {
            i8 = 0;
            f fVar2 = new f(context, null, 0, attributeSet);
            this.j = fVar2;
            fVar2.setId(R.id.al_exo_controller);
            fVar2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(fVar2, indexOfChild);
        } else {
            i8 = 0;
            this.j = null;
        }
        f fVar3 = this.j;
        this.v = fVar3 != null ? i2 : i8;
        this.y = z3;
        this.w = z;
        this.x = z2;
        this.n = (!z6 || fVar3 == null) ? i8 : z7;
        b();
        m();
        f fVar4 = this.j;
        if (fVar4 != null) {
            fVar4.a(aVar);
        }
    }

    private static void a(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R.drawable.applovin_exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(R.color.al_exo_edit_mode_background_color, null));
    }

    private static void a(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    private void a(boolean z) {
        if (!(g() && this.x) && c()) {
            boolean z2 = this.j.c() && this.j.getShowTimeoutMs() <= 0;
            boolean f2 = f();
            if (z || z2 || f2) {
                b(f2);
            }
        }
    }

    private boolean a(int i) {
        return i == 19 || i == 270 || i == 22 || i == 271 || i == 20 || i == 269 || i == 21 || i == 268 || i == 23;
    }

    private boolean a(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                a(this.f4140b, intrinsicWidth / intrinsicHeight);
                this.f4144f.setImageDrawable(drawable);
                this.f4144f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private boolean a(ac acVar) {
        if (acVar.l == null) {
            return false;
        }
        return a(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(acVar.l, 0, acVar.l.length)));
    }

    private static void b(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R.drawable.applovin_exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R.color.al_exo_edit_mode_background_color));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(TextureView textureView, int i) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i != 0) {
            float f2 = width / 2.0f;
            float f3 = height / 2.0f;
            matrix.postRotate(i, f2, f3);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f2, f3);
        }
        textureView.setTransform(matrix);
    }

    private void b(boolean z) {
        if (c()) {
            this.j.setShowTimeoutMs(z ? 0 : this.v);
            this.j.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        an anVar = this.m;
        if (anVar == null || anVar.P().a()) {
            if (this.s) {
                return;
            }
            i();
            j();
            return;
        }
        if (z && !this.s) {
            j();
        }
        com.applovin.exoplayer2.j.h Q = anVar.Q();
        for (int i = 0; i < Q.f3554a; i++) {
            com.applovin.exoplayer2.j.g a2 = Q.a(i);
            if (a2 != null) {
                for (int i2 = 0; i2 < a2.e(); i2++) {
                    if (u.e(a2.a(i2).l) == 2) {
                        i();
                        return;
                    }
                }
                continue;
            }
        }
        j();
        if (d() && (a(anVar.R()) || a(this.q))) {
            return;
        }
        i();
    }

    private boolean c() {
        if (this.n) {
            com.applovin.exoplayer2.l.a.a(this.j);
            return true;
        }
        return false;
    }

    private boolean d() {
        if (this.p) {
            com.applovin.exoplayer2.l.a.a(this.f4144f);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        if (!c() || this.m == null) {
            return false;
        }
        if (!this.j.c()) {
            a(true);
        } else if (this.y) {
            this.j.b();
        }
        return true;
    }

    private boolean f() {
        an anVar = this.m;
        if (anVar == null) {
            return true;
        }
        int t = anVar.t();
        return this.w && (t == 1 || t == 4 || !this.m.x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        an anVar = this.m;
        return anVar != null && anVar.K() && this.m.x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        an anVar = this.m;
        o T = anVar != null ? anVar.T() : o.f4012a;
        int i = T.f4014b;
        int i2 = T.f4015c;
        int i3 = T.f4016d;
        float f2 = (i2 == 0 || i == 0) ? 0.0f : (i * T.f4017e) / i2;
        View view = this.f4142d;
        if (view instanceof TextureView) {
            if (f2 > 0.0f && (i3 == 90 || i3 == 270)) {
                f2 = 1.0f / f2;
            }
            if (this.z != 0) {
                view.removeOnLayoutChangeListener(this.f4139a);
            }
            this.z = i3;
            if (i3 != 0) {
                this.f4142d.addOnLayoutChangeListener(this.f4139a);
            }
            b((TextureView) this.f4142d, this.z);
        }
        a(this.f4140b, this.f4143e ? 0.0f : f2);
    }

    private void i() {
        ImageView imageView = this.f4144f;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f4144f.setVisibility(4);
        }
    }

    private void j() {
        View view = this.f4141c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        if (r4.m.x() == false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void k() {
        /*
            r4 = this;
            android.view.View r0 = r4.f4146h
            if (r0 == 0) goto L2b
            com.applovin.exoplayer2.an r0 = r4.m
            r1 = 0
            if (r0 == 0) goto L20
            int r0 = r0.t()
            r2 = 2
            if (r0 != r2) goto L20
            int r0 = r4.r
            r3 = 1
            if (r0 == r2) goto L21
            if (r0 != r3) goto L20
            com.applovin.exoplayer2.an r0 = r4.m
            boolean r0 = r0.x()
            if (r0 == 0) goto L20
            goto L21
        L20:
            r3 = r1
        L21:
            android.view.View r0 = r4.f4146h
            if (r3 == 0) goto L26
            goto L28
        L26:
            r1 = 8
        L28:
            r0.setVisibility(r1)
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.g.k():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        com.applovin.exoplayer2.l.k<? super ak> kVar;
        TextView textView = this.i;
        if (textView != null) {
            CharSequence charSequence = this.u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.i.setVisibility(0);
                return;
            }
            an anVar = this.m;
            ak e2 = anVar != null ? anVar.e() : null;
            if (e2 == null || (kVar = this.t) == null) {
                this.i.setVisibility(8);
                return;
            }
            this.i.setText((CharSequence) kVar.a(e2).second);
            this.i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        f fVar = this.j;
        String str = null;
        if (fVar != null && this.n) {
            if (fVar.getVisibility() != 0) {
                setContentDescription(getResources().getString(R.string.al_exo_controls_show));
                return;
            } else if (this.y) {
                str = getResources().getString(R.string.al_exo_controls_hide);
            }
        }
        setContentDescription(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (g() && this.x) {
            b();
        } else {
            a(false);
        }
    }

    public void a() {
        b(f());
    }

    protected void a(AspectRatioFrameLayout aspectRatioFrameLayout, float f2) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f2);
        }
    }

    public boolean a(KeyEvent keyEvent) {
        return c() && this.j.a(keyEvent);
    }

    public void b() {
        f fVar = this.j;
        if (fVar != null) {
            fVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        an anVar = this.m;
        if (anVar == null || !anVar.K()) {
            boolean a2 = a(keyEvent.getKeyCode());
            if ((a2 && c() && !this.j.c()) || a(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
                a(true);
                return true;
            }
            if (a2 && c()) {
                a(true);
            }
            return false;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public List<com.applovin.exoplayer2.ui.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        if (this.l != null) {
            arrayList.add(new com.applovin.exoplayer2.ui.a(this.l, 3, "Transparent overlay does not impact viewability"));
        }
        if (this.j != null) {
            arrayList.add(new com.applovin.exoplayer2.ui.a(this.j, 0));
        }
        return s.a((Collection) arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.applovin.exoplayer2.l.a.a(this.k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.w;
    }

    public boolean getControllerHideOnTouch() {
        return this.y;
    }

    public int getControllerShowTimeoutMs() {
        return this.v;
    }

    public Drawable getDefaultArtwork() {
        return this.q;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.l;
    }

    public an getPlayer() {
        return this.m;
    }

    public int getResizeMode() {
        com.applovin.exoplayer2.l.a.a(this.f4140b);
        return this.f4140b.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f4145g;
    }

    public boolean getUseArtwork() {
        return this.p;
    }

    public boolean getUseController() {
        return this.n;
    }

    public View getVideoSurfaceView() {
        return this.f4142d;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!c() || this.m == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.A = true;
            return true;
        } else if (action == 1 && this.A) {
            this.A = false;
            performClick();
            return true;
        } else {
            return false;
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!c() || this.m == null) {
            return false;
        }
        a(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return e();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.a aVar) {
        com.applovin.exoplayer2.l.a.a(this.f4140b);
        this.f4140b.setAspectRatioListener(aVar);
    }

    @Deprecated
    public void setControlDispatcher(com.applovin.exoplayer2.i iVar) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.j.setControlDispatcher(iVar);
    }

    public void setControllerAutoShow(boolean z) {
        this.w = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.x = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.y = z;
        m();
    }

    public void setControllerShowTimeoutMs(int i) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.v = i;
        if (this.j.c()) {
            a();
        }
    }

    public void setControllerVisibilityListener(f.d dVar) {
        com.applovin.exoplayer2.l.a.a(this.j);
        f.d dVar2 = this.o;
        if (dVar2 == dVar) {
            return;
        }
        if (dVar2 != null) {
            this.j.b(dVar2);
        }
        this.o = dVar;
        if (dVar != null) {
            this.j.a(dVar);
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        com.applovin.exoplayer2.l.a.b(this.i != null);
        this.u = charSequence;
        l();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.q != drawable) {
            this.q = drawable;
            c(false);
        }
    }

    public void setErrorMessageProvider(com.applovin.exoplayer2.l.k<? super ak> kVar) {
        if (this.t != kVar) {
            this.t = kVar;
            l();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.s != z) {
            this.s = z;
            c(false);
        }
    }

    public void setPlayer(an anVar) {
        com.applovin.exoplayer2.l.a.b(Looper.myLooper() == Looper.getMainLooper());
        com.applovin.exoplayer2.l.a.a(anVar == null || anVar.r() == Looper.getMainLooper());
        an anVar2 = this.m;
        if (anVar2 == anVar) {
            return;
        }
        if (anVar2 != null) {
            anVar2.b(this.f4139a);
            if (anVar2.a(26)) {
                View view = this.f4142d;
                if (view instanceof TextureView) {
                    anVar2.b((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    anVar2.b((SurfaceView) view);
                }
            }
        }
        SubtitleView subtitleView = this.f4145g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.m = anVar;
        if (c()) {
            this.j.setPlayer(anVar);
        }
        k();
        l();
        c(true);
        if (anVar == null) {
            b();
            return;
        }
        if (anVar.a(26)) {
            View view2 = this.f4142d;
            if (view2 instanceof TextureView) {
                anVar.a((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                anVar.a((SurfaceView) view2);
            }
            h();
        }
        if (this.f4145g != null && anVar.a(27)) {
            this.f4145g.setCues(anVar.V());
        }
        anVar.a(this.f4139a);
        a(false);
    }

    public void setRepeatToggleModes(int i) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.j.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        com.applovin.exoplayer2.l.a.a(this.f4140b);
        this.f4140b.setResizeMode(i);
    }

    public void setShowBuffering(int i) {
        if (this.r != i) {
            this.r = i;
            k();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.j.setShowFastForwardButton(z);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.j.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.j.setShowNextButton(z);
    }

    public void setShowPreviousButton(boolean z) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.j.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.j.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        com.applovin.exoplayer2.l.a.a(this.j);
        this.j.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.f4141c;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        com.applovin.exoplayer2.l.a.b((z && this.f4144f == null) ? false : true);
        if (this.p != z) {
            this.p = z;
            c(false);
        }
    }

    public void setUseController(boolean z) {
        f fVar;
        an anVar;
        com.applovin.exoplayer2.l.a.b((z && this.j == null) ? false : true);
        if (this.n == z) {
            return;
        }
        this.n = z;
        if (!c()) {
            f fVar2 = this.j;
            if (fVar2 != null) {
                fVar2.b();
                fVar = this.j;
                anVar = null;
            }
            m();
        }
        fVar = this.j;
        anVar = this.m;
        fVar.setPlayer(anVar);
        m();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f4142d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }
}
