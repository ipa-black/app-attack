package com.appodeal.ads;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.Native;
import com.appodeal.ads.h2;
import com.appodeal.ads.native_ad.views.NativeAdViewContentStream;
import com.appodeal.ads.o1;
import com.appodeal.ads.o4;
import com.appodeal.ads.q1;
import com.appodeal.ads.t0;
import com.appodeal.ads.w2;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class TestActivity extends Activity implements BannerCallbacks, MrecCallbacks, NativeCallbacks, RewardedVideoCallbacks, InterstitialCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public int f6395a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f6396b;

    /* renamed from: c  reason: collision with root package name */
    public ListView f6397c;

    /* renamed from: d  reason: collision with root package name */
    public RelativeLayout f6398d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f6399e;

    /* renamed from: f  reason: collision with root package name */
    public NativeAdViewContentStream f6400f;

    /* renamed from: g  reason: collision with root package name */
    public NativeAd f6401g;

    /* renamed from: h  reason: collision with root package name */
    public r f6402h = null;
    public boolean i;
    public ProgressDialog j;
    public boolean k;

    /* loaded from: classes.dex */
    public class a implements AdapterView.OnItemClickListener {
        public a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            q1.c cVar;
            s cVar2;
            ((com.appodeal.ads.utils.b) adapterView.getAdapter()).getClass();
            int i2 = m.b(6)[i];
            TestActivity testActivity = TestActivity.this;
            int a2 = com.appodeal.ads.utils.a.a(i2);
            testActivity.f6395a = a2;
            if (q4.d(a2)) {
                TestActivity testActivity2 = TestActivity.this;
                int i3 = testActivity2.f6395a;
                q4.b(i3, true);
                q4.a(i3, false);
                if (i3 == 1) {
                    testActivity2.e();
                    cVar = q1.a().f7293d;
                    cVar2 = new o1.c();
                    cVar2.f7445a = true;
                    cVar2.f7447c = true;
                    cVar2.f7446b = testActivity2.f6396b;
                } else if (i3 != 2) {
                    if (i3 == 4) {
                        testActivity2.e();
                        t0.d dVar = new t0.d();
                        dVar.f7445a = true;
                        dVar.f7447c = true;
                        dVar.f7446b = testActivity2.f6396b;
                        t0.a().b((Context) testActivity2, (TestActivity) dVar);
                        return;
                    } else if (i3 == 128) {
                        testActivity2.e();
                        o4.a aVar = new o4.a();
                        aVar.f7445a = true;
                        aVar.f7447c = true;
                        aVar.f7446b = testActivity2.f6396b;
                        o4.a().b((Context) testActivity2, (TestActivity) aVar);
                        return;
                    } else if (i3 != 256) {
                        if (i3 != 512) {
                            return;
                        }
                        testActivity2.e();
                        Native.c().b(1);
                        Native.c().a(true, testActivity2.f6396b, true);
                        return;
                    } else {
                        testActivity2.e();
                        h2.d dVar2 = new h2.d();
                        dVar2.f7445a = true;
                        dVar2.f7447c = true;
                        dVar2.f7446b = testActivity2.f6396b;
                        h2.a().b((Context) testActivity2, (TestActivity) dVar2);
                        return;
                    }
                } else {
                    testActivity2.e();
                    cVar = q1.a().f7294e;
                    cVar2 = new w2.a();
                    cVar2.f7445a = true;
                    cVar2.f7447c = true;
                    cVar2.f7446b = testActivity2.f6396b;
                }
                cVar.a((Context) testActivity2, (TestActivity) cVar2);
                return;
            }
            Toast.makeText(TestActivity.this, com.appodeal.ads.utils.a.b(i2) + " isn't initialized", 0).show();
        }
    }

    /* loaded from: classes.dex */
    public class b implements CompoundButton.OnCheckedChangeListener {
        public b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            TestActivity.this.f6396b = z;
        }
    }

    /* loaded from: classes.dex */
    public class c implements AdapterView.OnItemClickListener {
        public c() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [android.widget.Adapter] */
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            com.appodeal.ads.utils.k kVar = (com.appodeal.ads.utils.k) adapterView.getAdapter().getItem(i);
            TestActivity testActivity = TestActivity.this;
            if (testActivity.i) {
                return;
            }
            testActivity.e();
            testActivity.f6402h.y();
            testActivity.k = true;
            int i2 = testActivity.f6395a;
            if (i2 == 1) {
                TestActivity.a();
                q1.a().c();
                int i3 = kVar.f7783g;
                o1.a().a((o1.a) ((r1) o1.a().x), i3, false, true);
            } else if (i2 == 2) {
                TestActivity.a();
                q1.a().c();
                int i4 = kVar.f7783g;
                w2.a().a((w2.b) ((q5) w2.a().x), i4, false, true);
            } else if (i2 == 4) {
                TestActivity.a();
                int i5 = kVar.f7783g;
                t0.a().a((t0.b) ((w0) t0.a().x), i5, false, true);
            } else if (i2 == 128) {
                TestActivity.a();
                int i6 = kVar.f7783g;
                o4.a().a((o4.b) ((n4) o4.a().x), i6, false, true);
            } else if (i2 == 256) {
                TestActivity.a();
                int i7 = kVar.f7783g;
                h2.a().a((h2.b) ((k2) h2.a().x), i7, false, true);
            } else if (i2 != 512) {
            } else {
                Native.c().f7091c = false;
                int i8 = kVar.f7783g;
                Native.a().a((Native.a) ((t2) Native.a().x), i8, false, true);
            }
        }
    }

    /* loaded from: classes.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f6406a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f6407b;

        public d(Context context, String str) {
            this.f6406a = context;
            this.f6407b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Toast.makeText(this.f6406a, this.f6407b, 0).show();
        }
    }

    public static void a() {
        w0 w0Var = (w0) t0.a().f();
        k2 k2Var = (k2) h2.a().f();
        r1 f2 = o1.a().f();
        q5 f3 = w2.a().f();
        n4 f4 = o4.a().f();
        if (w0Var != null) {
            w0Var.c();
            w0Var.y();
        }
        if (k2Var != null) {
            k2Var.c();
            k2Var.y();
        }
        if (f2 != null) {
            f2.c();
            f2.y();
        }
        if (f3 != null) {
            f3.c();
            f3.y();
        }
        if (f4 != null) {
            f4.c();
            f4.y();
        }
    }

    public static void a(Context context, String str) {
        h5.f6714a.post(new d(context, str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x020a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.TestActivity.b():void");
    }

    public final void c() {
        q4.b(this, 64);
        q4.b(this, 256);
        if (this.f6401g != null) {
            NativeAdViewContentStream nativeAdViewContentStream = this.f6400f;
            if (nativeAdViewContentStream != null) {
                this.f6398d.removeView(nativeAdViewContentStream);
                this.f6400f.unregisterViewForInteraction();
                this.f6400f = null;
            }
            this.f6401g = null;
        }
        this.f6397c.setVisibility(0);
        this.f6398d.setVisibility(4);
        this.f6399e = false;
        this.k = false;
    }

    public final void d() {
        ProgressDialog progressDialog = this.j;
        if (progressDialog != null) {
            progressDialog.hide();
            this.j.dismiss();
            this.j = null;
        }
        this.i = false;
    }

    public final void e() {
        d();
        this.i = true;
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.j = progressDialog;
        progressDialog.setCancelable(false);
        this.j.setMessage("Loading");
        this.j.show();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.f6399e) {
            int i = this.f6395a;
            if (i == 4 || i == 256 || i == 512) {
                c();
            }
        } else if (this.f6395a != 0) {
            this.f6395a = 0;
            b();
        } else {
            q4.f7306d = null;
            finish();
            overridePendingTransition(0, 0);
        }
    }

    @Override // com.appodeal.ads.BannerCallbacks
    public final void onBannerClicked() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Banner clicked");
    }

    @Override // com.appodeal.ads.BannerCallbacks
    public final void onBannerExpired() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Banner expired");
    }

    @Override // com.appodeal.ads.BannerCallbacks
    public final void onBannerFailedToLoad() {
        if (this.k) {
            this.k = false;
            d();
            a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Banner failed to load");
        }
    }

    @Override // com.appodeal.ads.BannerCallbacks
    public final void onBannerLoaded(int i, boolean z) {
        if (this.k) {
            d();
            if (q4.a((Activity) this, 64, RewardedVideo.VIDEO_MODE_DEFAULT)) {
                int i2 = this.f6395a;
                if (i2 == 4 || i2 == 256 || i2 == 512) {
                    this.f6398d.setVisibility(0);
                    this.f6398d.bringToFront();
                    this.f6399e = true;
                    return;
                }
                return;
            }
            a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Banner failed to load");
        }
    }

    @Override // com.appodeal.ads.BannerCallbacks
    public final void onBannerShowFailed() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Banner show failed");
    }

    @Override // com.appodeal.ads.BannerCallbacks
    public final void onBannerShown() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Banner shown");
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        r1 f2 = o1.a().f();
        q5 f3 = w2.a().f();
        if (f3 != null) {
            f3.c();
            f3.y();
        }
        if (f2 != null) {
            f2.c();
            f2.y();
        }
        q4.f7306d = this;
        if (bundle != null) {
            this.f6395a = bundle.getInt("adType");
            this.f6396b = bundle.getBoolean("test");
            this.i = bundle.getBoolean("spinnerShown");
        }
        b();
    }

    @Override // com.appodeal.ads.InterstitialCallbacks
    public final void onInterstitialClicked() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Interstitial clicked");
    }

    @Override // com.appodeal.ads.InterstitialCallbacks
    public final void onInterstitialClosed() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Interstitial closed");
        c();
    }

    @Override // com.appodeal.ads.InterstitialCallbacks
    public final void onInterstitialExpired() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Interstitial expired");
    }

    @Override // com.appodeal.ads.InterstitialCallbacks
    public final void onInterstitialFailedToLoad() {
        if (this.k) {
            this.k = false;
            d();
            a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Interstitial failed to load");
        }
    }

    @Override // com.appodeal.ads.InterstitialCallbacks
    public final void onInterstitialLoaded(boolean z) {
        if (this.k) {
            d();
            this.f6399e = true;
            q4.a((Activity) this, 3, RewardedVideo.VIDEO_MODE_DEFAULT);
        }
    }

    @Override // com.appodeal.ads.InterstitialCallbacks
    public final void onInterstitialShowFailed() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Interstitial show failed");
    }

    @Override // com.appodeal.ads.InterstitialCallbacks
    public final void onInterstitialShown() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Interstitial shown");
    }

    @Override // com.appodeal.ads.MrecCallbacks
    public final void onMrecClicked() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Mrec clicked");
    }

    @Override // com.appodeal.ads.MrecCallbacks
    public final void onMrecExpired() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Mrec expired");
    }

    @Override // com.appodeal.ads.MrecCallbacks
    public final void onMrecFailedToLoad() {
        if (this.k) {
            this.k = false;
            d();
            a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Mrec failed to load");
        }
    }

    @Override // com.appodeal.ads.MrecCallbacks
    public final void onMrecLoaded(boolean z) {
        if (this.k) {
            d();
            if (q4.a((Activity) this, 256, RewardedVideo.VIDEO_MODE_DEFAULT)) {
                int i = this.f6395a;
                if (i == 4 || i == 256 || i == 512) {
                    this.f6398d.setVisibility(0);
                    this.f6398d.bringToFront();
                    this.f6399e = true;
                    return;
                }
                return;
            }
            a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Mrec failed to load");
        }
    }

    @Override // com.appodeal.ads.MrecCallbacks
    public final void onMrecShowFailed() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Mrec show failed");
    }

    @Override // com.appodeal.ads.MrecCallbacks
    public final void onMrecShown() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Mrec shown");
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public final void onNativeClicked(NativeAd nativeAd) {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Native ad clicked");
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public final void onNativeExpired() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Native ad expired");
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public final void onNativeFailedToLoad() {
        if (this.k) {
            this.k = false;
            d();
            a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Native ad failed to load");
        }
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public final void onNativeLoaded() {
        if (this.k) {
            d();
            ArrayList a2 = q4.a(1);
            if (a2.size() > 0) {
                int i = this.f6395a;
                if (i == 4 || i == 256 || i == 512) {
                    this.f6398d.setVisibility(0);
                    this.f6398d.bringToFront();
                    this.f6399e = true;
                }
                this.f6401g = (NativeAd) a2.get(0);
                this.f6400f = new NativeAdViewContentStream(this, this.f6401g);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(12);
                this.f6398d.addView(this.f6400f, layoutParams);
                return;
            }
            a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Native ad failed to load");
        }
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public final void onNativeShowFailed(NativeAd nativeAd) {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Native show failed");
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public final void onNativeShown(NativeAd nativeAd) {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Native ad shown");
    }

    @Override // com.appodeal.ads.RewardedVideoCallbacks
    public final void onRewardedVideoClicked() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Rewarded video clicked");
    }

    @Override // com.appodeal.ads.RewardedVideoCallbacks
    public final void onRewardedVideoClosed(boolean z) {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Rewarded video closed");
        c();
    }

    @Override // com.appodeal.ads.RewardedVideoCallbacks
    public final void onRewardedVideoExpired() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Rewarded video expired");
    }

    @Override // com.appodeal.ads.RewardedVideoCallbacks
    public final void onRewardedVideoFailedToLoad() {
        if (this.k) {
            this.k = false;
            d();
            a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Rewarded video failed to load");
        }
    }

    @Override // com.appodeal.ads.RewardedVideoCallbacks
    public final void onRewardedVideoFinished(double d2, String str) {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Rewarded video finished");
    }

    @Override // com.appodeal.ads.RewardedVideoCallbacks
    public final void onRewardedVideoLoaded(boolean z) {
        if (this.k) {
            d();
            if (q4.a((Activity) this, 128, RewardedVideo.VIDEO_MODE_DEFAULT)) {
                this.f6399e = true;
            } else {
                a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Rewarded video failed to load");
            }
        }
    }

    @Override // com.appodeal.ads.RewardedVideoCallbacks
    public final void onRewardedVideoShowFailed() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Rewarded video show failed");
    }

    @Override // com.appodeal.ads.RewardedVideoCallbacks
    public final void onRewardedVideoShown() {
        a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), "Rewarded video shown");
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        c();
        bundle.putInt("adType", this.f6395a);
        bundle.putBoolean("test", this.f6396b);
        bundle.putBoolean("spinnerShown", this.i);
    }
}
