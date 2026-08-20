package com.ironsource.mediationsdk;

import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.w  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1366w {

    /* renamed from: a  reason: collision with root package name */
    protected AbstractAdapter f11476a;

    /* renamed from: b  reason: collision with root package name */
    protected com.ironsource.mediationsdk.model.a f11477b;

    /* renamed from: c  reason: collision with root package name */
    protected JSONObject f11478c;

    /* renamed from: d  reason: collision with root package name */
    int f11479d;

    /* renamed from: h  reason: collision with root package name */
    protected String f11483h;
    private final Object k = new Object();
    private final Object l = new Object();
    private a i = a.NOT_LOADED;
    private Timer j = null;

    /* renamed from: e  reason: collision with root package name */
    protected String f11480e = "";

    /* renamed from: f  reason: collision with root package name */
    protected JSONObject f11481f = null;

    /* renamed from: g  reason: collision with root package name */
    protected List<String> f11482g = new ArrayList();

    /* renamed from: com.ironsource.mediationsdk.w$a */
    /* loaded from: classes3.dex */
    public enum a {
        NOT_LOADED,
        LOAD_IN_PROGRESS,
        LOADED,
        SHOW_IN_PROGRESS
    }

    public C1366w(com.ironsource.mediationsdk.model.a aVar, AbstractAdapter abstractAdapter) {
        this.f11477b = aVar;
        this.f11476a = abstractAdapter;
        this.f11478c = aVar.f11236b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a a(a[] aVarArr, a aVar) {
        a aVar2;
        synchronized (this.k) {
            aVar2 = this.i;
            if (Arrays.asList(aVarArr).contains(this.i)) {
                a(aVar);
            }
        }
        return aVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(a aVar) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "DemandOnlySmash " + this.f11477b.f11235a.getProviderName() + ": current state=" + this.i + ", new state=" + aVar, 0);
        synchronized (this.k) {
            this.i = aVar;
        }
    }

    public final void a(String str) {
        C1349f.a();
        this.f11483h = C1349f.d(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(TimerTask timerTask) {
        synchronized (this.l) {
            h();
            Timer timer = new Timer();
            this.j = timer;
            timer.schedule(timerTask, this.f11479d * 1000);
        }
    }

    public final void a(JSONObject jSONObject) {
        this.f11481f = jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(a aVar, a aVar2) {
        synchronized (this.k) {
            if (this.i == aVar) {
                a(aVar2);
                return true;
            }
            return false;
        }
    }

    public final void b(String str) {
        this.f11480e = str;
    }

    public Map<String, Object> c() {
        HashMap hashMap = new HashMap();
        try {
            AbstractAdapter abstractAdapter = this.f11476a;
            hashMap.put("providerAdapterVersion", abstractAdapter != null ? abstractAdapter.getVersion() : "");
            AbstractAdapter abstractAdapter2 = this.f11476a;
            hashMap.put("providerSDKVersion", abstractAdapter2 != null ? abstractAdapter2.getCoreSDKVersion() : "");
            hashMap.put("spId", this.f11477b.f11235a.getSubProviderId());
            hashMap.put(IronSourceConstants.EVENTS_PROVIDER, this.f11477b.f11235a.getAdSourceNameForEvents());
            hashMap.put(IronSourceConstants.EVENTS_DEMAND_ONLY, 1);
            if (this.f11477b.f11237c) {
                hashMap.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
                hashMap.put("instanceType", 2);
                if (!TextUtils.isEmpty(this.f11480e)) {
                    hashMap.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f11480e);
                }
                JSONObject jSONObject = this.f11481f;
                if (jSONObject != null && jSONObject.length() > 0) {
                    hashMap.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.f11481f);
                }
            } else {
                hashMap.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 0);
                hashMap.put("instanceType", 1);
            }
            if (!TextUtils.isEmpty(this.f11483h)) {
                hashMap.put(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID, this.f11483h);
            }
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getProviderEventData " + d() + ")", e2);
        }
        return hashMap;
    }

    public final String d() {
        return this.f11477b.f11235a.getProviderName();
    }

    public final int e() {
        return this.f11477b.f11238d;
    }

    public final String f() {
        return this.f11477b.f11235a.getSubProviderId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String g() {
        a aVar = this.i;
        return aVar == null ? "null" : aVar.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        synchronized (this.l) {
            Timer timer = this.j;
            if (timer != null) {
                timer.cancel();
                this.j = null;
            }
        }
    }

    public final boolean i() {
        return this.f11477b.f11237c;
    }
}
