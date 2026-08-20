package com.appodeal.ads;

import android.app.Activity;
import android.media.AudioManager;
import com.appodeal.ads.j1;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.r;
import com.appodeal.ads.unified.UnifiedFullscreenAd;
import com.appodeal.ads.unified.UnifiedFullscreenAdCallback;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.x;
import com.google.android.exoplayer2.C;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class k1<AdRequestType extends r<AdObjectType>, AdObjectType extends j1> extends p<AdRequestType, AdObjectType, q> {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicBoolean f6814a = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Activity f6815a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.appodeal.ads.segments.g f6816b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ r f6817c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ j1 f6818d;

        public a(Activity activity, com.appodeal.ads.segments.g gVar, r rVar, j1 j1Var) {
            this.f6815a = activity;
            this.f6816b = gVar;
            this.f6817c = rVar;
            this.f6818d = j1Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            k1.this.getClass();
            AudioManager audioManager = (AudioManager) this.f6815a.getSystemService("audio");
            if (audioManager != null && r0.f7345e && audioManager.getStreamVolume(2) == 0) {
                r0.f7346f = audioManager.getStreamVolume(3);
                audioManager.setStreamVolume(3, 0, 0);
            }
            com.appodeal.ads.segments.g gVar = this.f6816b;
            AdType n = this.f6817c.n();
            gVar.getClass();
            if (com.appodeal.ads.segments.g.a(n)) {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject optJSONObject = gVar.f7506c.optJSONObject("impression_interval");
                if ((optJSONObject != null ? optJSONObject.optInt("fullscreen", -1) * 1000 : -1) > 0) {
                    gVar.f7509f = currentTimeMillis;
                }
                com.appodeal.ads.segments.g.i = currentTimeMillis;
                long currentTimeMillis2 = System.currentTimeMillis() / 1000;
                HashMap hashMap = com.appodeal.ads.utils.x.l;
                com.appodeal.ads.utils.w wVar = x.a.a().f7845e;
                if (wVar != null) {
                    synchronized (wVar) {
                        wVar.k++;
                    }
                }
                try {
                    JSONArray e2 = gVar.e();
                    e2.put(currentTimeMillis2);
                    gVar.f7510g.c(String.valueOf(gVar.f7504a), e2.toString());
                } catch (Exception e3) {
                    Log.log(e3);
                }
            }
            com.appodeal.ads.utils.y.a(this.f6817c.n(), this.f6818d.f6825b);
            j1 j1Var = this.f6818d;
            Activity activity = this.f6815a;
            UnifiedAdType unifiedadtype = j1Var.f6829f;
            if (unifiedadtype != 0) {
                UnifiedAdParamsType unifiedadparamstype = j1Var.f6830g;
                if (unifiedadparamstype != 0) {
                    unifiedadtype.onPrepareToShow(activity, unifiedadparamstype);
                } else {
                    UnifiedAdCallbackType unifiedadcallbacktype = j1Var.f6831h;
                    if (unifiedadcallbacktype != 0) {
                        unifiedadcallbacktype.onAdShowFailed();
                    }
                }
            }
            j1 j1Var2 = this.f6818d;
            Activity activity2 = this.f6815a;
            UnifiedFullscreenAd unifiedFullscreenAd = (UnifiedFullscreenAd) j1Var2.f6829f;
            UnifiedFullscreenAdCallback unifiedFullscreenAdCallback = (UnifiedFullscreenAdCallback) j1Var2.f6831h;
            if (unifiedFullscreenAd != null && unifiedFullscreenAdCallback != null) {
                unifiedFullscreenAd.show(activity2, unifiedFullscreenAdCallback);
            } else if (unifiedFullscreenAdCallback != null) {
                unifiedFullscreenAdCallback.onAdShowFailed();
            }
        }
    }

    public static void a() {
        AtomicBoolean atomicBoolean = f6814a;
        synchronized (atomicBoolean) {
            atomicBoolean.set(false);
        }
    }

    public static void b() {
        int i;
        AudioManager audioManager = (AudioManager) com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext().getSystemService("audio");
        if (audioManager == null || !r0.f7345e || audioManager.getStreamVolume(3) != 0 || (i = r0.f7346f) == -1) {
            return;
        }
        audioManager.setStreamVolume(3, i, 0);
    }

    /* JADX WARN: Type inference failed for: r8v9, types: [AdObjectType extends com.appodeal.ads.l, com.appodeal.ads.l] */
    @Override // com.appodeal.ads.p
    public final boolean a(Activity activity, q qVar, u<AdObjectType, AdRequestType, ?> uVar) {
        AdRequestType f2 = uVar.f();
        if (f2 == null) {
            return false;
        }
        com.appodeal.ads.segments.g gVar = qVar.f7287a;
        uVar.a(LogConstants.EVENT_SHOW, String.format("isDebug: %s, isLoaded: %s, isLoading: %s, placement: '%s'", Boolean.valueOf(qVar.f7288b), Boolean.valueOf(f2.u), Boolean.valueOf(f2.u()), gVar.f7505b));
        if (gVar.a(activity, uVar.f7691f, f2.t)) {
            String str = gVar.f7505b;
            if (f2.u || f2.v || f2.q.containsKey(str)) {
                ?? a2 = f2.a(gVar.f7505b);
                f2.s = a2;
                j1 j1Var = (j1) a2;
                if (j1Var != null) {
                    uVar.y = f2;
                    h5.f6714a.post(new a(activity, gVar, f2, j1Var));
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.appodeal.ads.p
    public final boolean b(Activity activity, q qVar, u<AdObjectType, AdRequestType, ?> uVar) {
        AtomicBoolean atomicBoolean = f6814a;
        if (atomicBoolean.getAndSet(true)) {
            Log.log(LogConstants.KEY_SDK, LogConstants.EVENT_SHOW_ERROR, String.format("Can't show %s. Fullscreen ad is already shown", uVar.d().getDisplayName()));
            return false;
        }
        boolean b2 = super.b(activity, qVar, uVar);
        atomicBoolean.set(b2);
        if (b2) {
            h5.a(new Runnable() { // from class: com.appodeal.ads.k1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    k1.a();
                }
            }, C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
        }
        return b2;
    }
}
