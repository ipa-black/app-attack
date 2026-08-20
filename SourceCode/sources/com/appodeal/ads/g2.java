package com.appodeal.ads;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.appodeal.ads.Native;
import com.appodeal.ads.VideoPlayerActivity;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.Log;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.view.CircleCountdownView;
import java.io.File;
import java.util.List;
import java.util.Timer;
/* loaded from: classes.dex */
public final class g2 extends RelativeLayout implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener, VideoPlayerActivity.a {
    public static final String x = "g2";
    public static g2 y;

    /* renamed from: a  reason: collision with root package name */
    public l2 f6677a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f6678b;

    /* renamed from: c  reason: collision with root package name */
    public ImageView f6679c;

    /* renamed from: d  reason: collision with root package name */
    public ProgressBar f6680d;

    /* renamed from: e  reason: collision with root package name */
    public ImageView f6681e;

    /* renamed from: f  reason: collision with root package name */
    public CircleCountdownView f6682f;

    /* renamed from: g  reason: collision with root package name */
    public MediaPlayer f6683g;

    /* renamed from: h  reason: collision with root package name */
    public TextureView f6684h;
    public Timer i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public volatile boolean r;
    public boolean s;
    public VastRequest t;
    public int u;
    public int v;
    public int w;

    public g2(Context context) {
        super(context);
        this.f6678b = false;
        this.l = true;
        this.w = 1;
    }

    public static void a(g2 g2Var, TrackingEvent trackingEvent) {
        l2 l2Var;
        List<String> list;
        VastRequest vastRequest = g2Var.t;
        if (vastRequest != null && vastRequest.getVastAd() != null && (list = g2Var.t.getVastAd().getTrackingEventListMap().get(trackingEvent)) != null) {
            for (String str : list) {
                n5.a(str, com.appodeal.ads.utils.s.f7824e);
            }
        }
        if (trackingEvent != TrackingEvent.complete || (l2Var = g2Var.f6677a) == null) {
            return;
        }
        l2Var.g();
    }

    public static boolean b(g2 g2Var) {
        g2Var.getClass();
        return g2Var.getGlobalVisibleRect(new Rect()) && g2Var.isShown() && g2Var.hasWindowFocus();
    }

    public static /* synthetic */ void e(g2 g2Var) {
        g2Var.v++;
    }

    public final boolean c() {
        return (this.r || this.f6683g == null) ? false : true;
    }

    public final void d() {
        if (c() && this.f6683g.isPlaying()) {
            this.f6683g.pause();
        }
        if (this.w != 3) {
            this.w = 4;
            h();
        }
    }

    public final void e() {
        try {
            if (this.m || this.f6677a.q == null || this.n || this.r) {
                return;
            }
            this.f6683g.setDataSource(getContext(), this.f6677a.q);
            this.f6683g.prepareAsync();
            this.n = true;
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    public final void f() {
        List<String> impressionUrlList;
        if (this.f6683g == null) {
            b();
        }
        if (!this.m) {
            e();
        }
        if (c() && !this.f6683g.isPlaying() && this.m && this.o) {
            boolean globalVisibleRect = getGlobalVisibleRect(new Rect());
            boolean isShown = isShown();
            boolean hasWindowFocus = hasWindowFocus();
            if (globalVisibleRect && isShown && hasWindowFocus) {
                this.w = 2;
                h();
                this.f6683g.start();
                if (!this.j) {
                    VastRequest vastRequest = this.t;
                    if (vastRequest != null && vastRequest.getVastAd() != null && (impressionUrlList = this.t.getVastAd().getImpressionUrlList()) != null) {
                        for (String str : impressionUrlList) {
                            n5.a(str, com.appodeal.ads.utils.s.f7824e);
                        }
                    }
                    this.j = true;
                    Log.log(x, "Video", "started");
                }
                if (this.i == null && this.q) {
                    Timer timer = new Timer();
                    this.i = timer;
                    timer.schedule(new f2(this), 0L, 500);
                }
            }
        }
    }

    public final void g() {
        CircleCountdownView circleCountdownView = this.f6682f;
        if (circleCountdownView != null) {
            circleCountdownView.setImage(Assets.getBitmapFromBase64(this.l ? Assets.unmute : Assets.mute));
        }
    }

    public final void h() {
        int a2 = m.a(this.w);
        if (a2 == 0) {
            ImageView imageView = this.f6679c;
            if (imageView != null) {
                imageView.setVisibility(0);
                this.f6679c.bringToFront();
            }
            if (!this.q) {
                return;
            }
            this.f6684h.setVisibility(4);
            this.f6680d.setVisibility(4);
        } else if (a2 == 1) {
            ImageView imageView2 = this.f6679c;
            if (imageView2 != null) {
                imageView2.setVisibility(4);
            }
            if (this.q) {
                this.f6684h.setVisibility(0);
                this.f6684h.bringToFront();
                this.f6682f.setVisibility(0);
                this.f6682f.bringToFront();
                g();
                this.f6680d.setVisibility(4);
                this.f6681e.setVisibility(4);
                return;
            }
            return;
        } else if (a2 != 2) {
            if (a2 != 3) {
                return;
            }
            ImageView imageView3 = this.f6679c;
            if (imageView3 != null) {
                imageView3.setVisibility(0);
                this.f6679c.bringToFront();
            }
            if (this.q) {
                this.f6681e.setVisibility(0);
                this.f6681e.bringToFront();
                this.f6684h.setVisibility(4);
                this.f6680d.setVisibility(4);
                this.f6682f.setVisibility(4);
            }
            return;
        } else {
            ImageView imageView4 = this.f6679c;
            if (imageView4 != null) {
                imageView4.setVisibility(0);
                this.f6679c.bringToFront();
            }
            if (!this.q) {
                return;
            }
            this.f6680d.setVisibility(0);
            this.f6680d.bringToFront();
            this.f6684h.setVisibility(4);
        }
        this.f6681e.setVisibility(4);
        this.f6682f.setVisibility(4);
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        l2 l2Var;
        List<String> list;
        if (!this.k) {
            TrackingEvent trackingEvent = TrackingEvent.complete;
            VastRequest vastRequest = this.t;
            if (vastRequest != null && vastRequest.getVastAd() != null && (list = this.t.getVastAd().getTrackingEventListMap().get(trackingEvent)) != null) {
                for (String str : list) {
                    n5.a(str, com.appodeal.ads.utils.s.f7824e);
                }
            }
            if (trackingEvent == TrackingEvent.complete && (l2Var = this.f6677a) != null) {
                l2Var.g();
            }
            this.k = true;
            Log.log(x, "Video", "finished");
        }
        Timer timer = this.i;
        if (timer != null) {
            timer.cancel();
            this.i = null;
        }
        d();
        if (c()) {
            this.f6683g.seekTo(0);
        }
        this.s = true;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Log.log(x, LogConstants.EVENT_MV_PLAYER_ERROR, String.format("what: %s, extra: %s", Integer.valueOf(i), Integer.valueOf(i2)));
        a();
        return true;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(size, measuredWidth) : measuredWidth;
        }
        int i3 = (int) (size * 0.5625f);
        if (mode2 != 1073741824 || size2 >= i3) {
            size2 = i3;
        } else {
            size = (int) (size2 * 1.7777778f);
        }
        if (Math.abs(size2 - measuredHeight) >= 2 || Math.abs(size - measuredWidth) >= 2) {
            getLayoutParams().width = size;
            getLayoutParams().height = size2;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        Log.log(x, LogConstants.EVENT_MV_PLAYER, "prepared");
        this.m = true;
        if (Native.f6382b != Native.NativeAdType.NoVideo) {
            if (this.p) {
                f();
                return;
            }
            this.w = 4;
            h();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        try {
            if (Native.f6382b == Native.NativeAdType.NoVideo) {
                return;
            }
            if (this.f6683g == null) {
                b();
            }
            this.f6683g.setSurface(new Surface(surfaceTexture));
            e();
        } catch (Exception e2) {
            Log.log(e2);
            this.w = 1;
            h();
            this.q = false;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        if (i == 0 || i2 == 0) {
            Log.log(x, "Video", "onVideoSizeChanged - skip: width or height is 0");
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f6684h.getLayoutParams();
        int width = getWidth();
        int height = getHeight();
        if (i > i2) {
            layoutParams.width = width;
            layoutParams.height = (width * i2) / i;
        } else {
            layoutParams.width = (i * height) / i2;
            layoutParams.height = height;
        }
        this.f6684h.setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        if (Native.f6382b != Native.NativeAdType.NoVideo) {
            if (i != 0) {
                d();
            } else if (this.p) {
                f();
            }
        }
        super.onWindowVisibilityChanged(i);
    }

    public void setNativeAd(l2 l2Var) {
        Runnable nVar;
        l2 l2Var2;
        this.f6677a = l2Var;
        if (Native.f6382b != Native.NativeAdType.NoVideo && ((l2Var.e() != null && !l2Var.e().isEmpty()) || (l2Var.d() != null && !l2Var.d().isEmpty()))) {
            this.q = true;
            if (l2Var.c() != null) {
                this.t = l2Var.c();
            }
        }
        if (!this.f6678b) {
            this.f6678b = true;
            this.f6679c = new ImageView(getContext());
            this.f6679c.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f6679c.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.f6679c.setAdjustViewBounds(true);
            addView(this.f6679c);
            if (this.q) {
                int round = Math.round(f1.l(getContext()) * 50.0f);
                this.f6680d = new ProgressBar(getContext(), null, 16842874);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(round, round);
                layoutParams.addRule(13, -1);
                this.f6680d.setLayoutParams(layoutParams);
                this.f6680d.setBackgroundColor(Color.parseColor("#6b000000"));
                addView(this.f6680d);
                ImageView imageView = new ImageView(getContext());
                this.f6681e = imageView;
                imageView.setImageResource(17301540);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(round, round);
                layoutParams2.addRule(13, -1);
                this.f6681e.setLayoutParams(layoutParams2);
                this.f6681e.setBackgroundColor(Color.parseColor("#6b000000"));
                this.f6681e.setOnClickListener(new a2(this));
                addView(this.f6681e);
                TextureView textureView = new TextureView(getContext());
                this.f6684h = textureView;
                textureView.setSurfaceTextureListener(this);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams3.addRule(13);
                this.f6684h.setLayoutParams(layoutParams3);
                this.f6684h.setOnClickListener(new b2(this));
                addView(this.f6684h);
                CircleCountdownView circleCountdownView = new CircleCountdownView(getContext());
                this.f6682f = circleCountdownView;
                circleCountdownView.setColors(Assets.mainAssetsColor, Assets.backgroundColor);
                int a2 = f1.a(getContext(), 8.0f);
                this.f6682f.setPadding(a2, a2, a2, a2);
                int a3 = f1.a(getContext(), 40.0f);
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(a3, a3);
                layoutParams4.addRule(9);
                layoutParams4.addRule(10);
                this.f6682f.setLayoutParams(layoutParams4);
                g();
                this.f6682f.setOnClickListener(new e2(this));
                addView(this.f6682f);
                b();
                if (Native.f6382b != Native.NativeAdType.Video || (l2Var2 = this.f6677a) == null || l2Var2.b() == null || !new File(this.f6677a.b().getPath()).exists()) {
                    this.w = 3;
                    h();
                    if (this.f6677a.e() != null && !this.f6677a.e().isEmpty()) {
                        nVar = new com.appodeal.ads.utils.m(getContext(), new c2(this), this.f6677a.e());
                    } else if (this.f6677a.d() != null && !this.f6677a.d().isEmpty()) {
                        nVar = new com.appodeal.ads.utils.n(getContext(), new d2(this), this.f6677a.d());
                    }
                    com.appodeal.ads.utils.s.f7824e.f7825a.execute(nVar);
                } else {
                    this.p = Native.f6385e;
                }
            } else {
                this.w = 1;
                h();
                this.f6679c.bringToFront();
            }
        }
        l2 l2Var3 = this.f6677a;
        if (l2Var3 != null) {
            l2.a(this.f6679c, l2Var3.l, l2Var3.m);
        }
    }

    public final void b() {
        MediaPlayer mediaPlayer;
        float f2;
        MediaPlayer mediaPlayer2 = new MediaPlayer();
        this.f6683g = mediaPlayer2;
        mediaPlayer2.setOnCompletionListener(this);
        this.f6683g.setOnErrorListener(this);
        this.f6683g.setOnPreparedListener(this);
        this.f6683g.setOnVideoSizeChangedListener(this);
        this.f6683g.setAudioStreamType(3);
        if (c()) {
            if (this.l) {
                mediaPlayer = this.f6683g;
                f2 = 0.0f;
            } else {
                mediaPlayer = this.f6683g;
                f2 = 1.0f;
            }
            mediaPlayer.setVolume(f2, f2);
        }
    }

    public final void a() {
        this.p = false;
        if (this.f6683g != null) {
            try {
                if (!this.r) {
                    if (this.f6683g.isPlaying()) {
                        this.f6683g.stop();
                    }
                    this.f6683g.reset();
                }
                this.f6683g.setOnCompletionListener(null);
                this.f6683g.setOnErrorListener(null);
                this.f6683g.setOnPreparedListener(null);
                this.f6683g.setOnVideoSizeChangedListener(null);
                this.f6683g.release();
            } catch (Exception e2) {
                Log.log(e2);
            }
            this.f6683g = null;
        }
        this.w = 1;
        h();
        Timer timer = this.i;
        if (timer != null) {
            timer.cancel();
            this.i = null;
        }
        this.r = true;
        this.q = false;
        VastRequest vastRequest = this.t;
        if (vastRequest != null) {
            vastRequest.sendError(405);
        }
    }

    public final void a(int i, boolean z) {
        l2 l2Var;
        List<String> list;
        Log.log(x, LogConstants.EVENT_MV_STATE, String.format("videoPlayerActivityClosed, position: %s, finished: %s", Integer.valueOf(i), Boolean.valueOf(z)));
        try {
            if (z) {
                if (!this.k) {
                    TrackingEvent trackingEvent = TrackingEvent.complete;
                    VastRequest vastRequest = this.t;
                    if (vastRequest != null && vastRequest.getVastAd() != null && (list = this.t.getVastAd().getTrackingEventListMap().get(trackingEvent)) != null) {
                        for (String str : list) {
                            n5.a(str, com.appodeal.ads.utils.s.f7824e);
                        }
                    }
                    if (trackingEvent == TrackingEvent.complete && (l2Var = this.f6677a) != null) {
                        l2Var.g();
                    }
                    this.k = true;
                    Log.log(x, "Video", "finished");
                }
                Timer timer = this.i;
                if (timer != null) {
                    timer.cancel();
                    this.i = null;
                }
                d();
                if (c()) {
                    this.f6683g.seekTo(0);
                }
                this.s = true;
            } else if (c()) {
                this.f6683g.seekTo(i);
            }
        } catch (Exception e2) {
            Log.log(e2);
        }
        y = null;
    }
}
