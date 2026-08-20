package com.applovin.impl.sdk.e;

import android.text.TextUtils;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class g extends a {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.network.i f5696a;

    /* renamed from: e  reason: collision with root package name */
    private final AppLovinPostbackListener f5697e;

    /* renamed from: f  reason: collision with root package name */
    private final o.a f5698f;

    public g(com.applovin.impl.sdk.network.i iVar, o.a aVar, com.applovin.impl.sdk.n nVar, AppLovinPostbackListener appLovinPostbackListener) {
        super("TaskDispatchPostback", nVar);
        if (iVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        this.f5696a = iVar;
        this.f5697e = appLovinPostbackListener;
        this.f5698f = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        u<Object> uVar = new u<Object>(this.f5696a, d()) { // from class: com.applovin.impl.sdk.e.g.2

            /* renamed from: a  reason: collision with root package name */
            final String f5700a;

            {
                this.f5700a = g.this.f5696a.a();
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, Object obj) {
                com.applovin.impl.sdk.v vVar = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "Failed to dispatch postback. Error code: " + i + " URL: " + this.f5700a);
                }
                if (g.this.f5697e != null) {
                    g.this.f5697e.onPostbackFailure(this.f5700a, i);
                }
                if (g.this.f5696a.p()) {
                    this.f5674b.aj().a(g.this.f5696a.q(), this.f5700a, i, obj, str, false);
                }
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(Object obj, int i) {
                if (obj instanceof String) {
                    for (String str : this.f5674b.b(com.applovin.impl.sdk.c.b.aX)) {
                        if (str.startsWith(str)) {
                            String str2 = (String) obj;
                            if (TextUtils.isEmpty(str2)) {
                                continue;
                            } else {
                                try {
                                    JSONObject jSONObject = new JSONObject(str2);
                                    com.applovin.impl.sdk.utils.i.d(jSONObject, this.f5674b);
                                    com.applovin.impl.sdk.utils.i.c(jSONObject, this.f5674b);
                                    com.applovin.impl.sdk.utils.i.e(jSONObject, this.f5674b);
                                    break;
                                } catch (JSONException unused) {
                                    continue;
                                }
                            }
                        }
                    }
                }
                if (g.this.f5697e != null) {
                    g.this.f5697e.onPostbackSuccess(this.f5700a);
                }
                if (g.this.f5696a.p()) {
                    this.f5674b.aj().a(g.this.f5696a.q(), this.f5700a, i, obj, null, true);
                }
            }
        };
        uVar.a(this.f5698f);
        d().V().a((a) uVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (StringUtils.isValidString(this.f5696a.a())) {
            if (this.f5696a.r()) {
                com.applovin.impl.adview.d.a(this.f5696a, d(), new AppLovinPostbackListener() { // from class: com.applovin.impl.sdk.e.g.1
                    @Override // com.applovin.sdk.AppLovinPostbackListener
                    public void onPostbackFailure(String str, int i) {
                        g.this.a();
                    }

                    @Override // com.applovin.sdk.AppLovinPostbackListener
                    public void onPostbackSuccess(String str) {
                        if (g.this.f5697e != null) {
                            g.this.f5697e.onPostbackSuccess(g.this.f5696a.a());
                        }
                    }
                });
                return;
            } else {
                a();
                return;
            }
        }
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.c(this.f5675c, "Requested URL is not valid; nothing to do...");
        }
        AppLovinPostbackListener appLovinPostbackListener = this.f5697e;
        if (appLovinPostbackListener != null) {
            appLovinPostbackListener.onPostbackFailure(this.f5696a.a(), AppLovinErrorCodes.INVALID_URL);
        }
    }
}
