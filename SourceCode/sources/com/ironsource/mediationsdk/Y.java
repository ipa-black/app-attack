package com.ironsource.mediationsdk;

import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.n;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class Y implements n.a {

    /* renamed from: c  reason: collision with root package name */
    protected AbstractAdapter f10871c;

    /* renamed from: d  reason: collision with root package name */
    protected com.ironsource.mediationsdk.model.a f10872d;

    /* renamed from: e  reason: collision with root package name */
    boolean f10873e;

    /* renamed from: f  reason: collision with root package name */
    protected JSONObject f10874f;

    /* renamed from: g  reason: collision with root package name */
    protected String f10875g;

    /* renamed from: h  reason: collision with root package name */
    protected int f10876h;
    protected Long i = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Y(com.ironsource.mediationsdk.model.a aVar, AbstractAdapter abstractAdapter) {
        this.f10872d = aVar;
        this.f10871c = abstractAdapter;
        this.f10874f = aVar.f11236b;
    }

    private String a() {
        return this.f10872d.f11235a.isMultipleInstances() ? this.f10872d.f11235a.getProviderTypeForReflection() : this.f10872d.f11235a.getProviderName();
    }

    public final void b(String str) {
        C1349f.a();
        this.f10875g = C1349f.d(str);
    }

    public void d() {
        try {
            AbstractAdapter abstractAdapter = this.f10871c;
            if (abstractAdapter != null) {
                abstractAdapter.releaseMemory(this.f10872d.f11240f, this.f10874f);
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error("exception - " + e2.getMessage());
        }
        this.f10871c = null;
    }

    public int e() {
        return 1;
    }

    public final boolean h() {
        return this.f10872d.f11237c;
    }

    public final int i() {
        return this.f10872d.f11238d;
    }

    @Override // com.ironsource.mediationsdk.utils.n.a
    public final int j() {
        return this.f10872d.f11239e;
    }

    @Override // com.ironsource.mediationsdk.utils.n.a
    public final String k() {
        return this.f10872d.f11235a.getProviderName();
    }

    public final String l() {
        return this.f10872d.f11235a.getProviderTypeForReflection();
    }

    public final int m() {
        return this.f10876h;
    }

    public final Map<String, Object> n() {
        HashMap hashMap = new HashMap();
        try {
            AbstractAdapter abstractAdapter = this.f10871c;
            hashMap.put("providerAdapterVersion", abstractAdapter != null ? abstractAdapter.getVersion() : "");
            AbstractAdapter abstractAdapter2 = this.f10871c;
            hashMap.put("providerSDKVersion", abstractAdapter2 != null ? abstractAdapter2.getCoreSDKVersion() : "");
            hashMap.put("spId", this.f10872d.f11235a.getSubProviderId());
            hashMap.put(IronSourceConstants.EVENTS_PROVIDER, this.f10872d.f11235a.getAdSourceNameForEvents());
            hashMap.put("instanceType", Integer.valueOf(h() ? 2 : 1));
            hashMap.put(IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(e()));
            if (!TextUtils.isEmpty(this.f10875g)) {
                hashMap.put(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID, this.f10875g);
            }
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getProviderEventData " + k() + ")", e2);
        }
        return hashMap;
    }

    public final Long o() {
        return this.i;
    }

    public final String p() {
        return String.format("%s %s", a(), Integer.valueOf(hashCode()));
    }
}
