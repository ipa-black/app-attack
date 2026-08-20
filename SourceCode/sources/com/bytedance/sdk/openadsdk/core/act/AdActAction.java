package com.bytedance.sdk.openadsdk.core.act;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.browser.customtabs.EngagementSignalsCallback;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.model.Gm;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdActAction {
    private String CJ;
    private CustomTabsSession ROR;
    private ActServiceConnection Sf;
    private tP ac;
    private Context cJ;
    private String fl;
    private BindCustomTabsServiceCallback hpZ;
    private Long pA;
    private CustomTabsClient Tgh = null;
    private boolean hm = false;
    private boolean WAv = false;
    private boolean Gm = false;
    private boolean zc = false;
    private boolean ABk = false;
    private long iMK = 0;
    private cJ HzH = new cJ() { // from class: com.bytedance.sdk.openadsdk.core.act.AdActAction.1
        @Override // com.bytedance.sdk.openadsdk.core.act.cJ
        public void Qhi(final CustomTabsClient customTabsClient) {
            if (lG.fl()) {
                AdActAction.this.Qhi(customTabsClient);
            } else {
                lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.act.AdActAction.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdActAction.this.Qhi(customTabsClient);
                    }
                });
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.act.cJ
        public void Qhi() {
            AdActAction.this.Tgh = null;
            AdActAction.this.Sf = null;
            AdActAction.this.ROR = null;
        }
    };
    public EngagementSignalsCallback Qhi = new PAGEngagementSignalsCallback();
    private CustomTabsCallback kYc = new PAGCustomTabsCallback();

    /* loaded from: classes2.dex */
    public interface BindCustomTabsServiceCallback {
        void onBindFail(int i, String str);

        void onBindSuccess(CustomTabsSession customTabsSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(CustomTabsClient customTabsClient) {
        this.Tgh = customTabsClient;
        this.ROR = customTabsClient.newSession(this.kYc);
        com.bytedance.sdk.openadsdk.Gm.Qhi.cJ Qhi = Qhi(9);
        try {
            boolean isEngagementSignalsApiAvailable = this.ROR.isEngagementSignalsApiAvailable(Bundle.EMPTY);
            boolean z = false;
            if (isEngagementSignalsApiAvailable) {
                boolean engagementSignalsCallback = this.ROR.setEngagementSignalsCallback(this.Qhi, Bundle.EMPTY);
                Qhi.ac(1);
                Qhi.Qhi(1);
                if (engagementSignalsCallback) {
                    Qhi.CJ(1);
                    Qhi.cJ(1);
                } else {
                    Qhi.cJ(0);
                }
                z = engagementSignalsCallback;
            } else {
                Qhi.ac(0);
                Qhi.Qhi(0);
            }
            new Object[]{"pagact:  api=", Boolean.valueOf(isEngagementSignalsApiAvailable), "  event=", Boolean.valueOf(z)};
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(Qhi);
            BindCustomTabsServiceCallback bindCustomTabsServiceCallback = this.hpZ;
            if (bindCustomTabsServiceCallback != null) {
                bindCustomTabsServiceCallback.onBindSuccess(this.ROR);
            }
        } catch (Throwable th) {
            BindCustomTabsServiceCallback bindCustomTabsServiceCallback2 = this.hpZ;
            if (bindCustomTabsServiceCallback2 != null) {
                bindCustomTabsServiceCallback2.onBindFail(11, th.getMessage());
            }
        }
    }

    /* loaded from: classes2.dex */
    public class PAGEngagementSignalsCallback implements EngagementSignalsCallback {
        public PAGEngagementSignalsCallback() {
        }

        @Override // androidx.browser.customtabs.EngagementSignalsCallback
        public void onVerticalScrollEvent(boolean z, Bundle bundle) {
            AdActAction.this.iMK = System.currentTimeMillis();
            if (AdActAction.this.ac == null || AdActAction.this.hm) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("url", AdActAction.this.fl);
                jSONObject.put("down_time", AdActAction.this.iMK);
                long currentTimeMillis = System.currentTimeMillis();
                jSONObject.put("up_time", currentTimeMillis);
                com.bytedance.sdk.openadsdk.cJ.ac.cJ(AdActAction.this.ac, js.Qhi(AdActAction.this.ac), "in_web_click", jSONObject, currentTimeMillis - AdActAction.this.iMK);
            } catch (Throwable th) {
                ABk.Qhi("AdActAction", th.getMessage());
            }
            if (!TextUtils.isEmpty(tP.Qhi(AdActAction.this.cJ, AdActAction.this.ac))) {
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(Constants.CLICK, AdActAction.this.ac, new Gm.Qhi().cJ(AdActAction.this.iMK).Qhi(System.currentTimeMillis()).cJ(hm.cJ().Qhi() ? 1 : 2).ac(zn.ROR(AdActAction.this.cJ)).Qhi(zn.fl(AdActAction.this.cJ)).cJ(zn.Tgh(AdActAction.this.cJ)).Qhi(), js.Qhi(AdActAction.this.ac), true, (Map<String, Object>) new HashMap(), 2);
            }
            AdActAction.this.hm = true;
        }

        @Override // androidx.browser.customtabs.EngagementSignalsCallback
        public void onGreatestScrollPercentageIncreased(int i, Bundle bundle) {
            new Object[]{"pagact scrollPercentage=", Integer.valueOf(i)};
        }

        @Override // androidx.browser.customtabs.EngagementSignalsCallback
        public void onSessionEnded(boolean z, Bundle bundle) {
            new Object[]{"pagact didUserInteract=", Boolean.valueOf(z)};
        }
    }

    /* loaded from: classes2.dex */
    public class PAGCustomTabsCallback extends CustomTabsCallback {
        public PAGCustomTabsCallback() {
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
            new Object[]{"pagact navigationEvent=", Integer.valueOf(i)};
            if (i == 1) {
                AdActAction.this.pA = Long.valueOf(SystemClock.elapsedRealtime());
                if (AdActAction.this.zc || AdActAction.this.ac == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    AdActAction.this.Qhi("load_start", jSONObject, 0L);
                    AdActAction.this.zc = true;
                } catch (Throwable th) {
                    ABk.Qhi("AdActAction", th.getMessage());
                }
            } else if (i == 2) {
                if (AdActAction.this.WAv || AdActAction.this.pA == null || AdActAction.this.ac == null) {
                    return;
                }
                long longValue = AdActAction.this.pA.longValue() - SystemClock.elapsedRealtime();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("first_page", true);
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                    jSONObject2.put("url", AdActAction.this.fl);
                    jSONObject2.put("preload_h5_type", AdActAction.this.ac.jN());
                    AdActAction.this.Qhi("load_finish", jSONObject2, longValue);
                    AdActAction.this.WAv = true;
                } catch (Throwable th2) {
                    ABk.Qhi("AdActAction", th2.getMessage());
                }
            } else if (i != 3) {
                if (i != 6) {
                    return;
                }
                AdActAction.this.Qhi();
                if (AdActAction.this.ABk || AdActAction.this.ac == null || AdActAction.this.Gm || AdActAction.this.WAv || AdActAction.this.pA == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(AdActAction.this.ac, js.Qhi(AdActAction.this.ac), SystemClock.elapsedRealtime() - AdActAction.this.pA.longValue(), 0, 1);
            } else if (AdActAction.this.Gm || AdActAction.this.ac == null) {
            } else {
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.putOpt("render_type", "h5");
                    jSONObject3.putOpt("render_type_2", 0);
                    jSONObject3.put("url", AdActAction.this.fl);
                    jSONObject3.put("preload_h5_type", AdActAction.this.ac.jN());
                    AdActAction.this.Qhi("load_fail", jSONObject3, 0L);
                    AdActAction.this.Gm = true;
                } catch (Throwable th3) {
                    ABk.Qhi("AdActAction", th3.getMessage());
                }
            }
        }
    }

    public AdActAction(Context context, tP tPVar, String str, String str2) {
        this.cJ = context;
        this.ac = tPVar;
        this.CJ = str;
        this.fl = str2;
    }

    public void Qhi(BindCustomTabsServiceCallback bindCustomTabsServiceCallback) {
        this.hpZ = bindCustomTabsServiceCallback;
        if (this.cJ == null || this.ac == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(Qhi(8));
            String Qhi = Qhi.Qhi(this.cJ);
            if (Qhi == null) {
                return;
            }
            ActServiceConnection actServiceConnection = new ActServiceConnection(this.HzH);
            this.Sf = actServiceConnection;
            CustomTabsClient.bindCustomTabsService(this.cJ, Qhi, actServiceConnection);
        } catch (Throwable th) {
            String message = th.getMessage();
            ABk.Qhi("AdActAction", message);
            BindCustomTabsServiceCallback bindCustomTabsServiceCallback2 = this.hpZ;
            if (bindCustomTabsServiceCallback2 != null) {
                bindCustomTabsServiceCallback2.onBindFail(10, message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi() {
        try {
            ActServiceConnection actServiceConnection = this.Sf;
            if (actServiceConnection == null) {
                return;
            }
            this.cJ.unbindService(actServiceConnection);
            this.Tgh = null;
            this.ROR = null;
            this.Sf = null;
        } catch (Throwable th) {
            ABk.Qhi("AdActAction", th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(String str, final JSONObject jSONObject, final long j) {
        if (this.ac == null || TextUtils.isEmpty(str)) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        tP tPVar = this.ac;
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(currentTimeMillis, tPVar, js.Qhi(tPVar), str, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.act.AdActAction.2
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject2;
                Throwable th;
                try {
                    jSONObject.put("is_playable", bxS.cJ(AdActAction.this.ac) ? 1 : 0);
                    jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(AdActAction.this.ac) ? 1 : 0);
                    jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                        long j2 = j;
                        if (j2 > 0) {
                            jSONObject2.put("duration", j2);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        ABk.Qhi("AdActAction", th.getMessage());
                        return jSONObject2;
                    }
                } catch (Throwable th3) {
                    jSONObject2 = null;
                    th = th3;
                }
                return jSONObject2;
            }
        });
    }

    private com.bytedance.sdk.openadsdk.Gm.Qhi.cJ Qhi(int i) {
        com.bytedance.sdk.openadsdk.Gm.Qhi.cJ cJVar = new com.bytedance.sdk.openadsdk.Gm.Qhi.cJ();
        cJVar.Qhi(this.CJ);
        cJVar.Qhi(this.ac);
        cJVar.cJ(js.Qhi(this.ac));
        cJVar.Qhi(i);
        cJVar.Qhi(false);
        cJVar.cJ(8);
        return cJVar;
    }
}
