package com.appodeal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.appodeal.ads.Native;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import com.appodeal.ads.unified.UnifiedNative;
import com.appodeal.ads.unified.UnifiedNativeAd;
import com.appodeal.ads.unified.UnifiedNativeCallback;
import com.appodeal.ads.unified.UnifiedNativeParams;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class s2 extends l<t2, UnifiedNative, UnifiedNativeParams, UnifiedNativeCallback> {
    public ArrayList s;
    public int t;
    public boolean u;

    /* loaded from: classes.dex */
    public static final class b implements UnifiedNativeParams {

        /* renamed from: a  reason: collision with root package name */
        public final int f7488a;

        public b(int i) {
            this.f7488a = i;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeParams
        public final int getAdCountToLoad() {
            return this.f7488a;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeParams
        public final Native.MediaAssetType getMediaAssetType() {
            return Native.f6383c;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeParams
        public final Native.NativeAdType getNativeAdType() {
            return Native.f6382b;
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainPlacementId() {
            return com.appodeal.ads.segments.g.a(Native.a().l);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainSegmentId() {
            return Native.a().r().toString();
        }
    }

    public s2(t2 t2Var, AdNetwork adNetwork, d0 d0Var) {
        super(t2Var, adNetwork, d0Var, 5000);
        this.t = 0;
        this.u = false;
    }

    @Override // com.appodeal.ads.l
    public final UnifiedNative a(AdNetwork adNetwork) {
        return adNetwork.createNativeAd();
    }

    @Override // com.appodeal.ads.l
    public final UnifiedNativeCallback c() {
        return new a();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:16|(3:26|27|(2:45|22))|18|19|21|22|14) */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007e, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007f, code lost:
        com.appodeal.ads.utils.Log.log(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m() {
        /*
            r6 = this;
            int r0 = r6.t
            if (r0 != 0) goto Lc3
            monitor-enter(r6)
            java.util.ArrayList r0 = r6.s     // Catch: java.lang.Throwable -> Lc0
            if (r0 != 0) goto L19
            com.appodeal.ads.Native$b r0 = com.appodeal.ads.Native.b()     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.r r1 = r6.d()     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.t2 r1 = (com.appodeal.ads.t2) r1     // Catch: java.lang.Throwable -> Lc0
            r0.a(r1, r6)     // Catch: java.lang.Throwable -> Lc0
            monitor-exit(r6)
            goto Lc3
        L19:
            boolean r1 = r6.u     // Catch: java.lang.Throwable -> Lc0
            if (r1 == 0) goto Lbe
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lc0
            java.util.ArrayList r1 = r6.s     // Catch: java.lang.Throwable -> Lc0
            int r1 = r1.size()     // Catch: java.lang.Throwable -> Lc0
        L27:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Throwable -> Lc0
            if (r2 == 0) goto L83
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.NativeAd r2 = (com.appodeal.ads.NativeAd) r2     // Catch: java.lang.Throwable -> Lc0
            r3 = r2
            com.appodeal.ads.l2 r3 = (com.appodeal.ads.l2) r3     // Catch: java.lang.Throwable -> Lc0
            if (r3 == 0) goto L77
            java.lang.String r4 = r3.f6836d     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            if (r4 != 0) goto L77
            java.lang.String r4 = r3.f6837e     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            if (r4 != 0) goto L77
            com.appodeal.ads.Native$MediaAssetType r4 = com.appodeal.ads.Native.f6383c     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            com.appodeal.ads.Native$MediaAssetType r5 = com.appodeal.ads.Native.MediaAssetType.IMAGE     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            if (r4 == r5) goto L5a
            java.lang.String r4 = r3.j     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            if (r4 == 0) goto L5a
            android.graphics.Bitmap r4 = r3.k     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            if (r4 == 0) goto L77
        L5a:
            com.appodeal.ads.Native$MediaAssetType r4 = com.appodeal.ads.Native.f6383c     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            com.appodeal.ads.Native$MediaAssetType r5 = com.appodeal.ads.Native.MediaAssetType.ICON     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            if (r4 == r5) goto L6c
            java.lang.String r4 = r3.l     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            if (r4 == 0) goto L6c
            android.graphics.Bitmap r4 = r3.m     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            if (r4 == 0) goto L77
        L6c:
            boolean r3 = a(r3)     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> Lc0
            if (r3 == 0) goto L77
            goto L27
        L73:
            r3 = move-exception
            com.appodeal.ads.utils.Log.log(r3)     // Catch: java.lang.Throwable -> Lc0
        L77:
            r0.remove()     // Catch: java.lang.Exception -> L7e java.lang.Throwable -> Lc0
            r2.destroy()     // Catch: java.lang.Exception -> L7e java.lang.Throwable -> Lc0
            goto L27
        L7e:
            r2 = move-exception
            com.appodeal.ads.utils.Log.log(r2)     // Catch: java.lang.Throwable -> Lc0
            goto L27
        L83:
            java.util.ArrayList r0 = r6.s     // Catch: java.lang.Throwable -> Lc0
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lc0
            if (r0 != 0) goto L99
            com.appodeal.ads.Native$b r0 = com.appodeal.ads.Native.b()     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.r r1 = r6.d()     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.t2 r1 = (com.appodeal.ads.t2) r1     // Catch: java.lang.Throwable -> Lc0
            r0.n(r1, r6)     // Catch: java.lang.Throwable -> Lc0
            goto Lbe
        L99:
            if (r1 <= 0) goto Lb1
            r0 = 0
            r1 = 0
            r6.a(r0, r1)     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.Native$b r0 = com.appodeal.ads.Native.b()     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.r r1 = r6.d()     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.t2 r1 = (com.appodeal.ads.t2) r1     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.networking.LoadingError r2 = com.appodeal.ads.networking.LoadingError.InvalidAssets     // Catch: java.lang.Throwable -> Lc0
            r0.a(r1, r6, r2)     // Catch: java.lang.Throwable -> Lc0
            goto Lbe
        Lb1:
            com.appodeal.ads.Native$b r0 = com.appodeal.ads.Native.b()     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.r r1 = r6.d()     // Catch: java.lang.Throwable -> Lc0
            com.appodeal.ads.t2 r1 = (com.appodeal.ads.t2) r1     // Catch: java.lang.Throwable -> Lc0
            r0.a(r1, r6)     // Catch: java.lang.Throwable -> Lc0
        Lbe:
            monitor-exit(r6)
            goto Lc3
        Lc0:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.s2.m():void");
    }

    public final void n() {
        String str;
        ArrayList arrayList = this.s;
        if (arrayList == null) {
            Native.b().a((Native.b) ((t2) this.f6824a), (t2) this, (LoadingError) null);
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            l2 l2Var = (l2) ((NativeAd) it.next());
            String str2 = l2Var.j;
            String str3 = l2Var.l;
            if (l2Var.containsVideo() && TextUtils.isEmpty(str3) && (str = Native.f6384d) != null) {
                l2Var.l = str;
                str3 = str;
            }
            String str4 = l2Var.f6840h;
            String str5 = l2Var.i;
            Native.MediaAssetType mediaAssetType = Native.f6383c;
            Native.MediaAssetType mediaAssetType2 = Native.MediaAssetType.IMAGE;
            if (mediaAssetType != mediaAssetType2) {
                this.t++;
            }
            Native.MediaAssetType mediaAssetType3 = Native.f6383c;
            Native.MediaAssetType mediaAssetType4 = Native.MediaAssetType.ICON;
            if (mediaAssetType3 != mediaAssetType4) {
                this.t++;
            }
            if (Native.f6383c != mediaAssetType2) {
                if (str2 != null && !str2.isEmpty()) {
                    com.appodeal.ads.utils.s.f7824e.f7825a.execute(new com.appodeal.ads.utils.l(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), str2, false, new o2(this, l2Var)));
                } else {
                    this.t--;
                }
            }
            if (Native.f6383c != mediaAssetType4) {
                if (str3 != null && !str3.isEmpty()) {
                    com.appodeal.ads.utils.s.f7824e.f7825a.execute(new com.appodeal.ads.utils.l(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), str3, true, new p2(this, l2Var)));
                } else {
                    this.t--;
                }
                if (Native.f6382b == Native.NativeAdType.Video) {
                    if (str4 != null && !str4.isEmpty()) {
                        this.t++;
                        if (!str4.isEmpty()) {
                            com.appodeal.ads.utils.s.f7824e.f7825a.execute(new com.appodeal.ads.utils.m(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), new q2(this, l2Var), str4));
                        } else {
                            this.t--;
                        }
                    } else if (str5 != null && !str5.isEmpty()) {
                        this.t++;
                        com.appodeal.ads.utils.s.f7824e.f7825a.execute(new com.appodeal.ads.utils.n(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), new r2(this, l2Var), str5));
                    }
                }
            }
        }
        this.u = true;
        m();
    }

    public final ArrayList o() {
        ArrayList arrayList = this.s;
        return arrayList == null ? new ArrayList() : arrayList;
    }

    /* loaded from: classes.dex */
    public final class a extends UnifiedNativeCallback {
        public a() {
        }

        public final l2 a(int i) {
            ArrayList arrayList = s2.this.s;
            if (arrayList == null || arrayList.isEmpty()) {
                return null;
            }
            Iterator it = s2.this.s.iterator();
            while (it.hasNext()) {
                NativeAd nativeAd = (NativeAd) it.next();
                if (nativeAd instanceof l2) {
                    l2 l2Var = (l2) nativeAd;
                    if (i == l2Var.a()) {
                        return l2Var;
                    }
                }
            }
            return (l2) s2.this.s.get(0);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked() {
            Native.b b2 = Native.b();
            s2 s2Var = s2.this;
            b2.a((t2) s2Var.f6824a, s2Var, a(-1), (UnifiedAdCallbackClickTrackListener) null);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked(UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
            onAdClicked(-1, unifiedAdCallbackClickTrackListener);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdExpired() {
            Native.b b2 = Native.b();
            s2 s2Var = s2.this;
            b2.e((t2) s2Var.f6824a, s2Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeCallback
        public final void onAdFinished(int i) {
            Native.b b2 = Native.b();
            s2 s2Var = s2.this;
            b2.i((t2) s2Var.f6824a, s2Var, a(i));
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdInfoRequested(Bundle bundle) {
            s2.this.a(bundle);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdLoadFailed(LoadingError loadingError) {
            Native.b b2 = Native.b();
            s2 s2Var = s2.this;
            b2.a((Native.b) ((t2) s2Var.f6824a), (t2) s2Var, loadingError);
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeCallback
        public final void onAdLoaded(UnifiedNativeAd unifiedNativeAd) {
            s2 s2Var = s2.this;
            UnifiedNativeCallback unifiedNativeCallback = (UnifiedNativeCallback) s2Var.f6831h;
            ArrayList arrayList = s2Var.s;
            if (arrayList == null || unifiedNativeCallback == null) {
                onAdLoadFailed(LoadingError.InternalError);
                return;
            }
            arrayList.add(new l2(s2Var, unifiedNativeAd, unifiedNativeCallback));
            s2.this.n();
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdShowFailed() {
            Native.b b2 = Native.b();
            s2 s2Var = s2.this;
            b2.b((t2) s2Var.f6824a, s2Var, a(-1), LoadingError.ShowFailed);
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeCallback
        public final void onAdShown(int i) {
            Native.b b2 = Native.b();
            s2 s2Var = s2.this;
            b2.j((t2) s2Var.f6824a, s2Var, a(i));
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void printError(String str, Object obj) {
            s2 s2Var = s2.this;
            ((t2) s2Var.f6824a).a(s2Var, str, obj);
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeCallback
        public final void onAdClicked(int i, UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
            Native.b b2 = Native.b();
            s2 s2Var = s2.this;
            b2.a((t2) s2Var.f6824a, s2Var, a(i), unifiedAdCallbackClickTrackListener);
        }
    }

    @Override // com.appodeal.ads.l
    public final UnifiedNativeParams a(int i) {
        return new b(i);
    }

    public static boolean a(l2 l2Var) {
        return Native.f6383c == Native.MediaAssetType.ICON || Native.f6382b != Native.NativeAdType.Video || l2Var.f6834b.hasVideo() || l2Var.q != null;
    }

    @Override // com.appodeal.ads.l
    public final void a(ContextProvider contextProvider, UnifiedNativeParams unifiedNativeParams, Object obj, UnifiedNativeCallback unifiedNativeCallback, UnifiedNative unifiedNative) {
        UnifiedNativeParams unifiedNativeParams2 = unifiedNativeParams;
        this.s = new ArrayList(unifiedNativeParams2.getAdCountToLoad());
        unifiedNative.load(contextProvider, unifiedNativeParams2, obj, unifiedNativeCallback);
    }
}
