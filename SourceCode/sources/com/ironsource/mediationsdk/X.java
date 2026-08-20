package com.ironsource.mediationsdk;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.ironsource.mediationsdk.AbstractC1345b;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.Date;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class X extends Y implements RewardedVideoSmashListener {
    private String A;
    private String B;
    private final Object C;
    private final Object D;

    /* renamed from: a  reason: collision with root package name */
    a f10861a;

    /* renamed from: b  reason: collision with root package name */
    boolean f10862b;
    private W j;
    private Timer k;
    private int l;
    private String m;
    private String n;
    private String o;
    private boolean p;
    private boolean q;
    private Placement r;
    private long s;
    private String t;
    private JSONObject u;
    private String v;
    private int w;
    private String x;
    private int y;
    private int z;

    /* loaded from: classes3.dex */
    public enum a {
        NO_INIT,
        INIT_IN_PROGRESS,
        NOT_LOADED,
        LOAD_IN_PROGRESS,
        LOADED,
        SHOW_IN_PROGRESS
    }

    public X(String str, String str2, NetworkSettings networkSettings, W w, int i, AbstractAdapter abstractAdapter) {
        super(new com.ironsource.mediationsdk.model.a(networkSettings, networkSettings.getRewardedVideoSettings(), IronSource.AD_UNIT.REWARDED_VIDEO), abstractAdapter);
        this.C = new Object();
        this.D = new Object();
        this.f10861a = a.NO_INIT;
        this.m = str;
        this.n = str2;
        this.j = w;
        this.k = null;
        this.l = i;
        this.f10871c.addRewardedVideoListener(this);
        this.p = false;
        this.q = false;
        this.f10862b = false;
        this.r = null;
        this.t = "";
        this.u = null;
        this.f10876h = 1;
        g();
    }

    private void a(int i) {
        a(i, null, false);
    }

    private void a(int i, Object[][] objArr, boolean z) {
        Placement placement;
        Map<String, Object> n = n();
        if (!TextUtils.isEmpty(this.t)) {
            n.put(IronSourceConstants.EVENTS_AUCTION_ID, this.t);
        }
        JSONObject jSONObject = this.u;
        if (jSONObject != null && jSONObject.length() > 0) {
            n.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.u);
        }
        if (z && (placement = this.r) != null && !TextUtils.isEmpty(placement.getPlacementName())) {
            n.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.r.getPlacementName());
        }
        if (b(i)) {
            com.ironsource.mediationsdk.a.h.e();
            com.ironsource.mediationsdk.a.h.a(n, this.w, this.x);
        }
        n.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(this.f10876h));
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    n.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, k() + " smash: RV sendMediationEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(n)));
        if (i == 1203) {
            com.ironsource.mediationsdk.utils.o.a().a(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar) {
        a("current state=" + this.f10861a + ", new state=" + aVar);
        synchronized (this.D) {
            this.f10861a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgRvSmash " + k() + " : " + str, 0);
    }

    private void a(String str, String str2, int i, String str3, int i2, String str4) {
        this.v = str2;
        this.o = str;
        this.y = i;
        this.B = str3;
        this.z = i2;
        this.A = str4;
    }

    private static boolean b(int i) {
        return i == 1001 || i == 1002 || i == 1200 || i == 1213 || i == 1212 || i == 1005 || i == 1203 || i == 1201 || i == 1202 || i == 1006 || i == 1010;
    }

    private void c(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgRvSmash " + k() + " : " + str, 3);
    }

    private void g() {
        this.v = "";
        this.y = -1;
        this.B = "";
        this.o = "";
        this.z = this.f10876h;
        this.A = "";
    }

    private boolean q() {
        try {
            return this.f10871c.isRewardedVideoAvailable(this.f10874f);
        } catch (Exception e2) {
            c("isRewardedVideoAvailable exception: " + e2.getLocalizedMessage());
            e2.printStackTrace();
            b(IronSourceConstants.TROUBLESHOOTING_RV_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 5002}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, e2.getLocalizedMessage()}});
            return false;
        }
    }

    private void r() {
        try {
            String str = H.a().l;
            if (!TextUtils.isEmpty(str)) {
                this.f10871c.setMediationSegment(str);
            }
            String pluginType = ConfigFile.getConfigFile().getPluginType();
            if (TextUtils.isEmpty(pluginType)) {
                return;
            }
            this.f10871c.setPluginData(pluginType, ConfigFile.getConfigFile().getPluginFrameworkVersion());
        } catch (Exception e2) {
            a("setCustomParams() " + e2.getMessage());
        }
    }

    private void s() {
        synchronized (this.C) {
            Timer timer = this.k;
            if (timer != null) {
                timer.cancel();
                this.k = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long t() {
        return new Date().getTime() - this.s;
    }

    public final Map<String, Object> a() {
        try {
            if (h()) {
                return this.f10871c.getRewardedVideoBiddingData(this.f10874f);
            }
            return null;
        } catch (Throwable th) {
            c("getBiddingData exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            b(IronSourceConstants.TROUBLESHOOTING_RV_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 5001}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, th.getLocalizedMessage()}});
            return null;
        }
    }

    public final void a(int i, Object[][] objArr) {
        a(i, objArr, true);
    }

    public final void a(Placement placement, int i) {
        s();
        a("showVideo()");
        this.r = placement;
        this.f10876h = i;
        a(a.SHOW_IN_PROGRESS);
        a(IronSourceConstants.RV_INSTANCE_SHOW, (Object[][]) null);
        try {
            this.f10871c.showRewardedVideo(this.f10874f, this);
        } catch (Throwable th) {
            c("showVideo exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            onRewardedVideoAdShowFailed(new IronSourceError(IronSourceError.ERROR_RV_SHOW_EXCEPTION, th.getLocalizedMessage()));
        }
    }

    public final void a(String str, String str2, JSONObject jSONObject, int i, String str3, int i2, String str4) {
        a aVar;
        a("loadVideo() auctionId: " + str2 + " state: " + this.f10861a);
        this.i = null;
        this.f10873e = false;
        this.f10862b = true;
        synchronized (this.D) {
            aVar = this.f10861a;
            if (aVar != a.LOAD_IN_PROGRESS && this.f10861a != a.SHOW_IN_PROGRESS) {
                a(a.LOAD_IN_PROGRESS);
            }
        }
        if (aVar == a.LOAD_IN_PROGRESS) {
            b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_loadInProgress)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "load during load"}});
            this.q = true;
            a(str, str2, i, str3, i2, str4);
            this.j.b(this, str2);
        } else if (aVar == a.SHOW_IN_PROGRESS) {
            b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_showInProgress)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "load during show"}});
            this.p = true;
            a(str, str2, i, str3, i2, str4);
        } else {
            this.f10875g = str4;
            this.t = str2;
            this.u = jSONObject;
            this.w = i;
            this.x = str3;
            this.f10876h = i2;
            synchronized (this.C) {
                s();
                Timer timer = new Timer();
                this.k = timer;
                timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.X.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        int i3;
                        boolean z;
                        String str5 = "Rewarded Video - load instance time out";
                        synchronized (X.this.D) {
                            if (X.this.f10861a != a.LOAD_IN_PROGRESS && X.this.f10861a != a.INIT_IN_PROGRESS) {
                                i3 = 0;
                                z = false;
                            }
                            if (X.this.f10861a == a.LOAD_IN_PROGRESS) {
                                i3 = 1025;
                            } else {
                                str5 = "Rewarded Video - init instance time out";
                                i3 = IronSourceError.ERROR_RV_INIT_FAILED_TIMEOUT;
                            }
                            X.this.a(a.NOT_LOADED);
                            z = true;
                        }
                        X.this.a(str5);
                        if (!z) {
                            X.this.b(IronSourceConstants.RV_INSTANCE_AVAILABILITY_FALSE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1025}, new Object[]{"duration", Long.valueOf(X.this.t())}, new Object[]{IronSourceConstants.EVENTS_EXT1, X.this.f10861a.name()}});
                            return;
                        }
                        X.this.b(IronSourceConstants.RV_INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i3)}, new Object[]{"duration", Long.valueOf(X.this.t())}});
                        X.this.b(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i3)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str5}, new Object[]{"duration", Long.valueOf(X.this.t())}});
                        W w = X.this.j;
                        X x = X.this;
                        w.b(x, x.t);
                    }
                }, this.l * 1000);
            }
            this.s = new Date().getTime();
            a(1001);
            try {
                if (h()) {
                    this.f10871c.loadRewardedVideoForBidding(this.f10874f, this, str);
                } else if (aVar != a.NO_INIT) {
                    this.f10871c.fetchRewardedVideoForAutomaticLoad(this.f10874f, this);
                } else {
                    r();
                    this.f10871c.initRewardedVideo(this.m, this.n, this.f10874f, this);
                }
            } catch (Throwable th) {
                c("loadRewardedVideoForBidding exception: " + th.getLocalizedMessage());
                th.printStackTrace();
                onRewardedVideoLoadFailed(new IronSourceError(1030, th.getLocalizedMessage()));
                b(IronSourceConstants.TROUBLESHOOTING_RV_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_loadException)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, th.getLocalizedMessage()}});
            }
        }
    }

    public final void a(boolean z, int i) {
        this.f10876h = i;
        Object[][] objArr = new Object[1];
        objArr[0] = new Object[]{"status", z ? "true" : "false"};
        a(IronSourceConstants.RV_INSTANCE_SHOW_CHANCE, objArr, true);
    }

    public final void b() {
        a("initForBidding()");
        a(a.INIT_IN_PROGRESS);
        r();
        try {
            this.f10871c.initRewardedVideoForBidding(this.m, this.n, this.f10874f, this);
        } catch (Throwable th) {
            c("initForBidding exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            onRewardedVideoInitFailed(new IronSourceError(IronSourceError.ERROR_RV_INIT_EXCEPTION, th.getLocalizedMessage()));
        }
    }

    public final void b(int i, Object[][] objArr) {
        a(i, objArr, false);
    }

    public final boolean c() {
        return h() ? this.f10862b && this.f10861a == a.LOADED && q() : q();
    }

    public final void f() {
        this.f10871c.setMediationState(AbstractC1345b.a.CAPPED_PER_SESSION, IronSourceConstants.AD_UNIT_RV_MEDIATION_STATE);
        a(IronSourceConstants.RV_CAP_SESSION, null, false);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdClicked() {
        a("onRewardedVideoAdClicked");
        this.j.b(this, this.r);
        a(1006, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdClosed() {
        a("onRewardedVideoAdClosed");
        synchronized (this.D) {
            if (this.f10861a != a.SHOW_IN_PROGRESS) {
                a(IronSourceConstants.RV_INSTANCE_CLOSED, (Object[][]) null);
                b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_adClosed)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "adClosed: " + this.f10861a}});
                return;
            }
            a(a.NOT_LOADED);
            this.j.b(this);
            if (this.p) {
                a("onRewardedVideoAdClosed and mShouldLoadAfterClose is true - calling loadRewardedVideoForBidding");
                this.p = false;
                a(this.o, this.v, this.u, this.y, this.B, this.z, this.A);
                g();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdEnded() {
        a("onRewardedVideoAdEnded");
        this.j.d(this);
        a(IronSourceConstants.RV_INSTANCE_ENDED, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdOpened() {
        a("onRewardedVideoAdOpened");
        this.j.a(this);
        a(1005, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdRewarded() {
        a("onRewardedVideoAdRewarded");
        this.j.a(this, this.r);
        Map<String, Object> n = n();
        Placement placement = this.r;
        if (placement != null) {
            n.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, placement.getPlacementName());
            n.put(IronSourceConstants.EVENTS_REWARD_NAME, this.r.getRewardName());
            n.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(this.r.getRewardAmount()));
        }
        if (!TextUtils.isEmpty(H.a().m)) {
            n.put(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, H.a().m);
        }
        if (H.a().n != null) {
            for (String str : H.a().n.keySet()) {
                n.put(ContentMetadata.KEY_CUSTOM_PREFIX + str, H.a().n.get(str));
            }
        }
        if (!TextUtils.isEmpty(this.t)) {
            n.put(IronSourceConstants.EVENTS_AUCTION_ID, this.t);
        }
        JSONObject jSONObject = this.u;
        if (jSONObject != null && jSONObject.length() > 0) {
            n.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.u);
        }
        if (b(1010)) {
            com.ironsource.mediationsdk.a.h.e();
            com.ironsource.mediationsdk.a.h.a(n, this.w, this.x);
        }
        n.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(this.f10876h));
        com.ironsource.mediationsdk.a.c cVar = new com.ironsource.mediationsdk.a.c(1010, new JSONObject(n));
        cVar.a(IronSourceConstants.EVENTS_TRANS_ID, IronSourceUtils.getTransId(cVar.b(), k()));
        com.ironsource.mediationsdk.a.h.e().b(cVar);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        a("onRewardedVideoAdShowFailed error=" + ironSourceError.getErrorMessage());
        a(IronSourceConstants.RV_INSTANCE_SHOW_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}});
        synchronized (this.D) {
            if (this.f10861a != a.SHOW_IN_PROGRESS) {
                b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_showFailed)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showFailed: " + this.f10861a}});
                return;
            }
            a(a.NOT_LOADED);
            this.j.a(ironSourceError, this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdStarted() {
        a("onRewardedVideoAdStarted");
        this.j.c(this);
        a(IronSourceConstants.RV_INSTANCE_STARTED, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdVisible() {
        a("onRewardedVideoAdVisible");
        a(IronSourceConstants.RV_INSTANCE_VISIBLE, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAvailabilityChanged(boolean z) {
        boolean z2;
        a("onRewardedVideoAvailabilityChanged available=" + z + " state=" + this.f10861a.name());
        synchronized (this.D) {
            if (this.f10861a == a.LOAD_IN_PROGRESS) {
                a(z ? a.LOADED : a.NOT_LOADED);
                z2 = false;
            } else {
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                b(IronSourceConstants.RV_INSTANCE_AVAILABILITY_TRUE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, this.f10861a.name()}});
                return;
            } else {
                b(IronSourceConstants.RV_INSTANCE_AVAILABILITY_FALSE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_RV_LOAD_UNEXPECTED_CALLBACK)}, new Object[]{"duration", Long.valueOf(t())}, new Object[]{IronSourceConstants.EVENTS_EXT1, this.f10861a.name()}});
                return;
            }
        }
        s();
        b(z ? 1002 : IronSourceConstants.RV_INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{"duration", Long.valueOf(t())}});
        if (this.q) {
            this.q = false;
            a("onRewardedVideoAvailabilityChanged to " + z + "and mShouldLoadAfterLoad is true - calling loadVideo");
            a(this.o, this.v, this.u, this.y, this.B, this.z, this.A);
            g();
        } else if (z) {
            this.j.a(this, this.t);
        } else {
            this.j.b(this, this.t);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoInitFailed(IronSourceError ironSourceError) {
        a("onRewardedVideoInitFailed error=" + ironSourceError.getErrorMessage());
        s();
        b(IronSourceConstants.RV_INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_RV_LOAD_FAIL_DUE_TO_INIT)}, new Object[]{"duration", Long.valueOf(t())}});
        b(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(t())}});
        synchronized (this.D) {
            if (this.f10861a != a.INIT_IN_PROGRESS) {
                b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_initFailed)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "initFailed: " + this.f10861a}});
                return;
            }
            a(a.NO_INIT);
            this.j.b(this, this.t);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoInitSuccess() {
        a("onRewardedVideoInitSuccess");
        synchronized (this.D) {
            if (this.f10861a != a.INIT_IN_PROGRESS) {
                b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_initSuccess)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "initSuccess: " + this.f10861a}});
            } else {
                a(a.NOT_LOADED);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoLoadFailed(IronSourceError ironSourceError) {
        if (ironSourceError.getErrorCode() == 1058) {
            a(IronSourceConstants.RV_INSTANCE_LOAD_NO_FILL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(t())}}, false);
            return;
        }
        if (ironSourceError.getErrorCode() == 1057) {
            this.i = Long.valueOf(System.currentTimeMillis());
        }
        a(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(t())}}, false);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoLoadSuccess() {
    }
}
