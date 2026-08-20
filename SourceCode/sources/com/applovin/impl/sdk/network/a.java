package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.e.u;
import com.applovin.impl.sdk.n;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f5891a;

    /* renamed from: e  reason: collision with root package name */
    private final c<JSONObject> f5892e;

    public a(String str, c<JSONObject> cVar, n nVar) {
        super("CommunicatorRequestTask:" + str, nVar);
        this.f5891a = str;
        this.f5892e = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5674b.V().a((com.applovin.impl.sdk.e.a) new u<JSONObject>(this.f5892e, this.f5674b, g()) { // from class: com.applovin.impl.sdk.network.a.1
            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, JSONObject jSONObject) {
                this.f5674b.aj().a(a.this.f5891a, a.this.f5892e.a(), i, jSONObject, str, false);
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(JSONObject jSONObject, int i) {
                this.f5674b.aj().a(a.this.f5891a, a.this.f5892e.a(), i, jSONObject, null, true);
            }
        });
    }
}
