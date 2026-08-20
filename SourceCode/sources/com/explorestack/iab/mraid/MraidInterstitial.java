package com.explorestack.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.explorestack.iab.CacheControl;
import com.explorestack.iab.measurer.MraidAdMeasurer;
import com.explorestack.iab.mraid.MraidView;
import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.utils.IabElementStyle;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class MraidInterstitial {
    public static final String i = "MraidInterstitial";
    public static final AtomicInteger j = new AtomicInteger(0);
    public static final /* synthetic */ boolean k = true;

    /* renamed from: a  reason: collision with root package name */
    public MraidInterstitialListener f9274a;

    /* renamed from: b  reason: collision with root package name */
    public MraidView f9275b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9276c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9277d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9278e;
    public final int id = j.getAndIncrement();

    /* renamed from: f  reason: collision with root package name */
    public boolean f9279f = true;

    /* renamed from: g  reason: collision with root package name */
    public boolean f9280g = false;

    /* renamed from: h  reason: collision with root package name */
    public final MraidViewListener f9281h = new a();

    /* loaded from: classes2.dex */
    public class Builder {

        /* renamed from: a  reason: collision with root package name */
        public final MraidView.Builder f9282a = new MraidView.Builder(d.INTERSTITIAL);

        public Builder() {
        }

        public MraidInterstitial build(Context context) {
            this.f9282a.setListener(MraidInterstitial.this.f9281h);
            MraidInterstitial.this.f9275b = this.f9282a.build(context);
            return MraidInterstitial.this;
        }

        public Builder forceUseNativeCloseButton(boolean z) {
            this.f9282a.forceUseNativeCloseButton(z);
            return this;
        }

        public Builder setAdMeasurer(MraidAdMeasurer mraidAdMeasurer) {
            this.f9282a.setAdMeasurer(mraidAdMeasurer);
            return this;
        }

        public Builder setBaseUrl(String str) {
            this.f9282a.setBaseUrl(str);
            return this;
        }

        public Builder setCacheControl(CacheControl cacheControl) {
            this.f9282a.setCacheControl(cacheControl);
            return this;
        }

        public Builder setCloseStyle(IabElementStyle iabElementStyle) {
            this.f9282a.setCloseStyle(iabElementStyle);
            return this;
        }

        public Builder setCloseTime(float f2) {
            this.f9282a.setCloseTimeSec(f2);
            return this;
        }

        public Builder setCountDownStyle(IabElementStyle iabElementStyle) {
            this.f9282a.setCountDownStyle(iabElementStyle);
            return this;
        }

        public Builder setDurationSec(float f2) {
            this.f9282a.setDurationSec(f2);
            return this;
        }

        public Builder setIsTag(boolean z) {
            this.f9282a.setIsTag(z);
            return this;
        }

        public Builder setListener(MraidInterstitialListener mraidInterstitialListener) {
            MraidInterstitial.this.f9274a = mraidInterstitialListener;
            return this;
        }

        public Builder setLoadingStyle(IabElementStyle iabElementStyle) {
            this.f9282a.setLoadingStyle(iabElementStyle);
            return this;
        }

        public Builder setPageFinishedScript(String str) {
            this.f9282a.setPageFinishedScript(str);
            return this;
        }

        public Builder setPlaceholderTimeoutSec(float f2) {
            this.f9282a.setPlaceholderTimeoutSec(f2);
            return this;
        }

        public Builder setProductLink(String str) {
            this.f9282a.setProductLink(str);
            return this;
        }

        public Builder setProgressStyle(IabElementStyle iabElementStyle) {
            this.f9282a.setProgressStyle(iabElementStyle);
            return this;
        }

        public Builder setR1(boolean z) {
            this.f9282a.setR1(z);
            return this;
        }

        public Builder setR2(boolean z) {
            this.f9282a.setR2(z);
            return this;
        }

        public Builder setSupportedNativeFeatures(String[] strArr) {
            this.f9282a.setSupportedNativeFeatures(strArr);
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public class a implements MraidViewListener {
        public a() {
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public void onClose(MraidView mraidView) {
            MraidLog.d(MraidInterstitial.i, "ViewListener: onClose");
            MraidInterstitial.this.b();
            MraidInterstitial.this.c();
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public void onError(MraidView mraidView, int i) {
            MraidLog.d(MraidInterstitial.i, "ViewListener: onError (" + i + ")");
            MraidInterstitial.this.b();
            MraidInterstitial.this.a(i);
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public void onExpand(MraidView mraidView) {
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public void onLoaded(MraidView mraidView) {
            MraidLog.d(MraidInterstitial.i, "ViewListener: onLoaded");
            MraidInterstitial.this.f9276c = true;
            if (MraidInterstitial.this.f9274a != null) {
                MraidInterstitial.this.f9274a.onLoaded(MraidInterstitial.this);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public void onOpenBrowser(MraidView mraidView, String str, IabClickCallback iabClickCallback) {
            MraidLog.d(MraidInterstitial.i, "ViewListener: onOpenBrowser (" + str + ")");
            if (MraidInterstitial.this.f9274a != null) {
                MraidInterstitial.this.f9274a.onOpenBrowser(MraidInterstitial.this, str, iabClickCallback);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public void onPlayVideo(MraidView mraidView, String str) {
            MraidLog.d(MraidInterstitial.i, "ViewListener: onPlayVideo (" + str + ")");
            if (MraidInterstitial.this.f9274a != null) {
                MraidInterstitial.this.f9274a.onPlayVideo(MraidInterstitial.this, str);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public void onShown(MraidView mraidView) {
            MraidLog.d(MraidInterstitial.i, "ViewListener: onShown");
            if (MraidInterstitial.this.f9274a != null) {
                MraidInterstitial.this.f9274a.onShown(MraidInterstitial.this);
            }
        }
    }

    private MraidInterstitial() {
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public void a(int i2) {
        this.f9276c = false;
        this.f9278e = true;
        MraidInterstitialListener mraidInterstitialListener = this.f9274a;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onError(this, i2);
        }
        destroy();
    }

    public void a(Activity activity, ViewGroup viewGroup, boolean z, boolean z2) {
        if (!isReady()) {
            if (activity != null && z) {
                activity.finish();
                activity.overridePendingTransition(0, 0);
            }
            d();
            MraidLog.b(i, "Show failed: interstitial is not ready");
        } else if (!k && this.f9275b == null) {
            throw new AssertionError();
        } else {
            this.f9279f = z2;
            this.f9280g = z;
            viewGroup.addView(this.f9275b, new ViewGroup.LayoutParams(-1, -1));
            this.f9275b.show(activity);
        }
    }

    public void a(Activity activity, boolean z) {
        a(activity, (ViewGroup) activity.findViewById(16908290), true, z);
    }

    public final void b() {
        Activity peekActivity;
        if (!this.f9280g || (peekActivity = this.f9275b.peekActivity()) == null) {
            return;
        }
        peekActivity.finish();
        peekActivity.overridePendingTransition(0, 0);
    }

    public void c() {
        if (isClosed() || isReceivedError()) {
            return;
        }
        this.f9276c = false;
        this.f9277d = true;
        MraidInterstitialListener mraidInterstitialListener = this.f9274a;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onClose(this);
        }
        if (this.f9279f) {
            destroy();
        }
    }

    public boolean canBeClosed() {
        MraidView mraidView = this.f9275b;
        return mraidView == null || mraidView.canBeClosed() || isReceivedError();
    }

    public void d() {
        MraidInterstitialListener mraidInterstitialListener = this.f9274a;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onError(this, 1);
        }
    }

    public void destroy() {
        MraidLog.d(i, "destroy");
        this.f9276c = false;
        this.f9274a = null;
        MraidView mraidView = this.f9275b;
        if (mraidView != null) {
            mraidView.destroy();
            this.f9275b = null;
        }
    }

    public void dispatchClose() {
        if (this.f9275b == null || !canBeClosed()) {
            return;
        }
        this.f9275b.f();
    }

    public boolean isClosed() {
        return this.f9277d;
    }

    public boolean isReady() {
        return this.f9276c && this.f9275b != null;
    }

    public boolean isReceivedError() {
        return this.f9278e;
    }

    public void load(String str) {
        MraidView mraidView = this.f9275b;
        if (mraidView == null) {
            throw new IllegalStateException("MraidView not created (mraidView == null)");
        }
        mraidView.load(str);
    }

    public void show(Context context, MraidType mraidType) {
        MraidActivity.show(context, this, mraidType);
    }

    public void showInDialog(Context context, MraidType mraidType) {
        MraidDialogActivity.a(context, mraidType, this);
    }

    public void showInView(ViewGroup viewGroup, boolean z) {
        a(null, viewGroup, false, z);
    }
}
