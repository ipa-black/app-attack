package com.ironsource.sdk.service.Connectivity;

import android.content.Context;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class b implements d {

    /* renamed from: a  reason: collision with root package name */
    public c f12102a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(JSONObject jSONObject, Context context) {
        this.f12102a = jSONObject.optInt("connectivityStrategy") == 1 ? new a(this) : !com.ironsource.environment.c.b(context, "android.permission.ACCESS_NETWORK_STATE") ? new a(this) : new e(this);
        Logger.i("b", "created ConnectivityAdapter with strategy " + this.f12102a.getClass().getSimpleName());
    }

    @Override // com.ironsource.sdk.service.Connectivity.d
    public void a() {
    }

    @Override // com.ironsource.sdk.service.Connectivity.d
    public void a(String str) {
    }

    @Override // com.ironsource.sdk.service.Connectivity.d
    public void a(String str, JSONObject jSONObject) {
    }
}
