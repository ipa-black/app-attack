package com.appodeal.ads.adapters.bidmachine;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.appodeal.ads.AppodealStateParams;
import com.appodeal.ads.RestrictedData;
import com.appodeal.ads.networking.LoadingError;
import com.explorestack.iab.mraid.MraidLog;
import com.explorestack.iab.vast.VastLog;
import io.bidmachine.BidMachine;
import io.bidmachine.InitializationCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: BidMachineInitializer.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: d  reason: collision with root package name */
    public static final b f6480d = new b();

    /* renamed from: a  reason: collision with root package name */
    public ArrayList f6481a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f6482b = false;

    /* renamed from: c  reason: collision with root package name */
    public boolean f6483c = false;

    /* compiled from: BidMachineInitializer.java */
    /* loaded from: classes2.dex */
    public interface a {
        void onInitializationFailed(LoadingError loadingError);

        void onInitializationFinished();
    }

    public static b a() {
        return f6480d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        a(null);
    }

    public final void a(Context context, JSONObject jSONObject, AppodealStateParams appodealStateParams, a aVar) {
        if (jSONObject == null) {
            aVar.onInitializationFailed(LoadingError.InternalError);
            return;
        }
        MraidLog.addLogListener(c.a());
        VastLog.addLogListener(c.a());
        RestrictedData restrictedData = appodealStateParams.getRestrictedData();
        if (restrictedData.isUserInGdprScope()) {
            BidMachine.setSubjectToGDPR(Boolean.TRUE);
            BidMachine.setConsentConfig(restrictedData.isUserHasConsent(), restrictedData.getIabConsentString());
        }
        if (restrictedData.isUserInCcpaScope()) {
            String uSPrivacyString = restrictedData.getUSPrivacyString();
            if (!TextUtils.isEmpty(uSPrivacyString)) {
                BidMachine.setUSPrivacyString(uSPrivacyString);
            }
        }
        if (restrictedData.isUserAgeRestricted()) {
            BidMachine.setCoppa(Boolean.TRUE);
        }
        BidMachine.setTargetingParams(c.a(context, jSONObject, appodealStateParams.getRestrictedData()));
        BidMachine.setLoggingEnabled(appodealStateParams.isTestMode());
        BidMachine.setTestMode(appodealStateParams.isTestMode());
        synchronized (b.class) {
            if (this.f6483c) {
                aVar.onInitializationFinished();
            } else {
                if (this.f6481a == null) {
                    this.f6481a = new ArrayList();
                }
                this.f6481a.add(aVar);
            }
        }
        if (this.f6482b) {
            return;
        }
        this.f6482b = true;
        a(context, jSONObject);
    }

    public final void a(Context context, JSONObject jSONObject) {
        if (BidMachine.isInitialized()) {
            a(null);
            return;
        }
        String optString = jSONObject.optString("seller_id");
        if (TextUtils.isEmpty(optString)) {
            a(LoadingError.IncorrectAdunit);
            return;
        }
        String optString2 = jSONObject.optString("endpoint");
        if (!TextUtils.isEmpty(optString2)) {
            BidMachine.setEndpoint(optString2);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("mediation_config");
        if (optJSONArray != null) {
            BidMachine.registerNetworks(context, optJSONArray.toString());
        }
        BidMachine.initialize(context, optString, new InitializationCallback() { // from class: com.appodeal.ads.adapters.bidmachine.b$$ExternalSyntheticLambda0
            @Override // io.bidmachine.InitializationCallback
            public final void onInitialized() {
                b.this.b();
            }
        });
    }

    public final void a(final LoadingError loadingError) {
        final ArrayList arrayList;
        this.f6483c = loadingError == null;
        this.f6482b = false;
        if (this.f6481a != null) {
            synchronized (b.class) {
                arrayList = new ArrayList(this.f6481a);
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appodeal.ads.adapters.bidmachine.b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.a(arrayList, loadingError);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, LoadingError loadingError) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (this.f6483c) {
                aVar.onInitializationFinished();
            } else {
                aVar.onInitializationFailed(loadingError);
            }
        }
        synchronized (b.class) {
            this.f6481a.removeAll(list);
        }
    }
}
