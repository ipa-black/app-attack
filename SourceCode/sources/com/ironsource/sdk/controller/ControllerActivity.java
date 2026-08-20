package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.InputDeviceCompat;
import com.ironsource.sdk.controller.x;
import com.ironsource.sdk.g.d;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import com.unity3d.services.core.request.metrics.AdOperationMetric;
/* loaded from: classes3.dex */
public class ControllerActivity extends Activity implements w, com.ironsource.sdk.j.g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f11578a = "ControllerActivity";

    /* renamed from: b  reason: collision with root package name */
    private static String f11579b = "removeWebViewContainerView | mContainer is null";

    /* renamed from: c  reason: collision with root package name */
    private static String f11580c = "removeWebViewContainerView | view is null";

    /* renamed from: d  reason: collision with root package name */
    private String f11581d;

    /* renamed from: e  reason: collision with root package name */
    private x f11582e;

    /* renamed from: f  reason: collision with root package name */
    private RelativeLayout f11583f;

    /* renamed from: g  reason: collision with root package name */
    private FrameLayout f11584g;
    private String i;
    private com.ironsource.sdk.g.b m;
    private boolean n;
    private boolean o;
    public int currentRequestedRotation = -1;

    /* renamed from: h  reason: collision with root package name */
    private boolean f11585h = false;
    private Handler j = new Handler();
    private final Runnable k = new Runnable() { // from class: com.ironsource.sdk.controller.ControllerActivity.1
        @Override // java.lang.Runnable
        public final void run() {
            ControllerActivity.this.getWindow().getDecorView().setSystemUiVisibility(SDKUtils.getActivityUIFlags(ControllerActivity.this.f11585h));
        }
    };
    private RelativeLayout.LayoutParams l = new RelativeLayout.LayoutParams(-1, -1);

    private void a() {
        String str = f11578a;
        Logger.i(str, "clearWebviewController");
        x xVar = this.f11582e;
        if (xVar == null) {
            Logger.i(str, "clearWebviewController, null");
            return;
        }
        xVar.j = x.g.Gone;
        this.f11582e.l = null;
        this.f11582e.v = null;
        this.f11582e.a(this.i, "onDestroy");
    }

    private void a(String str) {
        if (str != null) {
            if ("landscape".equalsIgnoreCase(str)) {
                b();
            } else if ("portrait".equalsIgnoreCase(str)) {
                c();
            } else if ("device".equalsIgnoreCase(str)) {
                if (com.ironsource.environment.h.q(this)) {
                    setRequestedOrientation(1);
                }
            } else if (getRequestedOrientation() == -1) {
                setRequestedOrientation(4);
            }
        }
    }

    private void b() {
        int k = com.ironsource.environment.h.k(this);
        String str = f11578a;
        Logger.i(str, "setInitiateLandscapeOrientation");
        if (k == 0) {
            Logger.i(str, "ROTATION_0");
            setRequestedOrientation(0);
        } else if (k == 2) {
            Logger.i(str, "ROTATION_180");
            setRequestedOrientation(8);
        } else if (k == 3) {
            Logger.i(str, "ROTATION_270 Right Landscape");
            setRequestedOrientation(8);
        } else if (k != 1) {
            Logger.i(str, "No Rotation");
        } else {
            Logger.i(str, "ROTATION_90 Left Landscape");
            setRequestedOrientation(0);
        }
    }

    private void c() {
        int k = com.ironsource.environment.h.k(this);
        String str = f11578a;
        Logger.i(str, "setInitiatePortraitOrientation");
        if (k == 0) {
            Logger.i(str, "ROTATION_0");
            setRequestedOrientation(1);
        } else if (k == 2) {
            Logger.i(str, "ROTATION_180");
            setRequestedOrientation(9);
        } else if (k == 1) {
            Logger.i(str, "ROTATION_270 Right Landscape");
            setRequestedOrientation(1);
        } else if (k != 3) {
            Logger.i(str, "No Rotation");
        } else {
            Logger.i(str, "ROTATION_90 Left Landscape");
            setRequestedOrientation(1);
        }
    }

    @Override // com.ironsource.sdk.j.g
    public boolean onBackButtonPressed() {
        onBackPressed();
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Logger.i(f11578a, "onBackPressed");
        new com.ironsource.sdk.i.a();
        if (com.ironsource.sdk.i.a.a(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.ironsource.sdk.j.g
    public void onCloseRequested() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Logger.i(f11578a, "onCreate");
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            x xVar = (x) com.ironsource.sdk.d.b.a((Context) this).f11936a.f11643a;
            this.f11582e = xVar;
            xVar.i.setId(1);
            this.f11582e.v = this;
            this.f11582e.l = this;
            Intent intent = getIntent();
            this.i = intent.getStringExtra("productType");
            this.f11585h = intent.getBooleanExtra("immersive", false);
            this.f11581d = intent.getStringExtra("adViewId");
            this.n = false;
            this.o = intent.getBooleanExtra("ctrWVPauseResume", false);
            if (this.f11585h) {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.ironsource.sdk.controller.ControllerActivity.2
                    @Override // android.view.View.OnSystemUiVisibilityChangeListener
                    public final void onSystemUiVisibilityChange(int i) {
                        if ((i & InputDeviceCompat.SOURCE_TOUCHSCREEN) == 0) {
                            ControllerActivity.this.j.removeCallbacks(ControllerActivity.this.k);
                            ControllerActivity.this.j.postDelayed(ControllerActivity.this.k, 500L);
                        }
                    }
                });
                runOnUiThread(this.k);
            }
            if (!TextUtils.isEmpty(this.i) && d.e.OfferWall.toString().equalsIgnoreCase(this.i)) {
                if (bundle != null) {
                    com.ironsource.sdk.g.b bVar = (com.ironsource.sdk.g.b) bundle.getParcelable(AdOperationMetric.INIT_STATE);
                    if (bVar != null) {
                        this.m = bVar;
                        this.f11582e.a(bVar);
                    }
                    finish();
                } else {
                    this.m = this.f11582e.m;
                }
            }
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.f11583f = relativeLayout;
            setContentView(relativeLayout, this.l);
            String str = this.f11581d;
            this.f11584g = (TextUtils.isEmpty(str) || str.equals(Integer.toString(1))) ? this.f11582e.i : com.ironsource.sdk.utils.d.a(getApplicationContext(), com.ironsource.sdk.c.d.a().a(str).b());
            if (this.f11583f.findViewById(1) == null && this.f11584g.getParent() != null) {
                finish();
            }
            Intent intent2 = getIntent();
            String stringExtra = intent2.getStringExtra("orientation_set_flag");
            intent2.getIntExtra("rotation_set_flag", 0);
            a(stringExtra);
            this.f11583f.addView(this.f11584g, this.l);
        } catch (Exception e2) {
            e2.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        Logger.i(f11578a, "onDestroy");
        try {
        } catch (Exception e2) {
            com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.p, new com.ironsource.sdk.a.a().a("callfailreason", e2.getMessage()).f11500a);
            Logger.i(f11578a, "removeWebViewContainerView fail " + e2.getMessage());
        }
        if (this.f11583f == null) {
            throw new Exception(f11579b);
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f11584g.getParent();
        View findViewById = this.f11581d == null ? viewGroup2.findViewById(1) : com.ironsource.sdk.c.d.a().a(this.f11581d).b();
        if (findViewById == null) {
            throw new Exception(f11580c);
        }
        if (isFinishing() && (viewGroup = (ViewGroup) findViewById.getParent()) != null) {
            viewGroup.removeView(findViewById);
        }
        viewGroup2.removeView(this.f11584g);
        if (this.n) {
            return;
        }
        Logger.i(f11578a, "onDestroy | destroyedFromBackground");
        a();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && this.f11582e.f11810h != null) {
            this.f11582e.f11809g.onHideCustomView();
            return true;
        }
        if (this.f11585h && (i == 25 || i == 24)) {
            this.j.removeCallbacks(this.k);
            this.j.postDelayed(this.k, 500L);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.ironsource.sdk.j.g
    public void onOrientationChanged(String str, int i) {
        a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        Logger.i(f11578a, "onPause, isFinishing=" + isFinishing());
        final AudioManager audioManager = (AudioManager) getSystemService("audio");
        com.ironsource.environment.e.a.f10578a.b(new Runnable() { // from class: com.ironsource.sdk.controller.u.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    audioManager.abandonAudioFocus(null);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
        x xVar = this.f11582e;
        if (xVar != null) {
            xVar.b(this);
            if (!this.o) {
                this.f11582e.k();
            }
            this.f11582e.a(false, "main");
            this.f11582e.a(this.i, "onPause");
        }
        if (isFinishing()) {
            this.n = true;
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Logger.i(f11578a, "onResume");
        x xVar = this.f11582e;
        if (xVar != null) {
            xVar.a(this);
            if (!this.o) {
                this.f11582e.l();
            }
            this.f11582e.a(true, "main");
            this.f11582e.a(this.i, "onResume");
        }
        final AudioManager audioManager = (AudioManager) getSystemService("audio");
        com.ironsource.environment.e.a.f10578a.b(new Runnable() { // from class: com.ironsource.sdk.controller.u.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    audioManager.requestAudioFocus(null, 3, 2);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (TextUtils.isEmpty(this.i) || !d.e.OfferWall.toString().equalsIgnoreCase(this.i)) {
            return;
        }
        this.m.f12020d = true;
        bundle.putParcelable(AdOperationMetric.INIT_STATE, this.m);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Logger.i(f11578a, "onStart");
        x xVar = this.f11582e;
        if (xVar != null) {
            xVar.a(this.i, "onStart");
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        Logger.i(f11578a, "onStop");
        x xVar = this.f11582e;
        if (xVar != null) {
            xVar.a(this.i, "onStop");
        }
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        Logger.i(f11578a, "onUserLeaveHint");
        x xVar = this.f11582e;
        if (xVar != null) {
            xVar.a(this.i, "onUserLeaveHint");
        }
    }

    @Override // com.ironsource.sdk.controller.w
    public void onVideoEnded() {
        toggleKeepScreen(false);
    }

    @Override // com.ironsource.sdk.controller.w
    public void onVideoPaused() {
        toggleKeepScreen(false);
    }

    @Override // com.ironsource.sdk.controller.w
    public void onVideoResumed() {
        toggleKeepScreen(true);
    }

    @Override // com.ironsource.sdk.controller.w
    public void onVideoStarted() {
        toggleKeepScreen(true);
    }

    @Override // com.ironsource.sdk.controller.w
    public void onVideoStopped() {
        toggleKeepScreen(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.f11585h && z) {
            runOnUiThread(this.k);
        }
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i) {
        if (this.currentRequestedRotation != i) {
            Logger.i(f11578a, "Rotation: Req = " + i + " Curr = " + this.currentRequestedRotation);
            this.currentRequestedRotation = i;
            super.setRequestedOrientation(i);
        }
    }

    public void toggleKeepScreen(boolean z) {
        runOnUiThread(z ? new Runnable() { // from class: com.ironsource.sdk.controller.ControllerActivity.3
            @Override // java.lang.Runnable
            public final void run() {
                ControllerActivity.this.getWindow().addFlags(128);
            }
        } : new Runnable() { // from class: com.ironsource.sdk.controller.ControllerActivity.4
            @Override // java.lang.Runnable
            public final void run() {
                ControllerActivity.this.getWindow().clearFlags(128);
            }
        });
    }
}
