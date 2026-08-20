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
public final class J extends Y implements RewardedVideoSmashListener {

    /* renamed from: a  reason: collision with root package name */
    a f10728a;

    /* renamed from: b  reason: collision with root package name */
    String f10729b;
    private K j;
    private Timer k;
    private int l;
    private String m;
    private String n;
    private Placement o;
    private long p;
    private JSONObject q;
    private int r;
    private String s;
    private final Object t;
    private final Object u;
    private long v;

    /* loaded from: classes3.dex */
    public enum a {
        NO_INIT,
        INIT_IN_PROGRESS,
        NOT_LOADED,
        LOAD_IN_PROGRESS,
        LOADED,
        SHOW_IN_PROGRESS,
        ENDED
    }

    public J(J j, K k, AbstractAdapter abstractAdapter, int i, String str, JSONObject jSONObject, int i2, String str2) {
        this(j.m, j.n, j.f10872d.f11235a, k, j.l, abstractAdapter, i);
        this.f10729b = str;
        this.q = jSONObject;
        this.r = i2;
        this.s = str2;
    }

    public J(String str, String str2, NetworkSettings networkSettings, K k, int i, AbstractAdapter abstractAdapter, int i2) {
        super(new com.ironsource.mediationsdk.model.a(networkSettings, networkSettings.getRewardedVideoSettings(), IronSource.AD_UNIT.REWARDED_VIDEO), abstractAdapter);
        this.t = new Object();
        this.u = new Object();
        this.m = str;
        this.n = str2;
        this.j = k;
        this.k = null;
        this.l = i;
        this.f10871c.updateRewardedVideoListener(this);
        this.f10876h = i2;
        this.f10728a = a.NO_INIT;
        this.v = 0L;
        if (this.f10872d.f11237c) {
            c("initForBidding()");
            a(a.INIT_IN_PROGRESS);
            g();
            try {
                this.f10871c.initRewardedVideoForBidding(this.m, this.n, this.f10874f, this);
            } catch (Throwable th) {
                d("initForBidding exception: " + th.getLocalizedMessage());
                th.printStackTrace();
                onRewardedVideoInitFailed(new IronSourceError(IronSourceError.ERROR_RV_INIT_EXCEPTION, th.getLocalizedMessage()));
            }
        }
    }

    private void a(int i) {
        a(i, null, false);
    }

    private void a(int i, Object[][] objArr, boolean z) {
        Placement placement;
        Map<String, Object> n = n();
        if (!TextUtils.isEmpty(this.f10729b)) {
            n.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f10729b);
        }
        JSONObject jSONObject = this.q;
        if (jSONObject != null && jSONObject.length() > 0) {
            n.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.q);
        }
        if (z && (placement = this.o) != null && !TextUtils.isEmpty(placement.getPlacementName())) {
            n.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.o.getPlacementName());
        }
        if (b(i)) {
            com.ironsource.mediationsdk.a.h.e();
            com.ironsource.mediationsdk.a.h.a(n, this.r, this.s);
        }
        n.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(this.f10876h));
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    n.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, k() + " smash: RV sendProviderEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(n)));
        if (i == 1203) {
            com.ironsource.mediationsdk.utils.o.a().a(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar) {
        c("current state=" + this.f10728a + ", new state=" + aVar);
        synchronized (this.t) {
            this.f10728a = aVar;
        }
    }

    private static boolean b(int i) {
        return i == 1001 || i == 1002 || i == 1200 || i == 1212 || i == 1213 || i == 1005 || i == 1203 || i == 1201 || i == 1202 || i == 1006 || i == 1010;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvSmash " + k() + " " + hashCode() + "  : " + str, 0);
    }

    private void d(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvSmash " + k() + " " + hashCode() + " : " + str, 3);
    }

    private boolean f() {
        try {
            return this.f10871c.isRewardedVideoAvailable(this.f10874f);
        } catch (Exception e2) {
            d("isRewardedVideoAvailable exception: " + e2.getLocalizedMessage());
            e2.printStackTrace();
            b(IronSourceConstants.TROUBLESHOOTING_RV_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 5002}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, e2.getLocalizedMessage()}});
            return false;
        }
    }

    private void g() {
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
            c("setCustomParams() " + e2.getMessage());
        }
    }

    private void q() {
        synchronized (this.u) {
            Timer timer = this.k;
            if (timer != null) {
                timer.cancel();
                this.k = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long r() {
        return new Date().getTime() - this.p;
    }

    public final Map<String, Object> a() {
        try {
            if (h()) {
                return this.f10871c.getRewardedVideoBiddingData(this.f10874f);
            }
            return null;
        } catch (Throwable th) {
            d("getBiddingData exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            b(IronSourceConstants.TROUBLESHOOTING_RV_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 5001}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, th.getLocalizedMessage()}});
            return null;
        }
    }

    public final void a(int i, Object[][] objArr) {
        a(i, objArr, true);
    }

    public final void a(Placement placement) {
        q();
        c("showVideo()");
        this.o = placement;
        a(a.SHOW_IN_PROGRESS);
        a(IronSourceConstants.RV_INSTANCE_SHOW, (Object[][]) null);
        try {
            this.f10871c.showRewardedVideo(this.f10874f, this);
        } catch (Throwable th) {
            d("showVideo exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            onRewardedVideoAdShowFailed(new IronSourceError(IronSourceError.ERROR_RV_SHOW_EXCEPTION, th.getLocalizedMessage()));
        }
    }

    public final void a(String str) {
        a aVar;
        c("loadVideo() auctionId: " + this.f10729b + " state: " + this.f10728a);
        this.i = null;
        this.f10873e = false;
        synchronized (this.t) {
            aVar = this.f10728a;
            if (aVar != a.LOAD_IN_PROGRESS && this.f10728a != a.SHOW_IN_PROGRESS) {
                a(a.LOAD_IN_PROGRESS);
            }
        }
        if (aVar == a.LOAD_IN_PROGRESS) {
            b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_loadInProgress)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "load during load"}});
        } else if (aVar == a.SHOW_IN_PROGRESS) {
            b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_showInProgress)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "load during show"}});
        } else {
            synchronized (this.u) {
                Timer timer = new Timer();
                this.k = timer;
                timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.J.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        int i;
                        boolean z;
                        String str2 = "Rewarded Video - load instance time out";
                        if (J.this.f10728a == a.LOAD_IN_PROGRESS || J.this.f10728a == a.INIT_IN_PROGRESS) {
                            if (J.this.f10728a == a.LOAD_IN_PROGRESS) {
                                i = 1025;
                            } else {
                                i = IronSourceError.ERROR_RV_INIT_FAILED_TIMEOUT;
                                str2 = "Rewarded Video - init instance time out";
                            }
                            J.this.a(a.NOT_LOADED);
                            z = true;
                        } else {
                            i = 0;
                            z = false;
                        }
                        J.this.c(str2);
                        if (!z) {
                            J.this.b(IronSourceConstants.RV_INSTANCE_AVAILABILITY_FALSE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1025}, new Object[]{"duration", Long.valueOf(J.this.r())}, new Object[]{IronSourceConstants.EVENTS_EXT1, J.this.f10728a.name()}});
                            return;
                        }
                        J.this.b(IronSourceConstants.RV_INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"duration", Long.valueOf(J.this.r())}});
                        J.this.b(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str2}, new Object[]{"duration", Long.valueOf(J.this.r())}});
                        J.this.j.b(J.this);
                    }
                }, this.l * 1000);
            }
            this.p = new Date().getTime();
            a(1001);
            try {
                if (h()) {
                    this.f10871c.loadRewardedVideoForBidding(this.f10874f, this, str);
                    return;
                }
                g();
                this.f10871c.initRewardedVideo(this.m, this.n, this.f10874f, this);
            } catch (Throwable th) {
                d("loadVideo exception: " + th.getLocalizedMessage());
                th.printStackTrace();
                b(IronSourceConstants.TROUBLESHOOTING_RV_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(h() ? IronSourceConstants.errorCode_loadException : IronSourceConstants.errorCode_initFailed)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, th.getLocalizedMessage()}});
            }
        }
    }

    public final void a(boolean z) {
        Object[][] objArr = new Object[1];
        objArr[0] = new Object[]{"status", z ? "true" : "false"};
        a(IronSourceConstants.RV_INSTANCE_SHOW_CHANCE, objArr, true);
    }

    public final void b(int i, Object[][] objArr) {
        a(i, objArr, false);
    }

    public final boolean b() {
        return h() ? this.f10728a == a.LOADED && f() : f();
    }

    public final void b_() {
        this.f10871c.setMediationState(AbstractC1345b.a.CAPPED_PER_SESSION, IronSourceConstants.AD_UNIT_RV_MEDIATION_STATE);
        a(IronSourceConstants.RV_CAP_SESSION, null, false);
    }

    public final LoadWhileShowSupportState c() {
        try {
            return this.f10871c.getLoadWhileShowSupportState(this.f10874f);
        } catch (Exception e2) {
            d("Exception while calling adapter.getLoadWhileShowSupportState() - " + e2.getLocalizedMessage());
            return LoadWhileShowSupportState.NONE;
        }
    }

    @Override // com.ironsource.mediationsdk.Y
    public final int e() {
        return 2;
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdClicked() {
        c("onRewardedVideoAdClicked");
        this.j.b(this, this.o);
        a(1006, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdClosed() {
        c("onRewardedVideoAdClosed");
        synchronized (this.t) {
            if (this.f10728a != a.SHOW_IN_PROGRESS) {
                a(IronSourceConstants.RV_INSTANCE_CLOSED, (Object[][]) null);
                b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_adClosed)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "adClosed: " + this.f10728a}});
                return;
            }
            a(a.ENDED);
            this.v = new Date().getTime();
            this.j.d(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdEnded() {
        c("onRewardedVideoAdEnded");
        this.j.f(this);
        a(IronSourceConstants.RV_INSTANCE_ENDED, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdOpened() {
        c("onRewardedVideoAdOpened");
        this.j.c(this);
        a(1005, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdRewarded() {
        c("onRewardedVideoAdRewarded");
        long time = new Date().getTime();
        this.j.a(this, this.o);
        Map<String, Object> n = n();
        Placement placement = this.o;
        if (placement != null) {
            n.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, placement.getPlacementName());
            n.put(IronSourceConstants.EVENTS_REWARD_NAME, this.o.getRewardName());
            n.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(this.o.getRewardAmount()));
        }
        if (!TextUtils.isEmpty(H.a().m)) {
            n.put(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, H.a().m);
        }
        if (H.a().n != null) {
            for (String str : H.a().n.keySet()) {
                n.put(ContentMetadata.KEY_CUSTOM_PREFIX + str, H.a().n.get(str));
            }
        }
        if (!TextUtils.isEmpty(this.f10729b)) {
            n.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f10729b);
        }
        JSONObject jSONObject = this.q;
        if (jSONObject != null && jSONObject.length() > 0) {
            n.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.q);
        }
        if (b(1010)) {
            com.ironsource.mediationsdk.a.h.e();
            com.ironsource.mediationsdk.a.h.a(n, this.r, this.s);
        }
        n.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(this.f10876h));
        com.ironsource.mediationsdk.a.c cVar = new com.ironsource.mediationsdk.a.c(1010, new JSONObject(n));
        cVar.a(IronSourceConstants.EVENTS_TRANS_ID, IronSourceUtils.getTransId(cVar.b(), k()));
        long j = this.v;
        if (j != 0) {
            long j2 = time - j;
            c("onRewardedVideoAdRewarded timeAfterClosed=" + j2);
            cVar.a("duration", Long.valueOf(j2));
        }
        com.ironsource.mediationsdk.a.h.e().b(cVar);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        c("onRewardedVideoAdShowFailed error=" + ironSourceError.getErrorMessage());
        a(IronSourceConstants.RV_INSTANCE_SHOW_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}});
        synchronized (this.t) {
            if (this.f10728a != a.SHOW_IN_PROGRESS) {
                b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_showFailed)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showFailed: " + this.f10728a}});
                return;
            }
            a(a.ENDED);
            this.j.a(ironSourceError, this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdStarted() {
        c("onRewardedVideoAdStarted");
        this.j.e(this);
        a(IronSourceConstants.RV_INSTANCE_STARTED, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdVisible() {
        c("onRewardedVideoAdVisible");
        a(IronSourceConstants.RV_INSTANCE_VISIBLE, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAvailabilityChanged(boolean z) {
        boolean z2;
        c("onRewardedVideoAvailabilityChanged available=" + z + " state=" + this.f10728a.name());
        synchronized (this.t) {
            if (this.f10728a == a.LOAD_IN_PROGRESS) {
                a(z ? a.LOADED : a.NOT_LOADED);
                z2 = false;
            } else {
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                b(IronSourceConstants.RV_INSTANCE_AVAILABILITY_TRUE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, this.f10728a.name()}});
                return;
            } else {
                b(IronSourceConstants.RV_INSTANCE_AVAILABILITY_FALSE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_RV_LOAD_UNEXPECTED_CALLBACK)}, new Object[]{"duration", Long.valueOf(r())}, new Object[]{IronSourceConstants.EVENTS_EXT1, this.f10728a.name()}});
                return;
            }
        }
        q();
        b(z ? 1002 : IronSourceConstants.RV_INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{"duration", Long.valueOf(r())}});
        if (z) {
            this.j.a(this);
        } else {
            this.j.b(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoInitFailed(IronSourceError ironSourceError) {
        c("onRewardedVideoInitFailed error=" + ironSourceError.getErrorMessage());
        q();
        b(IronSourceConstants.RV_INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_RV_LOAD_FAIL_DUE_TO_INIT)}, new Object[]{"duration", Long.valueOf(r())}});
        b(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(r())}});
        synchronized (this.t) {
            if (this.f10728a != a.INIT_IN_PROGRESS) {
                b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_initFailed)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "initFailed: " + this.f10728a}});
                return;
            }
            a(a.NO_INIT);
            this.j.b(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoInitSuccess() {
        c("onRewardedVideoInitSuccess");
        synchronized (this.t) {
            if (this.f10728a != a.INIT_IN_PROGRESS) {
                b(IronSourceConstants.RV_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_initSuccess)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "initSuccess: " + this.f10728a}});
            } else {
                a(a.NOT_LOADED);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoLoadFailed(IronSourceError ironSourceError) {
        if (ironSourceError.getErrorCode() == 1058) {
            a(IronSourceConstants.RV_INSTANCE_LOAD_NO_FILL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(r())}}, false);
            return;
        }
        if (ironSourceError.getErrorCode() == 1057) {
            this.i = Long.valueOf(System.currentTimeMillis());
        }
        a(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(r())}}, false);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoLoadSuccess() {
    }
}
