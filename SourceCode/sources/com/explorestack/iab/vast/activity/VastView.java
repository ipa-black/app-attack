package com.explorestack.iab.vast.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.explorestack.iab.CacheControl;
import com.explorestack.iab.measurer.VastAdMeasurer;
import com.explorestack.iab.mraid.MraidInterstitial;
import com.explorestack.iab.mraid.MraidInterstitialListener;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.utils.IabElementStyle;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastPlaybackListener;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VideoType;
import com.explorestack.iab.vast.b;
import com.explorestack.iab.vast.processor.VastAd;
import com.explorestack.iab.vast.tags.AppodealExtensionTag;
import com.explorestack.iab.vast.tags.CompanionTag;
import com.explorestack.iab.vast.tags.PostBannerTag;
import com.explorestack.iab.view.a;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public class VastView extends RelativeLayout implements IabClickCallback {
    public int A;
    public int B;
    public int C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public final List<View> N;
    public final List<com.explorestack.iab.utils.g<? extends View>> O;
    public final Runnable P;
    public final Runnable Q;
    public final b0 R;
    public final b0 S;
    public final LinkedList<Integer> T;
    public int U;
    public float V;
    public final b0 W;

    /* renamed from: a  reason: collision with root package name */
    public final String f9512a;
    public final TextureView.SurfaceTextureListener a0;

    /* renamed from: b  reason: collision with root package name */
    public com.explorestack.iab.vast.view.a f9513b;
    public final MediaPlayer.OnCompletionListener b0;

    /* renamed from: c  reason: collision with root package name */
    public FrameLayout f9514c;
    public final MediaPlayer.OnErrorListener c0;

    /* renamed from: d  reason: collision with root package name */
    public Surface f9515d;
    public final MediaPlayer.OnPreparedListener d0;

    /* renamed from: e  reason: collision with root package name */
    public FrameLayout f9516e;
    public final MediaPlayer.OnVideoSizeChangedListener e0;

    /* renamed from: f  reason: collision with root package name */
    public com.explorestack.iab.view.a f9517f;
    public b.InterfaceC0261b f0;

    /* renamed from: g  reason: collision with root package name */
    public com.explorestack.iab.utils.d f9518g;
    public final View.OnTouchListener g0;

    /* renamed from: h  reason: collision with root package name */
    public com.explorestack.iab.utils.e f9519h;
    public final WebChromeClient h0;
    public com.explorestack.iab.utils.k i;
    public final WebViewClient i0;
    public com.explorestack.iab.utils.i j;
    public com.explorestack.iab.utils.h k;
    public com.explorestack.iab.utils.j l;
    public com.explorestack.iab.utils.f m;
    public MediaPlayer n;
    public View o;
    public CompanionTag p;
    public CompanionTag q;
    public ImageView r;
    public MraidInterstitial s;
    public VastRequest t;
    public c0 u;
    public VastViewListener v;
    public VastPlaybackListener w;
    public VastAdMeasurer x;
    public z y;
    public int z;

    /* loaded from: classes2.dex */
    public interface VastViewListener {
        void onClick(VastView vastView, VastRequest vastRequest, IabClickCallback iabClickCallback, String str);

        void onComplete(VastView vastView, VastRequest vastRequest);

        void onError(VastView vastView, VastRequest vastRequest, int i);

        void onFinish(VastView vastView, VastRequest vastRequest, boolean z);

        void onOrientationRequested(VastView vastView, VastRequest vastRequest, int i);

        void onShown(VastView vastView, VastRequest vastRequest);
    }

    /* loaded from: classes2.dex */
    public class a extends z {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ WeakReference f9520f;

        /* renamed from: com.explorestack.iab.vast.activity.VastView$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC0260a implements View.OnClickListener {
            public View$OnClickListenerC0260a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VastView.this.j();
                VastView.this.e();
            }
        }

        /* loaded from: classes2.dex */
        public class b extends AnimatorListenerAdapter {
            public b() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                VastView.this.f9514c.setVisibility(8);
            }
        }

        /* loaded from: classes2.dex */
        public class c implements View.OnClickListener {
            public c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VastView.this.j();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, Uri uri, String str, WeakReference weakReference) {
            super(context, uri, str);
            this.f9520f = weakReference;
        }

        @Override // com.explorestack.iab.vast.activity.VastView.z
        public void a(Bitmap bitmap) {
            View.OnClickListener cVar;
            ImageView imageView = (ImageView) this.f9520f.get();
            if (imageView != null) {
                if (bitmap == null) {
                    cVar = new View$OnClickListenerC0260a();
                } else {
                    imageView.setImageBitmap(bitmap);
                    imageView.setAlpha(0.0f);
                    imageView.animate().alpha(1.0f).setDuration(100L).setListener(new b()).start();
                    cVar = new c();
                }
                imageView.setOnClickListener(cVar);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class a0 extends View.BaseSavedState {
        public static final Parcelable.Creator<a0> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        public c0 f9525a;

        /* loaded from: classes2.dex */
        public class a implements Parcelable.Creator<a0> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public a0 createFromParcel(Parcel parcel) {
                return new a0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public a0[] newArray(int i) {
                return new a0[i];
            }
        }

        public a0(Parcel parcel) {
            super(parcel);
            this.f9525a = (c0) parcel.readParcelable(c0.class.getClassLoader());
        }

        public a0(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f9525a, 0);
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VastView.this.isPlaybackStarted()) {
                VastView.this.d();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b0 {
        void a(int i, int i2, float f2);
    }

    /* loaded from: classes2.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (VastView.this.isPlaybackStarted() && VastView.this.n.isPlaying()) {
                    int duration = VastView.this.n.getDuration();
                    int currentPosition = VastView.this.n.getCurrentPosition();
                    if (currentPosition > 0) {
                        float f2 = (currentPosition * 100.0f) / duration;
                        VastView.this.R.a(duration, currentPosition, f2);
                        VastView.this.S.a(duration, currentPosition, f2);
                        VastView.this.W.a(duration, currentPosition, f2);
                        if (f2 > 105.0f) {
                            VastLog.a(VastView.this.f9512a, "Playback tracking: video hang detected");
                            VastView.this.h();
                        }
                    }
                }
            } catch (Exception e2) {
                VastLog.a(VastView.this.f9512a, "Playback tracking exception: " + e2.getMessage());
            }
            VastView.this.postDelayed(this, 16L);
        }
    }

    /* loaded from: classes2.dex */
    public static class c0 implements Parcelable {
        public static final Parcelable.Creator<c0> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        public String f9528a;

        /* renamed from: b  reason: collision with root package name */
        public float f9529b;

        /* renamed from: c  reason: collision with root package name */
        public int f9530c;

        /* renamed from: d  reason: collision with root package name */
        public int f9531d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f9532e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f9533f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f9534g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f9535h;
        public boolean i;
        public boolean j;
        public boolean k;
        public boolean l;
        public boolean m;
        public boolean n;

        /* loaded from: classes2.dex */
        public class a implements Parcelable.Creator<c0> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public c0 createFromParcel(Parcel parcel) {
                return new c0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public c0[] newArray(int i) {
                return new c0[i];
            }
        }

        public c0() {
            this.f9528a = null;
            this.f9529b = 5.0f;
            this.f9530c = 0;
            this.f9531d = 0;
            this.f9532e = true;
            this.f9533f = false;
            this.f9534g = false;
            this.f9535h = false;
            this.i = false;
            this.j = false;
            this.k = false;
            this.l = false;
            this.m = true;
            this.n = false;
        }

        public c0(Parcel parcel) {
            this.f9528a = null;
            this.f9529b = 5.0f;
            this.f9530c = 0;
            this.f9531d = 0;
            this.f9532e = true;
            this.f9533f = false;
            this.f9534g = false;
            this.f9535h = false;
            this.i = false;
            this.j = false;
            this.k = false;
            this.l = false;
            this.m = true;
            this.n = false;
            this.f9528a = parcel.readString();
            this.f9529b = parcel.readFloat();
            this.f9530c = parcel.readInt();
            this.f9531d = parcel.readInt();
            this.f9532e = parcel.readByte() != 0;
            this.f9533f = parcel.readByte() != 0;
            this.f9534g = parcel.readByte() != 0;
            this.f9535h = parcel.readByte() != 0;
            this.i = parcel.readByte() != 0;
            this.j = parcel.readByte() != 0;
            this.k = parcel.readByte() != 0;
            this.l = parcel.readByte() != 0;
            this.m = parcel.readByte() != 0;
            this.n = parcel.readByte() != 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f9528a);
            parcel.writeFloat(this.f9529b);
            parcel.writeInt(this.f9530c);
            parcel.writeInt(this.f9531d);
            parcel.writeByte(this.f9532e ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f9533f ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f9534g ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f9535h ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.m ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.n ? (byte) 1 : (byte) 0);
        }
    }

    /* loaded from: classes2.dex */
    public class d implements b0 {
        public d() {
        }

        @Override // com.explorestack.iab.vast.activity.VastView.b0
        public void a(int i, int i2, float f2) {
            com.explorestack.iab.utils.e eVar;
            VastView vastView = VastView.this;
            c0 c0Var = vastView.u;
            if (c0Var.i || c0Var.f9529b == 0.0f || vastView.t.getVideoType() != VideoType.NonRewarded) {
                return;
            }
            VastView vastView2 = VastView.this;
            float f3 = vastView2.u.f9529b * 1000.0f;
            float f4 = i2;
            float f5 = f3 - f4;
            int i3 = (int) ((f4 * 100.0f) / f3);
            VastLog.d(vastView2.f9512a, "Skip percent: " + i3);
            if (i3 < 100 && (eVar = VastView.this.f9519h) != null) {
                eVar.a(i3, (int) Math.ceil(f5 / 1000.0d));
            }
            if (f5 <= 0.0f) {
                VastView vastView3 = VastView.this;
                c0 c0Var2 = vastView3.u;
                c0Var2.f9529b = 0.0f;
                c0Var2.i = true;
                vastView3.setCloseControlsVisible(true);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class e implements b0 {
        public e() {
        }

        @Override // com.explorestack.iab.vast.activity.VastView.b0
        public void a(int i, int i2, float f2) {
            VastView vastView = VastView.this;
            c0 c0Var = vastView.u;
            if (c0Var.f9535h && c0Var.f9530c == 3) {
                return;
            }
            if (vastView.t.getMaxDurationMillis() > 0 && i2 > VastView.this.t.getMaxDurationMillis() && VastView.this.t.getVideoType() == VideoType.Rewarded) {
                VastView vastView2 = VastView.this;
                vastView2.u.i = true;
                vastView2.setCloseControlsVisible(true);
            }
            VastView vastView3 = VastView.this;
            int i3 = vastView3.u.f9530c;
            if (f2 > i3 * 25.0f) {
                if (i3 == 3) {
                    VastLog.d(vastView3.f9512a, "Video at third quartile: (" + f2 + "%)");
                    VastView.this.c(TrackingEvent.thirdQuartile);
                    if (VastView.this.w != null) {
                        VastView.this.w.onVideoThirdQuartile();
                    }
                } else if (i3 == 0) {
                    VastLog.d(vastView3.f9512a, "Video at start: (" + f2 + "%)");
                    VastView.this.c(TrackingEvent.start);
                    if (VastView.this.w != null) {
                        VastView.this.w.onVideoStarted(i, VastView.this.u.f9533f ? 0.0f : 1.0f);
                    }
                } else if (i3 == 1) {
                    VastLog.d(vastView3.f9512a, "Video at first quartile: (" + f2 + "%)");
                    VastView.this.c(TrackingEvent.firstQuartile);
                    if (VastView.this.w != null) {
                        VastView.this.w.onVideoFirstQuartile();
                    }
                } else if (i3 == 2) {
                    VastLog.d(vastView3.f9512a, "Video at midpoint: (" + f2 + "%)");
                    VastView.this.c(TrackingEvent.midpoint);
                    if (VastView.this.w != null) {
                        VastView.this.w.onVideoMidpoint();
                    }
                }
                VastView.this.u.f9530c++;
            }
        }
    }

    /* loaded from: classes2.dex */
    public class f implements b0 {
        public f() {
        }

        @Override // com.explorestack.iab.vast.activity.VastView.b0
        public void a(int i, int i2, float f2) {
            if (VastView.this.T.size() == 2 && ((Integer) VastView.this.T.getFirst()).intValue() > ((Integer) VastView.this.T.getLast()).intValue()) {
                VastLog.a(VastView.this.f9512a, "Playing progressing error: seek");
                VastView.this.T.removeFirst();
            }
            if (VastView.this.T.size() == 19) {
                int intValue = ((Integer) VastView.this.T.getFirst()).intValue();
                int intValue2 = ((Integer) VastView.this.T.getLast()).intValue();
                VastLog.d(VastView.this.f9512a, String.format(Locale.ENGLISH, "Playing progressing position: last=%d, first=%d)", Integer.valueOf(intValue2), Integer.valueOf(intValue)));
                if (intValue2 > intValue) {
                    VastView.this.T.removeFirst();
                } else {
                    VastView.l(VastView.this);
                    if (VastView.this.U >= 3) {
                        VastLog.a(VastView.this.f9512a, "Playing progressing error: video hang detected");
                        VastView.this.k();
                        return;
                    }
                }
            }
            try {
                VastView.this.T.addLast(Integer.valueOf(i2));
                if (i == 0 || i2 <= 0) {
                    return;
                }
                VastView vastView = VastView.this;
                if (vastView.l != null) {
                    VastLog.d(vastView.f9512a, "Playing progressing percent: " + f2);
                    if (VastView.this.V < f2) {
                        VastView.this.V = f2;
                        int i3 = i / 1000;
                        VastView.this.l.a(f2, Math.min(i3, (int) Math.ceil(i2 / 1000.0f)), i3);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public class g implements TextureView.SurfaceTextureListener {
        public g() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            VastLog.d(VastView.this.f9512a, "onSurfaceTextureAvailable");
            VastView.this.f9515d = new Surface(surfaceTexture);
            VastView.this.F = true;
            if (VastView.this.G) {
                VastView.this.G = false;
                VastView.this.startPlayback("onSurfaceTextureAvailable");
            } else if (VastView.this.isPlaybackStarted()) {
                VastView vastView = VastView.this;
                vastView.n.setSurface(vastView.f9515d);
                VastView.this.t();
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            VastLog.d(VastView.this.f9512a, "onSurfaceTextureDestroyed");
            VastView vastView = VastView.this;
            vastView.f9515d = null;
            vastView.F = false;
            if (VastView.this.isPlaybackStarted()) {
                VastView.this.n.setSurface(null);
                VastView.this.n();
            }
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            VastLog.d(VastView.this.f9512a, "onSurfaceTextureSizeChanged: " + i + "/" + i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    /* loaded from: classes2.dex */
    public class h implements MediaPlayer.OnCompletionListener {
        public h() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            VastLog.d(VastView.this.f9512a, "MediaPlayer - onCompletion");
            VastView.this.h();
        }
    }

    /* loaded from: classes2.dex */
    public class i implements MediaPlayer.OnErrorListener {
        public i() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            VastLog.d(VastView.this.f9512a, "MediaPlayer - onError: what=" + i + ", extra=" + i2);
            VastView.this.k();
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public class j implements MediaPlayer.OnPreparedListener {
        public j() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            VastLog.d(VastView.this.f9512a, "MediaPlayer - onPrepared");
            VastView vastView = VastView.this;
            if (vastView.u.j) {
                return;
            }
            vastView.c(TrackingEvent.creativeView);
            VastView.this.c(TrackingEvent.fullscreen);
            VastView.this.A();
            VastView.this.setLoadingViewVisibility(false);
            VastView.this.I = true;
            if (!VastView.this.u.f9534g) {
                mediaPlayer.start();
                VastView.this.w();
            }
            VastView.this.z();
            int i = VastView.this.u.f9531d;
            if (i > 0) {
                mediaPlayer.seekTo(i);
                VastView.this.c(TrackingEvent.resume);
                if (VastView.this.w != null) {
                    VastView.this.w.onVideoResumed();
                }
            }
            VastView vastView2 = VastView.this;
            if (!vastView2.u.m) {
                vastView2.n();
            }
            VastView vastView3 = VastView.this;
            if (vastView3.u.k) {
                return;
            }
            vastView3.i();
            if (VastView.this.t.shouldPreloadCompanion()) {
                VastView.this.a(false);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class k implements View.OnClickListener {
        public k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VastView.this.isPlaybackStarted() || VastView.this.u.j) {
                VastView.this.v();
            }
        }
    }

    /* loaded from: classes2.dex */
    public class l implements MediaPlayer.OnVideoSizeChangedListener {
        public l() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            VastLog.d(VastView.this.f9512a, "onVideoSizeChanged");
            VastView.this.B = i;
            VastView.this.C = i2;
            VastView.this.d();
        }
    }

    /* loaded from: classes2.dex */
    public class m implements b.InterfaceC0261b {
        public m() {
        }

        @Override // com.explorestack.iab.vast.b.InterfaceC0261b
        public void a(boolean z) {
            VastView.this.B();
        }
    }

    /* loaded from: classes2.dex */
    public class n implements View.OnTouchListener {
        public n() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0 || action == 1) {
                VastView.this.N.add(view);
                if (view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public class o extends WebChromeClient {
        public o() {
        }

        public final boolean a(JsResult jsResult) {
            jsResult.cancel();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            VastLog.d("JS alert", str2);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            VastLog.d("JS confirm", str2);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            VastLog.d("JS prompt", str2);
            return a(jsPromptResult);
        }
    }

    /* loaded from: classes2.dex */
    public class p extends WebViewClient {
        public p() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            webView.setBackgroundColor(0);
            webView.setLayerType(1, null);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest.hasGesture()) {
                VastView.this.N.add(webView);
            }
            return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (VastView.this.N.contains(webView)) {
                VastLog.d(VastView.this.f9512a, "banner clicked");
                VastView vastView = VastView.this;
                vastView.a(vastView.p, str);
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public class q implements com.explorestack.iab.vast.d {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f9549a;

        public q(boolean z) {
            this.f9549a = z;
        }

        @Override // com.explorestack.iab.vast.d
        public void a(VastRequest vastRequest) {
            VastView vastView = VastView.this;
            vastView.a(vastView.v, vastRequest);
        }

        @Override // com.explorestack.iab.vast.d
        public void a(VastRequest vastRequest, VastAd vastAd) {
            VastView.this.a(vastRequest, vastAd, this.f9549a);
        }
    }

    /* loaded from: classes2.dex */
    public class r implements com.explorestack.iab.vast.d {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f9551a;

        public r(boolean z) {
            this.f9551a = z;
        }

        @Override // com.explorestack.iab.vast.d
        public void a(VastRequest vastRequest) {
            VastView vastView = VastView.this;
            vastView.a(vastView.v, vastRequest);
        }

        @Override // com.explorestack.iab.vast.d
        public void a(VastRequest vastRequest, VastAd vastAd) {
            VastView.this.a(vastRequest, vastAd, this.f9551a);
        }
    }

    /* loaded from: classes2.dex */
    public class s implements a.d {
        public s() {
        }

        @Override // com.explorestack.iab.view.a.d
        public void onCloseClick() {
            VastView vastView = VastView.this;
            vastView.a(vastView.v, VastView.this.t);
        }

        @Override // com.explorestack.iab.view.a.d
        public void onCountDownFinish() {
        }
    }

    /* loaded from: classes2.dex */
    public class t implements View.OnClickListener {
        public t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.j();
        }
    }

    /* loaded from: classes2.dex */
    public class u implements View.OnClickListener {
        public u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastRequest vastRequest = VastView.this.t;
            if (vastRequest != null && vastRequest.isR1()) {
                VastView vastView = VastView.this;
                if (!vastView.u.l && vastView.j()) {
                    return;
                }
            }
            if (VastView.this.H) {
                VastView.this.e();
            } else {
                VastView.this.handleBackPress();
            }
        }
    }

    /* loaded from: classes2.dex */
    public class v implements View.OnClickListener {
        public v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.C();
        }
    }

    /* loaded from: classes2.dex */
    public class w implements View.OnClickListener {
        public w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.s();
        }
    }

    /* loaded from: classes2.dex */
    public class x implements View.OnClickListener {
        public x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.j();
        }
    }

    /* loaded from: classes2.dex */
    public final class y implements MraidInterstitialListener {
        private y() {
        }

        public /* synthetic */ y(VastView vastView, k kVar) {
            this();
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public void onClose(MraidInterstitial mraidInterstitial) {
            VastView.this.f();
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public void onError(MraidInterstitial mraidInterstitial, int i) {
            VastView.this.g();
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public void onLoaded(MraidInterstitial mraidInterstitial) {
            VastView vastView = VastView.this;
            if (vastView.u.j) {
                vastView.setLoadingViewVisibility(false);
                mraidInterstitial.showInView(VastView.this, false);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public void onOpenBrowser(MraidInterstitial mraidInterstitial, String str, IabClickCallback iabClickCallback) {
            iabClickCallback.clickHandled();
            VastView vastView = VastView.this;
            vastView.a(vastView.q, str);
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public void onPlayVideo(MraidInterstitial mraidInterstitial, String str) {
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public void onShown(MraidInterstitial mraidInterstitial) {
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class z extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public WeakReference<Context> f9560a;

        /* renamed from: b  reason: collision with root package name */
        public Uri f9561b;

        /* renamed from: c  reason: collision with root package name */
        public String f9562c;

        /* renamed from: d  reason: collision with root package name */
        public Bitmap f9563d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f9564e;

        /* loaded from: classes2.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                z zVar = z.this;
                zVar.a(zVar.f9563d);
            }
        }

        public z(Context context, Uri uri, String str) {
            this.f9560a = new WeakReference<>(context);
            this.f9561b = uri;
            this.f9562c = str;
            if (str == null && (uri == null || TextUtils.isEmpty(uri.getPath()) || !new File(uri.getPath()).exists())) {
                a((Bitmap) null);
            } else {
                start();
            }
        }

        public void a() {
            this.f9564e = true;
        }

        public abstract void a(Bitmap bitmap);

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Context context = this.f9560a.get();
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            if (context != null) {
                try {
                    Uri uri = this.f9561b;
                    if (uri != null) {
                        mediaMetadataRetriever.setDataSource(context, uri);
                    } else {
                        String str = this.f9562c;
                        if (str != null) {
                            mediaMetadataRetriever.setDataSource(str, new HashMap());
                        }
                    }
                    this.f9563d = mediaMetadataRetriever.getFrameAtTime((Long.parseLong(mediaMetadataRetriever.extractMetadata(9)) / 2) * 1000, 2);
                } catch (Exception e2) {
                    VastLog.a("MediaFrameRetriever", e2.getMessage());
                }
            }
            try {
                mediaMetadataRetriever.release();
            } catch (IOException e3) {
                VastLog.a("MediaFrameRetriever", e3.getMessage());
            }
            if (this.f9564e) {
                return;
            }
            Utils.onUiThread(new a());
        }
    }

    public VastView(Context context) {
        this(context, null);
    }

    public VastView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VastView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f9512a = "VASTView-" + Integer.toHexString(hashCode());
        this.u = new c0();
        this.z = 0;
        this.A = 0;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = true;
        this.M = false;
        this.N = new ArrayList();
        this.O = new ArrayList();
        this.P = new b();
        this.Q = new c();
        this.R = new d();
        this.S = new e();
        this.T = new LinkedList<>();
        this.U = 0;
        this.V = 0.0f;
        this.W = new f();
        g gVar = new g();
        this.a0 = gVar;
        this.b0 = new h();
        this.c0 = new i();
        this.d0 = new j();
        this.e0 = new l();
        this.f0 = new m();
        this.g0 = new n();
        this.h0 = new o();
        this.i0 = new p();
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        setOnClickListener(new k());
        com.explorestack.iab.vast.view.a aVar = new com.explorestack.iab.vast.view.a(context);
        this.f9513b = aVar;
        aVar.setSurfaceTextureListener(gVar);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f9514c = frameLayout;
        frameLayout.addView(this.f9513b, new FrameLayout.LayoutParams(-1, -1, 17));
        addView(this.f9514c, new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.f9516e = frameLayout2;
        frameLayout2.setBackgroundColor(0);
        addView(this.f9516e, new ViewGroup.LayoutParams(-1, -1));
        com.explorestack.iab.view.a aVar2 = new com.explorestack.iab.view.a(getContext());
        this.f9517f = aVar2;
        aVar2.setBackgroundColor(0);
        addView(this.f9517f, new ViewGroup.LayoutParams(-1, -1));
    }

    private int getAvailableHeight() {
        return (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private int getAvailableWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public static /* synthetic */ int l(VastView vastView) {
        int i2 = vastView.U;
        vastView.U = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCloseControlsVisible(boolean z2) {
        this.K = z2;
        y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLoadingViewVisibility(boolean z2) {
        com.explorestack.iab.utils.h hVar = this.k;
        if (hVar == null) {
            return;
        }
        if (!z2) {
            hVar.a(8);
            return;
        }
        hVar.a(0);
        this.k.a();
    }

    private void setMute(boolean z2) {
        this.u.f9533f = z2;
        z();
        c(this.u.f9533f ? TrackingEvent.mute : TrackingEvent.unmute);
    }

    private void setPlaceholderViewVisible(boolean z2) {
        com.explorestack.iab.view.a aVar = this.f9517f;
        VastRequest vastRequest = this.t;
        aVar.setCloseVisibility(z2, vastRequest != null ? vastRequest.getPlaceholderTimeoutSec() : 3.0f);
    }

    public final void A() {
        if (isLoaded()) {
            v();
        }
    }

    public final void B() {
        if (!this.D || !com.explorestack.iab.vast.b.b(getContext())) {
            n();
        } else if (this.E) {
            this.E = false;
            startPlayback("onWindowFocusChanged");
        } else if (this.u.j) {
            setLoadingViewVisibility(false);
        } else {
            t();
        }
    }

    public final void C() {
        setMute(!this.u.f9533f);
    }

    public final View a(Context context, CompanionTag companionTag) {
        boolean isTablet = Utils.isTablet(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Utils.dpToPx(context, companionTag.getWidth() > 0 ? companionTag.getWidth() : isTablet ? 728.0f : 320.0f), Utils.dpToPx(context, companionTag.getHeight() > 0 ? companionTag.getHeight() : isTablet ? 90.0f : 50.0f));
        WebView webView = new WebView(context);
        webView.setId(Utils.generateViewId());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setScrollContainer(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setScrollBarStyle(33554432);
        webView.setFocusableInTouchMode(false);
        webView.setBackgroundColor(0);
        webView.setOnTouchListener(this.g0);
        webView.setWebViewClient(this.i0);
        webView.setWebChromeClient(this.h0);
        String html = companionTag.getHtml();
        if (html != null) {
            webView.loadDataWithBaseURL("", html, "text/html", "utf-8", null);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(Utils.generateViewId());
        frameLayout.setLayoutParams(layoutParams);
        frameLayout.addView(webView, new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    public final ImageView a(Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return imageView;
    }

    public final IabElementStyle a(com.explorestack.iab.vast.a aVar, IabElementStyle iabElementStyle) {
        if (aVar == null) {
            return null;
        }
        if (iabElementStyle == null) {
            IabElementStyle iabElementStyle2 = new IabElementStyle();
            iabElementStyle2.setStrokeColor(aVar.getAssetsColor());
            iabElementStyle2.setFillColor(aVar.getAssetsBackgroundColor());
            return iabElementStyle2;
        }
        if (!iabElementStyle.hasStrokeColor()) {
            iabElementStyle.setStrokeColor(aVar.getAssetsColor());
        }
        if (!iabElementStyle.hasFillColor()) {
            iabElementStyle.setFillColor(aVar.getAssetsBackgroundColor());
        }
        return iabElementStyle;
    }

    public final void a() {
        for (com.explorestack.iab.utils.g<? extends View> gVar : this.O) {
            gVar.b();
        }
    }

    public final void a(int i2) {
        VastRequest vastRequest;
        try {
            VastRequest vastRequest2 = this.t;
            if (vastRequest2 != null) {
                vastRequest2.sendError(i2);
            }
        } catch (Exception e2) {
            VastLog.a(this.f9512a, e2.getMessage());
        }
        VastViewListener vastViewListener = this.v;
        if (vastViewListener == null || (vastRequest = this.t) == null) {
            return;
        }
        vastViewListener.onError(this, vastRequest, i2);
    }

    public final void a(TrackingEvent trackingEvent) {
        VastLog.d(this.f9512a, String.format("Track Banner Event: %s", trackingEvent));
        CompanionTag companionTag = this.p;
        if (companionTag != null) {
            a(companionTag.getTrackingEventListMap(), trackingEvent);
        }
    }

    public final void a(VastRequest vastRequest, VastAd vastAd, boolean z2) {
        c0 c0Var;
        float f2;
        AppodealExtensionTag appodealExtension = vastAd.getAppodealExtension();
        this.z = vastRequest.getPreferredVideoOrientation();
        this.p = (appodealExtension == null || !appodealExtension.getCtaStyle().isVisible().booleanValue()) ? null : appodealExtension.getCompanionTag();
        if (this.p == null) {
            this.p = vastAd.getBanner(getContext());
        }
        i(appodealExtension);
        a(appodealExtension, this.o != null);
        a(appodealExtension);
        b(appodealExtension);
        e(appodealExtension);
        h(appodealExtension);
        g(appodealExtension);
        d(appodealExtension);
        c(appodealExtension);
        setLoadingViewVisibility(false);
        VastAdMeasurer vastAdMeasurer = this.x;
        if (vastAdMeasurer != null) {
            vastAdMeasurer.registerAdContainer(this);
            this.x.registerAdView(this.f9513b);
        }
        VastViewListener vastViewListener = this.v;
        if (vastViewListener != null) {
            vastViewListener.onOrientationRequested(this, vastRequest, this.u.j ? this.A : this.z);
        }
        if (!z2) {
            this.u.f9528a = vastRequest.getId();
            c0 c0Var2 = this.u;
            c0Var2.m = this.L;
            c0Var2.n = this.M;
            if (appodealExtension != null) {
                c0Var2.f9533f = appodealExtension.isMuted();
            }
            if (vastRequest.isForceUseNativeCloseTime() || vastAd.getSkipOffsetSec() <= 0) {
                if (vastRequest.getVideoCloseTime() >= 0.0f) {
                    c0Var = this.u;
                    f2 = vastRequest.getVideoCloseTime();
                } else {
                    c0Var = this.u;
                    f2 = 5.0f;
                }
                c0Var.f9529b = f2;
            } else {
                this.u.f9529b = vastAd.getSkipOffsetSec();
            }
            VastAdMeasurer vastAdMeasurer2 = this.x;
            if (vastAdMeasurer2 != null) {
                vastAdMeasurer2.onAdViewReady(this.f9513b);
            }
            VastViewListener vastViewListener2 = this.v;
            if (vastViewListener2 != null) {
                vastViewListener2.onShown(this, vastRequest);
            }
        }
        setCloseControlsVisible(vastRequest.getVideoType() != VideoType.Rewarded);
        startPlayback("load (restoring: " + z2 + ")");
    }

    public final void a(com.explorestack.iab.vast.a aVar) {
        if (aVar != null && !aVar.getCloseStyle().isVisible().booleanValue()) {
            com.explorestack.iab.utils.d dVar = this.f9518g;
            if (dVar != null) {
                dVar.c();
                return;
            }
            return;
        }
        if (this.f9518g == null) {
            com.explorestack.iab.utils.d dVar2 = new com.explorestack.iab.utils.d(new u());
            this.f9518g = dVar2;
            this.O.add(dVar2);
        }
        this.f9518g.a(getContext(), (ViewGroup) this.f9516e, a(aVar, aVar != null ? aVar.getCloseStyle() : null));
    }

    public final void a(com.explorestack.iab.vast.a aVar, boolean z2) {
        if (z2 || !(aVar == null || aVar.getCtaStyle().isVisible().booleanValue())) {
            com.explorestack.iab.utils.f fVar = this.m;
            if (fVar != null) {
                fVar.c();
                return;
            }
            return;
        }
        if (this.m == null) {
            com.explorestack.iab.utils.f fVar2 = new com.explorestack.iab.utils.f(new t());
            this.m = fVar2;
            this.O.add(fVar2);
        }
        this.m.a(getContext(), (ViewGroup) this.f9516e, a(aVar, aVar != null ? aVar.getCtaStyle() : null));
    }

    public final void a(VastViewListener vastViewListener, VastRequest vastRequest) {
        if (vastViewListener != null && vastRequest != null) {
            vastViewListener.onError(this, vastRequest, 3);
        }
        if (vastViewListener == null || vastRequest == null) {
            return;
        }
        vastViewListener.onFinish(this, vastRequest, false);
    }

    public final void a(List<String> list) {
        if (isLoaded()) {
            if (list == null || list.size() == 0) {
                VastLog.d(this.f9512a, "\turl list is null");
            } else {
                this.t.fireUrls(list, null);
            }
        }
    }

    public final void a(Map<TrackingEvent, List<String>> map, TrackingEvent trackingEvent) {
        if (map == null || map.size() <= 0) {
            VastLog.d(this.f9512a, String.format("Processing Event - fail: %s (tracking event map is null or empty)", trackingEvent));
        } else {
            a(map.get(trackingEvent));
        }
    }

    public final void a(boolean z2) {
        if (isLoaded()) {
            if (!z2) {
                CompanionTag companion = this.t.getVastAd().getCompanion(getAvailableWidth(), getAvailableHeight());
                if (this.q != companion) {
                    this.A = (companion == null || !this.t.shouldUseScreenSizeForCompanionOrientation()) ? this.z : Utils.orientationBySize(companion.getWidth(), companion.getHeight());
                    this.q = companion;
                    MraidInterstitial mraidInterstitial = this.s;
                    if (mraidInterstitial != null) {
                        mraidInterstitial.destroy();
                        this.s = null;
                    }
                }
            }
            if (this.q == null) {
                if (this.r == null) {
                    this.r = a(getContext());
                }
            } else if (this.s == null) {
                r();
                String htmlForMraid = this.q.getHtmlForMraid();
                if (htmlForMraid != null) {
                    AppodealExtensionTag appodealExtension = this.t.getVastAd().getAppodealExtension();
                    PostBannerTag postBannerTag = appodealExtension != null ? appodealExtension.getPostBannerTag() : null;
                    MraidInterstitial.Builder listener = MraidInterstitial.newBuilder().setBaseUrl(null).setCacheControl(CacheControl.FullLoad).setCloseTime(this.t.getCompanionCloseTime()).forceUseNativeCloseButton(this.t.isForceUseNativeCloseTime()).setIsTag(false).setListener(new y(this, null));
                    if (postBannerTag != null) {
                        listener.setCloseStyle(postBannerTag.getCloseStyle());
                        listener.setCountDownStyle(postBannerTag.getCountDownStyle());
                        listener.setLoadingStyle(postBannerTag.getLoadingStyle());
                        listener.setProgressStyle(postBannerTag.getProgressStyle());
                        listener.setDurationSec(postBannerTag.getDurationSec());
                        listener.setProductLink(postBannerTag.getProductLink());
                        if (postBannerTag.isForceUseNativeClose()) {
                            listener.forceUseNativeCloseButton(true);
                        }
                        listener.setR1(postBannerTag.isR1());
                        listener.setR2(postBannerTag.isR2());
                    }
                    try {
                        MraidInterstitial build = listener.build(getContext());
                        this.s = build;
                        build.load(htmlForMraid);
                        return;
                    } catch (Throwable unused) {
                    }
                }
                g();
            }
        }
    }

    public final boolean a(VastRequest vastRequest, Boolean bool, boolean z2) {
        String str;
        String str2;
        stopPlayback();
        if (!z2) {
            this.u = new c0();
        }
        if (Utils.isNetworkAvailable(getContext())) {
            if (bool != null) {
                this.u.f9532e = bool.booleanValue();
            }
            this.t = vastRequest;
            if (vastRequest == null) {
                e();
                str = this.f9512a;
                str2 = "VastRequest is null. Stop playing...";
            } else {
                VastAd vastAd = vastRequest.getVastAd();
                if (vastAd != null) {
                    if (vastRequest.getCacheControl() == CacheControl.PartialLoad && !isVideoFileLoaded()) {
                        vastRequest.setVastFileLoadedListener(new q(z2));
                        f(vastAd.getAppodealExtension());
                        setPlaceholderViewVisible(true);
                        setLoadingViewVisibility(true);
                    } else if (vastRequest.getCacheControl() != CacheControl.Stream || isVideoFileLoaded()) {
                        a(vastRequest, vastAd, z2);
                    } else {
                        vastRequest.setVastFileLoadedListener(new r(z2));
                        f(vastAd.getAppodealExtension());
                        setPlaceholderViewVisible(true);
                        setLoadingViewVisibility(true);
                        vastRequest.performCache(getContext().getApplicationContext(), null);
                    }
                    return true;
                }
                e();
                str = this.f9512a;
                str2 = "VastAd is null. Stop playing...";
            }
        } else {
            this.t = null;
            e();
            str = this.f9512a;
            str2 = "vastRequest.getVastAd() is null. Stop playing...";
        }
        VastLog.a(str, str2);
        return false;
    }

    public final boolean a(CompanionTag companionTag, String str) {
        VastRequest vastRequest = this.t;
        ArrayList arrayList = null;
        VastAd vastAd = vastRequest != null ? vastRequest.getVastAd() : null;
        ArrayList<String> wrapperCompanionClickTrackingUrlList = vastAd != null ? vastAd.getWrapperCompanionClickTrackingUrlList() : null;
        List<String> companionClickTrackingList = companionTag != null ? companionTag.getCompanionClickTrackingList() : null;
        if (wrapperCompanionClickTrackingUrlList != null || companionClickTrackingList != null) {
            arrayList = new ArrayList();
            if (companionClickTrackingList != null) {
                arrayList.addAll(companionClickTrackingList);
            }
            if (wrapperCompanionClickTrackingUrlList != null) {
                arrayList.addAll(wrapperCompanionClickTrackingUrlList);
            }
        }
        return a(arrayList, str);
    }

    public final boolean a(List<String> list, String str) {
        VastLog.d(this.f9512a, "processClickThroughEvent: " + str);
        this.u.l = true;
        if (str != null) {
            a(list);
            if (this.v != null && this.t != null) {
                n();
                setLoadingViewVisibility(true);
                this.v.onClick(this, this.t, this, str);
            }
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
        this.f9516e.bringToFront();
    }

    public final void b() {
        z zVar = this.y;
        if (zVar != null) {
            zVar.a();
            this.y = null;
        }
    }

    public final void b(TrackingEvent trackingEvent) {
        VastLog.d(this.f9512a, String.format("Track Companion Event: %s", trackingEvent));
        CompanionTag companionTag = this.q;
        if (companionTag != null) {
            a(companionTag.getTrackingEventListMap(), trackingEvent);
        }
    }

    public final void b(com.explorestack.iab.vast.a aVar) {
        if (aVar != null && !aVar.getCountDownStyle().isVisible().booleanValue()) {
            com.explorestack.iab.utils.e eVar = this.f9519h;
            if (eVar != null) {
                eVar.c();
                return;
            }
            return;
        }
        if (this.f9519h == null) {
            com.explorestack.iab.utils.e eVar2 = new com.explorestack.iab.utils.e(null);
            this.f9519h = eVar2;
            this.O.add(eVar2);
        }
        this.f9519h.a(getContext(), (ViewGroup) this.f9516e, a(aVar, aVar != null ? aVar.getCountDownStyle() : null));
    }

    public final void b(boolean z2) {
        VastViewListener vastViewListener;
        if (!isLoaded() || this.H) {
            return;
        }
        this.H = true;
        this.u.j = true;
        int i2 = getResources().getConfiguration().orientation;
        int i3 = this.A;
        if (i2 != i3 && (vastViewListener = this.v) != null) {
            vastViewListener.onOrientationRequested(this, this.t, i3);
        }
        com.explorestack.iab.utils.j jVar = this.l;
        if (jVar != null) {
            jVar.c();
        }
        com.explorestack.iab.utils.i iVar = this.j;
        if (iVar != null) {
            iVar.c();
        }
        com.explorestack.iab.utils.k kVar = this.i;
        if (kVar != null) {
            kVar.c();
        }
        a();
        if (this.u.n) {
            if (this.r == null) {
                this.r = a(getContext());
            }
            this.r.setImageBitmap(this.f9513b.getBitmap());
            addView(this.r, new FrameLayout.LayoutParams(-1, -1));
            this.f9516e.bringToFront();
            return;
        }
        a(z2);
        if (this.q == null) {
            setCloseControlsVisible(true);
            if (this.r != null) {
                this.y = new a(getContext(), this.t.getFileUri(), this.t.getVastAd().getPickedMediaFileTag().getText(), new WeakReference(this.r));
            }
            addView(this.r, new FrameLayout.LayoutParams(-1, -1));
        } else {
            setCloseControlsVisible(false);
            this.f9514c.setVisibility(8);
            q();
            com.explorestack.iab.utils.f fVar = this.m;
            if (fVar != null) {
                fVar.a(8);
            }
            MraidInterstitial mraidInterstitial = this.s;
            if (mraidInterstitial == null) {
                setLoadingViewVisibility(false);
                g();
            } else if (mraidInterstitial.isReady()) {
                setLoadingViewVisibility(false);
                this.s.showInView(this, false);
            } else {
                setLoadingViewVisibility(true);
            }
        }
        stopPlayback();
        this.f9516e.bringToFront();
        b(TrackingEvent.creativeView);
    }

    public final void c() {
        removeCallbacks(this.Q);
    }

    public final void c(TrackingEvent trackingEvent) {
        VastLog.d(this.f9512a, String.format("Track Event: %s", trackingEvent));
        VastRequest vastRequest = this.t;
        VastAd vastAd = vastRequest != null ? vastRequest.getVastAd() : null;
        if (vastAd != null) {
            a(vastAd.getTrackingEventListMap(), trackingEvent);
        }
    }

    public final void c(com.explorestack.iab.vast.a aVar) {
        if (aVar == null || !aVar.isVideoClickable()) {
            return;
        }
        this.O.clear();
    }

    @Override // com.explorestack.iab.utils.IabClickCallback
    public void clickHandleCanceled() {
        if (isCompanionShown()) {
            setLoadingViewVisibility(false);
        } else {
            t();
        }
    }

    @Override // com.explorestack.iab.utils.IabClickCallback
    public void clickHandleError() {
        if (isPlaybackStarted()) {
            t();
        } else if (isCompanionShown()) {
            f();
        } else {
            u();
        }
    }

    @Override // com.explorestack.iab.utils.IabClickCallback
    public void clickHandled() {
        if (isCompanionShown()) {
            setLoadingViewVisibility(false);
        } else if (this.D) {
            t();
        } else {
            n();
        }
    }

    public final void d() {
        int i2;
        int i3 = this.B;
        if (i3 == 0 || (i2 = this.C) == 0) {
            VastLog.d(this.f9512a, "configureVideoSurface - skip: videoWidth or videoHeight is 0");
        } else {
            this.f9513b.a(i3, i2);
        }
    }

    public final void d(com.explorestack.iab.vast.a aVar) {
        if (aVar == null || aVar.getLoadingStyle().isVisible().booleanValue()) {
            if (this.k == null) {
                this.k = new com.explorestack.iab.utils.h(null);
            }
            this.k.a(getContext(), (ViewGroup) this, a(aVar, aVar != null ? aVar.getLoadingStyle() : null));
            return;
        }
        com.explorestack.iab.utils.h hVar = this.k;
        if (hVar != null) {
            hVar.c();
        }
    }

    public void destroy() {
        MraidInterstitial mraidInterstitial = this.s;
        if (mraidInterstitial != null) {
            mraidInterstitial.destroy();
            this.s = null;
            this.q = null;
        }
    }

    public boolean display(VastRequest vastRequest, Boolean bool) {
        return a(vastRequest, bool, false);
    }

    public final void e() {
        VastRequest vastRequest;
        VastLog.a(this.f9512a, "handleClose");
        c(TrackingEvent.close);
        VastViewListener vastViewListener = this.v;
        if (vastViewListener == null || (vastRequest = this.t) == null) {
            return;
        }
        vastViewListener.onFinish(this, vastRequest, isFinished());
    }

    public final void e(com.explorestack.iab.vast.a aVar) {
        if (aVar != null && !aVar.getMuteStyle().isVisible().booleanValue()) {
            com.explorestack.iab.utils.i iVar = this.j;
            if (iVar != null) {
                iVar.c();
                return;
            }
            return;
        }
        if (this.j == null) {
            com.explorestack.iab.utils.i iVar2 = new com.explorestack.iab.utils.i(new v());
            this.j = iVar2;
            this.O.add(iVar2);
        }
        this.j.a(getContext(), (ViewGroup) this.f9516e, a(aVar, aVar != null ? aVar.getMuteStyle() : null));
    }

    public final void f() {
        VastRequest vastRequest;
        VastLog.a(this.f9512a, "handleCompanionClose");
        b(TrackingEvent.close);
        VastViewListener vastViewListener = this.v;
        if (vastViewListener == null || (vastRequest = this.t) == null) {
            return;
        }
        vastViewListener.onFinish(this, vastRequest, isFinished());
    }

    public final void f(com.explorestack.iab.vast.a aVar) {
        this.f9517f.setCountDownStyle(a(aVar, aVar != null ? aVar.getCountDownStyle() : null));
        if (isFullscreen()) {
            this.f9517f.setCloseStyle(a(aVar, aVar != null ? aVar.getCloseStyle() : null));
            this.f9517f.setCloseClickListener(new s());
        }
        d(aVar);
    }

    public final void g() {
        VastRequest vastRequest;
        VastLog.a(this.f9512a, "handleCompanionShowError");
        a(600);
        if (this.q != null) {
            m();
            b(true);
            return;
        }
        VastViewListener vastViewListener = this.v;
        if (vastViewListener == null || (vastRequest = this.t) == null) {
            return;
        }
        vastViewListener.onFinish(this, vastRequest, isFinished());
    }

    public final void g(com.explorestack.iab.vast.a aVar) {
        if (aVar != null && !aVar.getProgressStyle().isVisible().booleanValue()) {
            com.explorestack.iab.utils.j jVar = this.l;
            if (jVar != null) {
                jVar.c();
                return;
            }
            return;
        }
        if (this.l == null) {
            com.explorestack.iab.utils.j jVar2 = new com.explorestack.iab.utils.j(null);
            this.l = jVar2;
            this.O.add(jVar2);
        }
        this.l.a(getContext(), (ViewGroup) this.f9516e, a(aVar, aVar != null ? aVar.getProgressStyle() : null));
        this.l.a(0.0f, 0, 0);
    }

    public VastViewListener getListener() {
        return this.v;
    }

    public final void h() {
        VastLog.d(this.f9512a, "handleComplete");
        c0 c0Var = this.u;
        c0Var.i = true;
        if (!this.J && !c0Var.f9535h) {
            c0Var.f9535h = true;
            VastViewListener vastViewListener = this.v;
            if (vastViewListener != null) {
                vastViewListener.onComplete(this, this.t);
            }
            VastPlaybackListener vastPlaybackListener = this.w;
            if (vastPlaybackListener != null) {
                vastPlaybackListener.onVideoCompleted();
            }
            VastRequest vastRequest = this.t;
            if (vastRequest != null && vastRequest.isR2() && !this.u.l) {
                j();
            }
            c(TrackingEvent.complete);
        }
        if (this.u.f9535h) {
            l();
        }
    }

    public final void h(com.explorestack.iab.vast.a aVar) {
        if (aVar == null || !aVar.getRepeatStyle().isVisible().booleanValue()) {
            com.explorestack.iab.utils.k kVar = this.i;
            if (kVar != null) {
                kVar.c();
                return;
            }
            return;
        }
        if (this.i == null) {
            com.explorestack.iab.utils.k kVar2 = new com.explorestack.iab.utils.k(new w());
            this.i = kVar2;
            this.O.add(kVar2);
        }
        this.i.a(getContext(), (ViewGroup) this.f9516e, a(aVar, aVar.getRepeatStyle()));
    }

    public void handleBackPress() {
        if (this.f9517f.isVisible() && this.f9517f.canBeClosed()) {
            a(this.v, this.t);
        } else if (isSkipEnabled()) {
            if (!isCompanionShown()) {
                o();
                return;
            }
            VastRequest vastRequest = this.t;
            if (vastRequest == null || vastRequest.getVideoType() != VideoType.NonRewarded) {
                return;
            }
            if (this.q == null) {
                e();
                return;
            }
            MraidInterstitial mraidInterstitial = this.s;
            if (mraidInterstitial != null) {
                mraidInterstitial.dispatchClose();
            } else {
                f();
            }
        }
    }

    public final void i() {
        VastLog.d(this.f9512a, "handleImpressions");
        VastRequest vastRequest = this.t;
        if (vastRequest != null) {
            this.u.k = true;
            a(vastRequest.getVastAd().getImpressionUrlList());
        }
    }

    public final void i(com.explorestack.iab.vast.a aVar) {
        IabElementStyle iabElementStyle;
        IabElementStyle iabElementStyle2 = Assets.defVideoStyle;
        if (aVar != null) {
            iabElementStyle2 = iabElementStyle2.copyWith(aVar.getVideoStyle());
        }
        if (aVar == null || !aVar.isVideoClickable()) {
            this.f9514c.setOnClickListener(null);
            this.f9514c.setClickable(false);
        } else {
            this.f9514c.setOnClickListener(new x());
        }
        this.f9514c.setBackgroundColor(iabElementStyle2.getFillColor().intValue());
        q();
        if (this.p == null || this.u.j) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.f9514c.setLayoutParams(layoutParams);
            return;
        }
        this.o = a(getContext(), this.p);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(this.o.getLayoutParams());
        if ("inline".equals(iabElementStyle2.getStyle())) {
            iabElementStyle = Assets.defInlineBannerStyle;
            if (getResources().getConfiguration().orientation == 2) {
                layoutParams2.addRule(15);
                layoutParams3.height = -1;
                layoutParams3.addRule(10);
                layoutParams3.addRule(12);
                if (iabElementStyle2.getHorizontalPosition().intValue() == 3) {
                    layoutParams2.addRule(9);
                    layoutParams2.addRule(0, this.o.getId());
                    layoutParams3.addRule(11);
                } else {
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(1, this.o.getId());
                    layoutParams3.addRule(9);
                }
            } else {
                layoutParams2.addRule(14);
                layoutParams3.width = -1;
                layoutParams3.addRule(9);
                layoutParams3.addRule(11);
                if (iabElementStyle2.getVerticalPosition().intValue() == 48) {
                    layoutParams2.addRule(10);
                    layoutParams2.addRule(2, this.o.getId());
                    layoutParams3.addRule(12);
                } else {
                    layoutParams2.addRule(12);
                    layoutParams2.addRule(3, this.o.getId());
                    layoutParams3.addRule(10);
                }
            }
        } else {
            IabElementStyle iabElementStyle3 = Assets.defBannerStyle;
            layoutParams2.addRule(13);
            iabElementStyle = iabElementStyle3;
        }
        if (aVar != null) {
            iabElementStyle = iabElementStyle.copyWith(aVar.getCtaStyle());
        }
        iabElementStyle.applyPadding(getContext(), this.o);
        iabElementStyle.applyMargin(getContext(), layoutParams3);
        iabElementStyle.applyRelativeAlignment(layoutParams3);
        this.o.setBackgroundColor(iabElementStyle.getFillColor().intValue());
        iabElementStyle2.applyPadding(getContext(), this.f9514c);
        iabElementStyle2.applyMargin(getContext(), layoutParams2);
        this.f9514c.setLayoutParams(layoutParams2);
        addView(this.o, layoutParams3);
        a(TrackingEvent.creativeView);
    }

    public boolean isCompanionShown() {
        return this.u.j;
    }

    public boolean isFinished() {
        VastRequest vastRequest = this.t;
        return vastRequest != null && ((vastRequest.getCompanionCloseTime() == 0.0f && this.u.f9535h) || (this.t.getCompanionCloseTime() > 0.0f && this.u.j));
    }

    public boolean isFullscreen() {
        return this.u.f9532e;
    }

    public boolean isLoaded() {
        VastRequest vastRequest = this.t;
        return (vastRequest == null || vastRequest.getVastAd() == null) ? false : true;
    }

    public boolean isPlaybackStarted() {
        return this.n != null && this.I;
    }

    public boolean isSkipEnabled() {
        c0 c0Var = this.u;
        return c0Var.i || c0Var.f9529b == 0.0f;
    }

    public boolean isVideoFileLoaded() {
        VastRequest vastRequest = this.t;
        return vastRequest != null && vastRequest.checkFile();
    }

    public final boolean j() {
        VastLog.a(this.f9512a, "handleInfoClicked");
        VastRequest vastRequest = this.t;
        if (vastRequest != null) {
            return a(vastRequest.getVastAd().getClickTrackingUrlList(), this.t.getVastAd().getClickThroughUrl());
        }
        return false;
    }

    public final void k() {
        VastLog.a(this.f9512a, "handlePlaybackError");
        this.J = true;
        a(405);
        l();
    }

    public final void l() {
        VastLog.d(this.f9512a, "finishVideoPlaying");
        stopPlayback();
        VastRequest vastRequest = this.t;
        if (vastRequest == null || vastRequest.isAutoClose() || !(this.t.getVastAd().getAppodealExtension() == null || this.t.getVastAd().getAppodealExtension().getPostBannerTag().isVisible())) {
            e();
            return;
        }
        if (isSkipEnabled()) {
            c(TrackingEvent.close);
        }
        setLoadingViewVisibility(false);
        q();
        u();
    }

    public final void m() {
        if (this.r != null) {
            r();
        } else {
            MraidInterstitial mraidInterstitial = this.s;
            if (mraidInterstitial != null) {
                mraidInterstitial.destroy();
                this.s = null;
                this.q = null;
            }
        }
        this.H = false;
    }

    public void mute() {
        setMute(true);
    }

    public final void n() {
        if (!isPlaybackStarted() || this.u.f9534g) {
            return;
        }
        VastLog.d(this.f9512a, "pausePlayback");
        c0 c0Var = this.u;
        c0Var.f9534g = true;
        c0Var.f9531d = this.n.getCurrentPosition();
        this.n.pause();
        c();
        a();
        c(TrackingEvent.pause);
        VastPlaybackListener vastPlaybackListener = this.w;
        if (vastPlaybackListener != null) {
            vastPlaybackListener.onVideoPaused();
        }
    }

    public final void o() {
        VastLog.a(this.f9512a, "performVideoCloseClick");
        stopPlayback();
        if (this.J) {
            e();
            return;
        }
        if (!this.u.f9535h) {
            c(TrackingEvent.skip);
            VastPlaybackListener vastPlaybackListener = this.w;
            if (vastPlaybackListener != null) {
                vastPlaybackListener.onVideoSkipped();
            }
        }
        VastRequest vastRequest = this.t;
        if (vastRequest != null && vastRequest.getMaxDurationMillis() > 0 && this.t.getVideoType() == VideoType.Rewarded) {
            VastViewListener vastViewListener = this.v;
            if (vastViewListener != null) {
                vastViewListener.onComplete(this, this.t);
            }
            VastPlaybackListener vastPlaybackListener2 = this.w;
            if (vastPlaybackListener2 != null) {
                vastPlaybackListener2.onVideoCompleted();
            }
        }
        l();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.D) {
            startPlayback("onAttachedToWindow");
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (isLoaded()) {
            i(this.t.getVastAd().getAppodealExtension());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopPlayback();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a0 a0Var = (a0) parcelable;
        super.onRestoreInstanceState(a0Var.getSuperState());
        c0 c0Var = a0Var.f9525a;
        if (c0Var != null) {
            this.u = c0Var;
        }
        VastRequest a2 = com.explorestack.iab.vast.c.a(this.u.f9528a);
        if (a2 != null) {
            a(a2, (Boolean) null, true);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        if (isPlaybackStarted()) {
            this.u.f9531d = this.n.getCurrentPosition();
        }
        a0 a0Var = new a0(super.onSaveInstanceState());
        a0Var.f9525a = this.u;
        return a0Var;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        removeCallbacks(this.P);
        post(this.P);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        VastLog.d(this.f9512a, "onWindowFocusChanged: " + z2);
        this.D = z2;
        B();
    }

    public final void p() {
        try {
            if (!isLoaded() || this.u.j) {
                return;
            }
            if (this.n == null) {
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.n = mediaPlayer;
                mediaPlayer.setLooping(false);
                this.n.setAudioStreamType(3);
                this.n.setOnCompletionListener(this.b0);
                this.n.setOnErrorListener(this.c0);
                this.n.setOnPreparedListener(this.d0);
                this.n.setOnVideoSizeChangedListener(this.e0);
            }
            this.n.setSurface(this.f9515d);
            Uri fileUri = isVideoFileLoaded() ? this.t.getFileUri() : null;
            if (fileUri == null) {
                setLoadingViewVisibility(true);
                this.n.setDataSource(this.t.getVastAd().getPickedMediaFileTag().getText());
            } else {
                setLoadingViewVisibility(false);
                this.n.setDataSource(getContext(), fileUri);
            }
            this.n.prepareAsync();
        } catch (Exception e2) {
            VastLog.a(this.f9512a, e2.getMessage(), e2);
            k();
        }
    }

    public void pause() {
        setCanAutoResume(false);
        n();
    }

    public final void q() {
        View view = this.o;
        if (view != null) {
            Utils.removeFromParent(view);
            this.o = null;
        }
    }

    public final void r() {
        if (this.r != null) {
            b();
            removeView(this.r);
            this.r = null;
        }
    }

    public void resume() {
        setCanAutoResume(true);
        t();
    }

    public final void s() {
        if (isLoaded()) {
            c0 c0Var = this.u;
            c0Var.j = false;
            c0Var.f9531d = 0;
            m();
            i(this.t.getVastAd().getAppodealExtension());
            startPlayback("restartPlayback");
        }
    }

    public void setAdMeasurer(VastAdMeasurer vastAdMeasurer) {
        this.x = vastAdMeasurer;
    }

    public void setCanAutoResume(boolean z2) {
        this.L = z2;
        this.u.m = z2;
    }

    public void setCanIgnorePostBanner(boolean z2) {
        this.M = z2;
        this.u.n = z2;
    }

    public void setListener(VastViewListener vastViewListener) {
        this.v = vastViewListener;
    }

    public void setPlaybackListener(VastPlaybackListener vastPlaybackListener) {
        this.w = vastPlaybackListener;
    }

    public void startPlayback(String str) {
        VastLog.d(this.f9512a, "startPlayback: " + str);
        if (isLoaded()) {
            setPlaceholderViewVisible(false);
            if (this.u.j) {
                u();
            } else if (!this.D) {
                this.E = true;
            } else {
                if (this.F) {
                    stopPlayback();
                    m();
                    d();
                    p();
                    com.explorestack.iab.vast.b.a(this, this.f0);
                } else {
                    this.G = true;
                }
                if (this.f9514c.getVisibility() != 0) {
                    this.f9514c.setVisibility(0);
                }
            }
        }
    }

    public void stopPlayback() {
        this.u.f9534g = false;
        if (this.n != null) {
            VastLog.d(this.f9512a, "stopPlayback");
            if (this.n.isPlaying()) {
                this.n.stop();
            }
            this.n.release();
            this.n = null;
            this.I = false;
            this.J = false;
            c();
            com.explorestack.iab.vast.b.a(this);
        }
    }

    public final void t() {
        c0 c0Var = this.u;
        if (!c0Var.m) {
            if (isPlaybackStarted()) {
                this.n.start();
                this.n.pause();
                setLoadingViewVisibility(false);
            } else if (this.u.j) {
            } else {
                startPlayback("resumePlayback (canAutoResume: false)");
            }
        } else if (c0Var.f9534g && this.D) {
            VastLog.d(this.f9512a, "resumePlayback");
            this.u.f9534g = false;
            if (!isPlaybackStarted()) {
                if (this.u.j) {
                    return;
                }
                startPlayback("resumePlayback");
                return;
            }
            this.n.start();
            A();
            w();
            setLoadingViewVisibility(false);
            c(TrackingEvent.resume);
            VastPlaybackListener vastPlaybackListener = this.w;
            if (vastPlaybackListener != null) {
                vastPlaybackListener.onVideoResumed();
            }
        }
    }

    public final void u() {
        b(false);
    }

    public void unmute() {
        setMute(false);
    }

    public final void v() {
        for (com.explorestack.iab.utils.g<? extends View> gVar : this.O) {
            gVar.g();
        }
    }

    public final void w() {
        x();
        c();
        this.Q.run();
    }

    public final void x() {
        this.T.clear();
        this.U = 0;
        this.V = 0.0f;
    }

    public final void y() {
        boolean z2;
        boolean z3;
        if (this.K) {
            z2 = true;
            if (isSkipEnabled() || this.H) {
                z3 = false;
            } else {
                z3 = true;
                z2 = false;
            }
        } else {
            z3 = false;
            z2 = false;
        }
        com.explorestack.iab.utils.d dVar = this.f9518g;
        if (dVar != null) {
            dVar.a(z2 ? 0 : 8);
        }
        com.explorestack.iab.utils.e eVar = this.f9519h;
        if (eVar != null) {
            eVar.a(z3 ? 0 : 8);
        }
    }

    public final void z() {
        com.explorestack.iab.utils.i iVar;
        float f2;
        VastPlaybackListener vastPlaybackListener;
        if (!isPlaybackStarted() || (iVar = this.j) == null) {
            return;
        }
        iVar.a(this.u.f9533f);
        if (this.u.f9533f) {
            f2 = 0.0f;
            this.n.setVolume(0.0f, 0.0f);
            vastPlaybackListener = this.w;
            if (vastPlaybackListener == null) {
                return;
            }
        } else {
            f2 = 1.0f;
            this.n.setVolume(1.0f, 1.0f);
            vastPlaybackListener = this.w;
            if (vastPlaybackListener == null) {
                return;
            }
        }
        vastPlaybackListener.onVideoVolumeChanged(f2);
    }
}
