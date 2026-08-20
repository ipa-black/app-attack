package com.appnext.core;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.RotateAnimation;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.appnext.core.e;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
/* loaded from: classes.dex */
public abstract class AppnextActivity extends Activity {
    private RelativeLayout gk;
    protected RelativeLayout gl;
    protected Handler handler;
    protected String placementID;
    protected q userAction;
    protected String gj = "";
    protected String guid = "";
    protected String banner = "";

    protected abstract p getConfig();

    protected abstract void onError(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        new Thread(new Runnable() { // from class: com.appnext.core.AppnextActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                if (f.s(AppnextActivity.this)) {
                    return;
                }
                AppnextActivity.this.finish();
                AppnextActivity.this.runOnUiThread(new Runnable() { // from class: com.appnext.core.AppnextActivity.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppnextActivity.this.onError(AppnextError.CONNECTION_ERROR);
                    }
                });
            }
        }).start();
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(128);
        super.onCreate(bundle);
        this.handler = new Handler();
    }

    protected final void aY() {
        getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() ^ 4102);
    }

    protected final void aZ() {
        getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 4102);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(AppnextAd appnextAd, e.a aVar) {
        q qVar = this.userAction;
        if (qVar == null || appnextAd == null) {
            return;
        }
        qVar.a(appnextAd, appnextAd.getImpressionURL(), aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(AppnextAd appnextAd, e.a aVar) {
        q qVar = this.userAction;
        if (qVar == null || appnextAd == null) {
            return;
        }
        qVar.a(appnextAd, appnextAd.getAppURL(), this.placementID, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ViewGroup viewGroup, Drawable drawable) {
        if (this.gk != null) {
            ba();
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.gk = relativeLayout;
        relativeLayout.setBackgroundColor(Color.parseColor("#77ffffff"));
        viewGroup.addView(this.gk);
        this.gk.getLayoutParams().height = -1;
        this.gk.getLayoutParams().width = -1;
        ProgressBar progressBar = new ProgressBar(this, null, 16842871);
        progressBar.setIndeterminateDrawable(drawable);
        progressBar.setIndeterminate(true);
        this.gk.addView(progressBar);
        RotateAnimation rotateAnimation = new RotateAnimation(360.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(1000L);
        rotateAnimation.setRepeatCount(-1);
        progressBar.setAnimation(rotateAnimation);
        ((RelativeLayout.LayoutParams) progressBar.getLayoutParams()).addRule(13, -1);
        this.gk.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.core.AppnextActivity.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
        this.handler.postDelayed(new Runnable() { // from class: com.appnext.core.AppnextActivity.3
            @Override // java.lang.Runnable
            public final void run() {
                AppnextActivity.this.ba();
            }
        }, RtspMediaSource.DEFAULT_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ba() {
        RelativeLayout relativeLayout = this.gk;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
            this.gk.removeAllViewsInLayout();
            if (this.gk.getParent() != null) {
                ((RelativeLayout) this.gk.getParent()).removeView(this.gk);
            }
        }
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(null);
        }
        this.gk = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            this.handler.removeCallbacks(null);
            this.handler = null;
        } catch (Throwable unused) {
        }
        try {
            this.userAction.destroy();
            this.userAction = null;
        } catch (Throwable unused2) {
        }
    }
}
