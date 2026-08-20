package com.google.android.youtube.player;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.internal.aa;
import com.google.android.youtube.player.internal.ab;
import com.google.android.youtube.player.internal.n;
import com.google.android.youtube.player.internal.s;
import com.google.android.youtube.player.internal.t;
import com.google.android.youtube.player.internal.w;
import com.google.android.youtube.player.internal.y;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public final class YouTubePlayerView extends ViewGroup implements YouTubePlayer.Provider {

    /* renamed from: a  reason: collision with root package name */
    private final a f9711a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<View> f9712b;

    /* renamed from: c  reason: collision with root package name */
    private final b f9713c;

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.youtube.player.internal.b f9714d;

    /* renamed from: e  reason: collision with root package name */
    private s f9715e;

    /* renamed from: f  reason: collision with root package name */
    private View f9716f;

    /* renamed from: g  reason: collision with root package name */
    private n f9717g;

    /* renamed from: h  reason: collision with root package name */
    private YouTubePlayer.Provider f9718h;
    private Bundle i;
    private YouTubePlayer.OnInitializedListener j;
    private boolean k;
    private boolean l;

    /* loaded from: classes4.dex */
    private final class a implements ViewTreeObserver.OnGlobalFocusChangeListener {
        private a() {
        }

        /* synthetic */ a(YouTubePlayerView youTubePlayerView, byte b2) {
            this();
        }

        @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
        public final void onGlobalFocusChanged(View view, View view2) {
            if (YouTubePlayerView.this.f9715e == null || !YouTubePlayerView.this.f9712b.contains(view2) || YouTubePlayerView.this.f9712b.contains(view)) {
                return;
            }
            YouTubePlayerView.this.f9715e.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface b {
        void a(YouTubePlayerView youTubePlayerView);

        void a(YouTubePlayerView youTubePlayerView, String str, YouTubePlayer.OnInitializedListener onInitializedListener);
    }

    public YouTubePlayerView(Context context) {
        this(context, null);
    }

    public YouTubePlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, ((YouTubeBaseActivity) context).a());
        if (!(context instanceof YouTubeBaseActivity)) {
            throw new IllegalStateException("A YouTubePlayerView can only be created with an Activity  which extends YouTubeBaseActivity as its context.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public YouTubePlayerView(Context context, AttributeSet attributeSet, int i, b bVar) {
        super((Context) ab.a(context, "context cannot be null"), attributeSet, i);
        this.f9713c = (b) ab.a(bVar, "listener cannot be null");
        if (getBackground() == null) {
            setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        setClipToPadding(false);
        n nVar = new n(context);
        this.f9717g = nVar;
        requestTransparentRegion(nVar);
        addView(this.f9717g);
        this.f9712b = new HashSet();
        this.f9711a = new a(this, (byte) 0);
    }

    private void a(View view) {
        if (view != this.f9717g) {
            if (this.f9715e == null || view != this.f9716f) {
                throw new UnsupportedOperationException("No views can be added on top of the player");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(YouTubeInitializationResult youTubeInitializationResult) {
        this.f9715e = null;
        this.f9717g.c();
        YouTubePlayer.OnInitializedListener onInitializedListener = this.j;
        if (onInitializedListener != null) {
            onInitializedListener.onInitializationFailure(this.f9718h, youTubeInitializationResult);
            this.j = null;
        }
    }

    static /* synthetic */ void a(YouTubePlayerView youTubePlayerView, Activity activity) {
        boolean z;
        try {
            s sVar = new s(youTubePlayerView.f9714d, aa.a().a(activity, youTubePlayerView.f9714d, youTubePlayerView.k));
            youTubePlayerView.f9715e = sVar;
            View a2 = sVar.a();
            youTubePlayerView.f9716f = a2;
            youTubePlayerView.addView(a2);
            youTubePlayerView.removeView(youTubePlayerView.f9717g);
            youTubePlayerView.f9713c.a(youTubePlayerView);
            if (youTubePlayerView.j != null) {
                Bundle bundle = youTubePlayerView.i;
                if (bundle != null) {
                    z = youTubePlayerView.f9715e.a(bundle);
                    youTubePlayerView.i = null;
                } else {
                    z = false;
                }
                youTubePlayerView.j.onInitializationSuccess(youTubePlayerView.f9718h, youTubePlayerView.f9715e, z);
                youTubePlayerView.j = null;
            }
        } catch (w.a e2) {
            y.a("Error creating YouTubePlayerView", e2);
            youTubePlayerView.a(YouTubeInitializationResult.INTERNAL_ERROR);
        }
    }

    static /* synthetic */ com.google.android.youtube.player.internal.b b(YouTubePlayerView youTubePlayerView) {
        youTubePlayerView.f9714d = null;
        return null;
    }

    static /* synthetic */ View g(YouTubePlayerView youTubePlayerView) {
        youTubePlayerView.f9716f = null;
        return null;
    }

    static /* synthetic */ s h(YouTubePlayerView youTubePlayerView) {
        youTubePlayerView.f9715e = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        s sVar = this.f9715e;
        if (sVar != null) {
            sVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final Activity activity, YouTubePlayer.Provider provider, String str, YouTubePlayer.OnInitializedListener onInitializedListener, Bundle bundle) {
        if (this.f9715e == null && this.j == null) {
            ab.a(activity, "activity cannot be null");
            this.f9718h = (YouTubePlayer.Provider) ab.a(provider, "provider cannot be null");
            this.j = (YouTubePlayer.OnInitializedListener) ab.a(onInitializedListener, "listener cannot be null");
            this.i = bundle;
            this.f9717g.b();
            com.google.android.youtube.player.internal.b a2 = aa.a().a(getContext(), str, new t.a() { // from class: com.google.android.youtube.player.YouTubePlayerView.1
                @Override // com.google.android.youtube.player.internal.t.a
                public final void a() {
                    if (YouTubePlayerView.this.f9714d != null) {
                        YouTubePlayerView.a(YouTubePlayerView.this, activity);
                    }
                    YouTubePlayerView.b(YouTubePlayerView.this);
                }

                @Override // com.google.android.youtube.player.internal.t.a
                public final void b() {
                    if (!YouTubePlayerView.this.l && YouTubePlayerView.this.f9715e != null) {
                        YouTubePlayerView.this.f9715e.f();
                    }
                    YouTubePlayerView.this.f9717g.a();
                    YouTubePlayerView youTubePlayerView = YouTubePlayerView.this;
                    if (youTubePlayerView.indexOfChild(youTubePlayerView.f9717g) < 0) {
                        YouTubePlayerView youTubePlayerView2 = YouTubePlayerView.this;
                        youTubePlayerView2.addView(youTubePlayerView2.f9717g);
                        YouTubePlayerView youTubePlayerView3 = YouTubePlayerView.this;
                        youTubePlayerView3.removeView(youTubePlayerView3.f9716f);
                    }
                    YouTubePlayerView.g(YouTubePlayerView.this);
                    YouTubePlayerView.h(YouTubePlayerView.this);
                    YouTubePlayerView.b(YouTubePlayerView.this);
                }
            }, new t.b() { // from class: com.google.android.youtube.player.YouTubePlayerView.2
                @Override // com.google.android.youtube.player.internal.t.b
                public final void a(YouTubeInitializationResult youTubeInitializationResult) {
                    YouTubePlayerView.this.a(youTubeInitializationResult);
                    YouTubePlayerView.b(YouTubePlayerView.this);
                }
            });
            this.f9714d = a2;
            a2.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        this.k = z;
    }

    @Override // android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i) {
        ArrayList<View> arrayList2 = new ArrayList<>();
        super.addFocusables(arrayList2, i);
        arrayList.addAll(arrayList2);
        this.f9712b.clear();
        this.f9712b.addAll(arrayList2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        ArrayList<View> arrayList2 = new ArrayList<>();
        super.addFocusables(arrayList2, i, i2);
        arrayList.addAll(arrayList2);
        this.f9712b.clear();
        this.f9712b.addAll(arrayList2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        a(view);
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        a(view);
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, int i2) {
        a(view);
        super.addView(view, i, i2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        a(view);
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
        super.addView(view, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        s sVar = this.f9715e;
        if (sVar != null) {
            sVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(boolean z) {
        s sVar = this.f9715e;
        if (sVar != null) {
            sVar.b(z);
            c(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        s sVar = this.f9715e;
        if (sVar != null) {
            sVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(boolean z) {
        this.l = true;
        s sVar = this.f9715e;
        if (sVar != null) {
            sVar.a(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void clearChildFocus(View view) {
        if (hasFocusable()) {
            requestFocus();
        } else {
            super.clearChildFocus(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        s sVar = this.f9715e;
        if (sVar != null) {
            sVar.e();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.f9715e != null) {
            if (keyEvent.getAction() == 0) {
                return this.f9715e.a(keyEvent.getKeyCode(), keyEvent) || super.dispatchKeyEvent(keyEvent);
            } else if (keyEvent.getAction() == 1) {
                return this.f9715e.b(keyEvent.getKeyCode(), keyEvent) || super.dispatchKeyEvent(keyEvent);
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle e() {
        s sVar = this.f9715e;
        return sVar == null ? this.i : sVar.h();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void focusableViewAvailable(View view) {
        super.focusableViewAvailable(view);
        this.f9712b.add(view);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer.Provider
    public final void initialize(String str, YouTubePlayer.OnInitializedListener onInitializedListener) {
        ab.a(str, (Object) "Developer key cannot be null or empty");
        this.f9713c.a(this, str, onInitializedListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.f9711a);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        s sVar = this.f9715e;
        if (sVar != null) {
            sVar.a(configuration);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.f9711a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (getChildCount() > 0) {
            getChildAt(0).layout(0, 0, i3 - i, i4 - i2);
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        if (getChildCount() <= 0) {
            setMeasuredDimension(0, 0);
            return;
        }
        View childAt = getChildAt(0);
        childAt.measure(i, i2);
        setMeasuredDimension(childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        this.f9712b.add(view2);
    }

    @Override // android.view.ViewGroup
    public final void setClipToPadding(boolean z) {
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
    }
}
