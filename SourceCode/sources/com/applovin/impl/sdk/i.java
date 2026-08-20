package com.applovin.impl.sdk;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.PixelCopy;
import android.view.View;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class i extends p {

    /* renamed from: c  reason: collision with root package name */
    private final long f5802c;

    /* renamed from: d  reason: collision with root package name */
    private final long f5803d;

    /* renamed from: e  reason: collision with root package name */
    private final int f5804e;

    /* renamed from: f  reason: collision with root package name */
    private WeakReference<View> f5805f;

    /* renamed from: g  reason: collision with root package name */
    private int f5806g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f5807h;
    private final HandlerThread i;
    private final Runnable j;
    private a k;

    /* loaded from: classes.dex */
    public interface a {
        void a(View view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface b {
        void a(Bitmap bitmap);

        void a(boolean z);
    }

    public i(n nVar) {
        super("black_view", nVar);
        this.f5805f = new WeakReference<>(null);
        this.f5806g = 0;
        this.i = new HandlerThread("BlackViewDetector");
        this.j = new Runnable() { // from class: com.applovin.impl.sdk.i.1
            @Override // java.lang.Runnable
            public void run() {
                i.this.b();
            }
        };
        this.f5802c = ((Long) nVar.a(com.applovin.impl.sdk.c.b.fk)).longValue();
        this.f5803d = ((Long) nVar.a(com.applovin.impl.sdk.c.b.fj)).longValue();
        this.f5804e = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.fl)).intValue();
    }

    private void a(View view, final b bVar) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        final Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Activity b2 = this.f6017a.ai().b();
        if (b2 == null) {
            v vVar = this.f6018b;
            if (v.a()) {
                this.f6018b.e("BlackViewDetector", "Failed to capture screenshot due to no active activity");
            }
            bVar.a(false);
            return;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        try {
            PixelCopy.request(b2.getWindow(), new Rect(i, i2, measuredWidth + i, measuredHeight + i2), createBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.applovin.impl.sdk.i.4
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                public void onPixelCopyFinished(int i3) {
                    if (i3 == 0) {
                        bVar.a(createBitmap);
                        return;
                    }
                    v vVar2 = i.this.f6018b;
                    if (v.a()) {
                        i.this.f6018b.e("BlackViewDetector", "Failed to capture screenshot with error code: " + i3);
                    }
                    bVar.a(true);
                }
            }, new Handler());
        } catch (Throwable th) {
            v vVar2 = this.f6018b;
            if (v.a()) {
                this.f6018b.e("BlackViewDetector", "Failed to capture screenshot due to exception: " + th);
            }
            bVar.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i) {
        return Color.red(i) == 0 && Color.blue(i) == 0 && Color.green(i) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        View view = this.f5805f.get();
        if (view == null) {
            v vVar = this.f6018b;
            if (v.a()) {
                this.f6018b.d("BlackViewDetector", "Monitored view no longer exists.");
            }
            a();
            return;
        }
        v vVar2 = this.f6018b;
        if (v.a()) {
            this.f6018b.b("BlackViewDetector", "Checking for black view: " + view);
        }
        final int measuredWidth = view.getMeasuredWidth();
        final int measuredHeight = view.getMeasuredHeight();
        if (measuredWidth != 0 && measuredHeight != 0) {
            a(view, new b() { // from class: com.applovin.impl.sdk.i.2
                @Override // com.applovin.impl.sdk.i.b
                public void a(Bitmap bitmap) {
                    int i = measuredWidth / i.this.f5804e;
                    int i2 = measuredHeight / i.this.f5804e;
                    int i3 = i / 2;
                    int i4 = i2 / 2;
                    loop0: while (true) {
                        if (i4 >= measuredHeight) {
                            i.d(i.this);
                            break;
                        }
                        for (int i5 = i3; i5 < measuredWidth; i5 += i) {
                            if (!i.this.a(bitmap.getPixel(i5, i4))) {
                                i.this.f5806g = 0;
                                break loop0;
                            }
                        }
                        i4 += i2;
                    }
                    bitmap.recycle();
                    i.this.c();
                }

                @Override // com.applovin.impl.sdk.i.b
                public void a(boolean z) {
                    if (z) {
                        i.this.a();
                    }
                }
            });
            return;
        }
        v vVar3 = this.f6018b;
        if (v.a()) {
            this.f6018b.d("BlackViewDetector", "Monitored view is not visible due to dimensions (width = " + measuredWidth + ", height = " + measuredHeight + ")");
        }
        this.f5806g = 0;
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        if (r4.f5806g == 1) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c() {
        /*
            r4 = this;
            long r0 = r4.f5802c
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r3 = 1
            if (r2 <= 0) goto L2d
            int r2 = r4.f5806g
            if (r2 <= r3) goto L11
        Ld:
            r4.d()
            goto L32
        L11:
            android.os.Handler r2 = r4.f5807h
            if (r2 == 0) goto L1b
            java.lang.Runnable r3 = r4.j
            r2.postDelayed(r3, r0)
            goto L35
        L1b:
            com.applovin.impl.sdk.v r0 = r4.f6018b
            boolean r0 = com.applovin.impl.sdk.v.a()
            if (r0 == 0) goto L32
            com.applovin.impl.sdk.v r0 = r4.f6018b
            java.lang.String r1 = "BlackViewDetector"
            java.lang.String r2 = "Monitoring handler was unexpectedly null"
            r0.d(r1, r2)
            goto L32
        L2d:
            int r0 = r4.f5806g
            if (r0 != r3) goto L32
            goto Ld
        L32:
            r4.a()
        L35:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.i.c():void");
    }

    static /* synthetic */ int d(i iVar) {
        int i = iVar.f5806g;
        iVar.f5806g = i + 1;
        return i;
    }

    private void d() {
        final View view = this.f5805f.get();
        v vVar = this.f6018b;
        if (v.a()) {
            this.f6018b.d("BlackViewDetector", "Detected black view: " + view);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.i.3
            @Override // java.lang.Runnable
            public void run() {
                if (i.this.k != null) {
                    i.this.k.a(view);
                }
            }
        });
    }

    public void a() {
        if (this.f5805f.get() == null) {
            return;
        }
        v vVar = this.f6018b;
        if (v.a()) {
            this.f6018b.b("BlackViewDetector", "Stopped monitoring view: " + this.f5805f.get());
        }
        Handler handler = this.f5807h;
        if (handler != null) {
            handler.removeCallbacks(this.j);
            this.f5807h = null;
            this.i.quit();
        }
        this.f5805f.clear();
        this.k = null;
    }

    public void a(View view, a aVar) {
        if (((Boolean) this.f6017a.a(com.applovin.impl.sdk.c.b.fi)).booleanValue()) {
            View view2 = this.f5805f.get();
            if (view2 != null) {
                v vVar = this.f6018b;
                if (v.a()) {
                    this.f6018b.d("BlackViewDetector", "Monitoring is already in progress for a view:" + view2);
                    return;
                }
                return;
            }
            this.k = aVar;
            this.f5805f = new WeakReference<>(view);
            this.f5806g = 0;
            v vVar2 = this.f6018b;
            if (v.a()) {
                this.f6018b.b("BlackViewDetector", "Started monitoring view: " + view);
            }
            this.i.start();
            Handler handler = new Handler(this.i.getLooper());
            this.f5807h = handler;
            handler.postDelayed(this.j, this.f5803d);
        }
    }
}
