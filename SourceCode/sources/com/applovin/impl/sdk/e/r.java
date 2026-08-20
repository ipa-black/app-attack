package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class r extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinAdLoadListener f5753a;

    /* renamed from: e  reason: collision with root package name */
    private final a f5754e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a extends com.applovin.impl.b.e {
        a(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.n nVar) {
            super(jSONObject, jSONObject2, bVar, nVar);
        }

        void a(com.applovin.impl.sdk.utils.s sVar) {
            if (sVar == null) {
                throw new IllegalArgumentException("No aggregated vast response specified");
            }
            this.f4538a.add(sVar);
        }
    }

    /* loaded from: classes.dex */
    private static final class b extends r {

        /* renamed from: a  reason: collision with root package name */
        private final String f5755a;

        b(String str, com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
            super(eVar, appLovinAdLoadListener, nVar);
            this.f5755a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a(a(this.f5755a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c extends r {

        /* renamed from: a  reason: collision with root package name */
        private final JSONObject f5756a;

        c(com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
            super(eVar, appLovinAdLoadListener, nVar);
            this.f5756a = eVar.c();
        }

        @Override // java.lang.Runnable
        public void run() {
            com.applovin.impl.b.f fVar;
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Processing SDK JSON response...");
            }
            String string = JsonUtils.getString(this.f5756a, "xml", null);
            if (!StringUtils.isValidString(string)) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "No VAST response received.");
                }
                fVar = com.applovin.impl.b.f.NO_WRAPPER_RESPONSE;
            } else if (string.length() < ((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.eq)).intValue()) {
                a(a(string));
                return;
            } else {
                com.applovin.impl.sdk.v vVar3 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "VAST response is over max length");
                }
                fVar = com.applovin.impl.b.f.XML_PARSING;
            }
            a(fVar);
        }
    }

    /* loaded from: classes.dex */
    private static final class d extends r {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.sdk.utils.s f5757a;

        d(com.applovin.impl.sdk.utils.s sVar, com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
            super(eVar, appLovinAdLoadListener, nVar);
            if (sVar == null) {
                throw new IllegalArgumentException("No response specified.");
            }
            if (eVar == null) {
                throw new IllegalArgumentException("No context specified.");
            }
            if (appLovinAdLoadListener == null) {
                throw new IllegalArgumentException("No callback specified.");
            }
            this.f5757a = sVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Processing VAST Wrapper response...");
            }
            a(this.f5757a);
        }
    }

    r(com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskProcessVastResponse", nVar);
        if (eVar == null) {
            throw new IllegalArgumentException("No context specified.");
        }
        this.f5753a = appLovinAdLoadListener;
        this.f5754e = (a) eVar;
    }

    public static r a(com.applovin.impl.sdk.utils.s sVar, com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        return new d(sVar, eVar, appLovinAdLoadListener, nVar);
    }

    public static r a(String str, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        return new b(str, new a(jSONObject, jSONObject2, bVar, nVar), appLovinAdLoadListener, nVar);
    }

    public static r a(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        return new c(new a(jSONObject, jSONObject2, bVar, nVar), appLovinAdLoadListener, nVar);
    }

    protected com.applovin.impl.sdk.utils.s a(String str) {
        try {
            return com.applovin.impl.sdk.utils.t.a(str, this.f5674b);
        } catch (Throwable th) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Failed to process VAST response", th);
            }
            a(com.applovin.impl.b.f.XML_PARSING);
            return null;
        }
    }

    void a(com.applovin.impl.b.f fVar) {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.e(this.f5675c, "Failed to process VAST response due to VAST error code " + fVar);
        }
        com.applovin.impl.b.m.a(this.f5754e, this.f5753a, fVar, -6, this.f5674b);
    }

    void a(com.applovin.impl.sdk.utils.s sVar) {
        com.applovin.impl.b.f fVar;
        com.applovin.impl.sdk.e.a tVar;
        int a2 = this.f5754e.a();
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Finished parsing XML at depth " + a2);
        }
        this.f5754e.a(sVar);
        if (!com.applovin.impl.b.m.a(sVar)) {
            if (com.applovin.impl.b.m.b(sVar)) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "VAST response is inline. Rendering ad...");
                }
                tVar = new t(this.f5754e, this.f5753a, this.f5674b);
                this.f5674b.V().a(tVar);
                return;
            }
            com.applovin.impl.sdk.v vVar3 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.e(this.f5675c, "VAST response is an error");
            }
            fVar = com.applovin.impl.b.f.NO_WRAPPER_RESPONSE;
            a(fVar);
        }
        int intValue = ((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.er)).intValue();
        if (a2 < intValue) {
            com.applovin.impl.sdk.v vVar4 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "VAST response is wrapper. Resolving...");
            }
            tVar = new x(this.f5754e, this.f5753a, this.f5674b);
            this.f5674b.V().a(tVar);
            return;
        }
        com.applovin.impl.sdk.v vVar5 = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.e(this.f5675c, "Reached beyond max wrapper depth of " + intValue);
        }
        fVar = com.applovin.impl.b.f.WRAPPER_LIMIT_REACHED;
        a(fVar);
    }
}
