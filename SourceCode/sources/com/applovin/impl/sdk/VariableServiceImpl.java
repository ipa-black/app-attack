package com.applovin.impl.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.e.m;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinVariableService;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class VariableServiceImpl implements AppLovinVariableService {

    /* renamed from: a  reason: collision with root package name */
    private final n f5425a;

    /* renamed from: d  reason: collision with root package name */
    private AppLovinVariableService.OnVariablesUpdateListener f5428d;

    /* renamed from: e  reason: collision with root package name */
    private Bundle f5429e;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f5426b = new AtomicBoolean();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f5427c = new AtomicBoolean();

    /* renamed from: f  reason: collision with root package name */
    private final Object f5430f = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public VariableServiceImpl(n nVar) {
        this.f5425a = nVar;
        String str = (String) nVar.a(com.applovin.impl.sdk.c.d.j);
        if (StringUtils.isValidString(str)) {
            updateVariables(JsonUtils.deserialize(str));
        }
    }

    private Object a(String str, Object obj, Class<?> cls) {
        if (TextUtils.isEmpty(str)) {
            v.i("AppLovinVariableService", "Unable to retrieve variable value for empty name");
            return obj;
        }
        if (!this.f5425a.d()) {
            v.h("AppLovinSdk", "Attempted to retrieve variable before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        synchronized (this.f5430f) {
            if (this.f5429e == null) {
                v.i("AppLovinVariableService", "Unable to retrieve variable value for name \"" + str + "\". No variables returned by the server.");
                return obj;
            } else if (cls.equals(String.class)) {
                return this.f5429e.getString(str, (String) obj);
            } else if (cls.equals(Boolean.class)) {
                return Boolean.valueOf(this.f5429e.getBoolean(str, ((Boolean) obj).booleanValue()));
            } else {
                throw new IllegalStateException("Unable to retrieve variable value for " + str);
            }
        }
    }

    private void a() {
        Bundle bundle;
        synchronized (this.f5430f) {
            if (this.f5428d != null && (bundle = this.f5429e) != null) {
                final Bundle bundle2 = (Bundle) bundle.clone();
                AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.VariableServiceImpl.2
                    @Override // java.lang.Runnable
                    public void run() {
                        VariableServiceImpl.this.f5428d.onVariablesUpdate(bundle2);
                    }
                });
            }
        }
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public boolean getBoolean(String str, boolean z) {
        return ((Boolean) a(str, Boolean.valueOf(z), Boolean.class)).booleanValue();
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public String getString(String str) {
        return getString(str, null);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    public String getString(String str, String str2) {
        return (String) a(str, str2, String.class);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    @Deprecated
    public void loadVariables() {
        String str;
        if (!this.f5425a.d()) {
            str = "The AppLovin SDK is waiting for the initial variables to be returned upon completing initialization.";
        } else if (this.f5426b.compareAndSet(false, true)) {
            this.f5425a.V().a(new com.applovin.impl.sdk.e.m(this.f5425a, new m.a() { // from class: com.applovin.impl.sdk.VariableServiceImpl.1
                @Override // com.applovin.impl.sdk.e.m.a
                public void a() {
                    VariableServiceImpl.this.f5426b.set(false);
                }
            }), o.a.BACKGROUND);
            return;
        } else {
            str = "Ignored explicit variables load. Service is already in the process of retrieving the latest set of variables.";
        }
        v.i("AppLovinVariableService", str);
    }

    @Override // com.applovin.sdk.AppLovinVariableService
    @Deprecated
    public void setOnVariablesUpdateListener(AppLovinVariableService.OnVariablesUpdateListener onVariablesUpdateListener) {
        this.f5428d = onVariablesUpdateListener;
        synchronized (this.f5430f) {
            if (onVariablesUpdateListener != null) {
                if (this.f5429e != null && this.f5427c.compareAndSet(false, true)) {
                    this.f5425a.D();
                    if (v.a()) {
                        this.f5425a.D().b("AppLovinVariableService", "Setting initial listener");
                    }
                    a();
                }
            }
        }
    }

    public String toString() {
        return "VariableService{variables=" + this.f5429e + ", listener=" + this.f5428d + '}';
    }

    public void updateVariables(JSONObject jSONObject) {
        this.f5425a.D();
        if (v.a()) {
            this.f5425a.D().b("AppLovinVariableService", "Updating variables: " + jSONObject + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        synchronized (this.f5430f) {
            this.f5429e = JsonUtils.toBundle(jSONObject);
            a();
            this.f5425a.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.j, (com.applovin.impl.sdk.c.d<String>) jSONObject.toString());
        }
    }
}
