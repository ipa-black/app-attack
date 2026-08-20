package com.bytedance.sdk.openadsdk.kYc;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* compiled from: StrategyDependWrapper.java */
/* loaded from: classes2.dex */
public class Tgh implements fl {
    Handler Qhi = null;
    private fl cJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tgh(fl flVar) {
        this.cJ = flVar;
    }

    @Override // com.bytedance.sdk.openadsdk.kYc.fl
    public ExecutorService Qhi() {
        fl flVar = this.cJ;
        if (flVar == null || flVar.Qhi() == null) {
            return Executors.newCachedThreadPool();
        }
        return this.cJ.Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.kYc.fl
    public Context cJ() {
        fl flVar = this.cJ;
        if (flVar == null || flVar.cJ() == null) {
            return Sf();
        }
        return this.cJ.cJ();
    }

    @Override // com.bytedance.sdk.openadsdk.kYc.fl
    public String ac() {
        fl flVar = this.cJ;
        if (flVar == null || TextUtils.isEmpty(flVar.ac())) {
            return "null";
        }
        return this.cJ.ac();
    }

    @Override // com.bytedance.sdk.openadsdk.kYc.fl
    public Handler CJ() {
        fl flVar = this.cJ;
        if (flVar == null || flVar.ROR() == null) {
            HandlerThread handlerThread = new HandlerThread("pag_strategy", -1);
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper());
            this.Qhi = handler;
            return handler;
        }
        return this.cJ.CJ();
    }

    @Override // com.bytedance.sdk.openadsdk.kYc.fl
    public String fl() {
        fl flVar = this.cJ;
        if (flVar != null) {
            return flVar.fl();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.kYc.fl
    public JSONObject Tgh() {
        fl flVar = this.cJ;
        if (flVar != null) {
            return flVar.Tgh();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.kYc.fl
    public Map<String, String> ROR() {
        fl flVar = this.cJ;
        if (flVar == null || flVar.ROR() == null) {
            return new HashMap();
        }
        return this.cJ.ROR();
    }

    @Override // com.bytedance.sdk.openadsdk.kYc.fl
    public JSONObject Qhi(JSONObject jSONObject) {
        fl flVar = this.cJ;
        return flVar != null ? flVar.Qhi(jSONObject) : jSONObject;
    }

    private Context Sf() {
        try {
            Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
            method.setAccessible(true);
            Object invoke = method.invoke(null, new Object[0]);
            return (Application) invoke.getClass().getMethod("getApplication", new Class[0]).invoke(invoke, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }
}
