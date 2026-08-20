package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.utils.Log;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes.dex */
public class ApdServiceRegistry {
    private static ApdServiceRegistry instance;
    private final Map<String, ApdService> services = new HashMap();

    /* loaded from: classes.dex */
    public class a implements ApdServiceInitializationListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f6367a;

        public a(String str) {
            this.f6367a = str;
        }

        @Override // com.appodeal.ads.ApdServiceInitializationListener
        public final void onInitializationFailed(LoadingError loadingError) {
            Log.log(LogConstants.KEY_SERVICE, LogConstants.EVENT_INITIALIZE_FAILED, loadingError == null ? String.format("%s", this.f6367a) : String.format("[%s]: %s (%s)", this.f6367a, loadingError.toString().toUpperCase(), Integer.valueOf(loadingError.getCode())));
        }

        @Override // com.appodeal.ads.ApdServiceInitializationListener
        public final void onInitializationFinished() {
            Log.log(LogConstants.KEY_SERVICE, LogConstants.EVENT_INITIALIZE, String.format("[%s]: Success", n5.a(this.f6367a)));
        }
    }

    private ApdServiceRegistry() {
    }

    public static synchronized ApdServiceRegistry getInstance() {
        ApdServiceRegistry apdServiceRegistry;
        synchronized (ApdServiceRegistry.class) {
            if (instance == null) {
                instance = new ApdServiceRegistry();
            }
            apdServiceRegistry = instance;
        }
        return apdServiceRegistry;
    }

    public static void register(ApdService apdService) {
        getInstance().registerService(apdService);
    }

    private void registerService(ApdService apdService) {
        this.services.put(apdService.getName(), apdService);
        Log.log(LogConstants.KEY_SERVICE, LogConstants.EVENT_REGISTER, apdService.getName());
    }

    public void initialize(Context context, JSONArray jSONArray) {
        if (context == null || jSONArray == null) {
            return;
        }
        try {
            if (jSONArray.length() == 0) {
                return;
            }
            initializeServiceConfiguration(context, jSONArray);
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    public void initializeServiceConfiguration(Context context, JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("status");
                ApdService apdService = this.services.get(optString);
                if (apdService != null) {
                    try {
                        g0 g0Var = new g0(optJSONObject);
                        q4 q4Var = q4.f7303a;
                        apdService.setLogging(r0.f7344d == Log.LogLevel.verbose);
                        apdService.dispatchInitialize(context, g0Var, new a(optString));
                    } catch (Throwable th) {
                        Log.log(th);
                    }
                } else {
                    Log.log(LogConstants.KEY_SERVICE, LogConstants.EVENT_INITIALIZE_FAILED, String.format("[%s]: %s", optString, "not found"));
                }
            }
        }
    }
}
