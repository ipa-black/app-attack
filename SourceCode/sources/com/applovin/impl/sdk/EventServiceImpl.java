package com.applovin.impl.sdk;

import android.content.Intent;
import android.text.TextUtils;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class EventServiceImpl implements AppLovinEventService {

    /* renamed from: a  reason: collision with root package name */
    private final n f5402a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f5403b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f5404c = new AtomicBoolean();

    public EventServiceImpl(n nVar) {
        this.f5402a = nVar;
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.bn)).booleanValue()) {
            this.f5403b = JsonUtils.toStringObjectMap((String) nVar.b((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.t, (com.applovin.impl.sdk.c.d<String>) JsonUtils.EMPTY_JSON));
            return;
        }
        this.f5403b = CollectionUtils.map();
        nVar.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.t, (com.applovin.impl.sdk.c.d<String>) JsonUtils.EMPTY_JSON);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a() {
        return ((String) this.f5402a.a(com.applovin.impl.sdk.c.b.be)) + "4.0/pix";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> a(q qVar, Map<String, String> map) {
        Map<String, String> map2 = CollectionUtils.map(map);
        boolean contains = this.f5402a.b(com.applovin.impl.sdk.c.b.bl).contains(qVar.a());
        map2.put("AppLovin-Event", contains ? qVar.a() : "postinstall");
        if (!contains) {
            map2.put("AppLovin-Sub-Event", qVar.a());
        }
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> a(q qVar, boolean z) {
        boolean contains = this.f5402a.b(com.applovin.impl.sdk.c.b.bl).contains(qVar.a());
        Map<String, Object> a2 = this.f5402a.Y().a(null, z, false);
        a2.put("event", contains ? qVar.a() : "postinstall");
        a2.put("event_id", qVar.d());
        a2.put("ts", Long.toString(qVar.c()));
        if (!contains) {
            a2.put("sub_event", qVar.a());
        }
        return Utils.stringifyObjectMap(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b() {
        return ((String) this.f5402a.a(com.applovin.impl.sdk.c.b.bf)) + "4.0/pix";
    }

    private void c() {
        if (((Boolean) this.f5402a.a(com.applovin.impl.sdk.c.b.bn)).booleanValue()) {
            this.f5402a.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.t, (com.applovin.impl.sdk.c.d<String>) CollectionUtils.toJsonString(this.f5403b, JsonUtils.EMPTY_JSON));
        }
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public Map<String, Object> getSuperProperties() {
        return CollectionUtils.map(this.f5403b);
    }

    public void maybeTrackAppOpenEvent() {
        if (this.f5404c.compareAndSet(false, true)) {
            this.f5402a.x().trackEvent("landing");
        }
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void setSuperProperty(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            v.i("AppLovinEventService", "Super property key cannot be null or empty");
        } else if (obj == null) {
            this.f5403b.remove(str);
            c();
        } else {
            List<String> b2 = this.f5402a.b(com.applovin.impl.sdk.c.b.bm);
            if (!Utils.objectIsOfType(obj, b2, this.f5402a)) {
                v.i("AppLovinEventService", "Failed to set super property '" + obj + "' for key '" + str + "' - valid super property types include: " + b2);
                return;
            }
            this.f5403b.put(str, Utils.sanitizeSuperProperty(obj, this.f5402a));
            c();
        }
    }

    public String toString() {
        return "EventService{}";
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map<String, String> map) {
        Map<String, String> map2 = CollectionUtils.map(map);
        map2.put("transaction_id", str);
        trackEvent(AppLovinEventTypes.USER_COMPLETED_CHECKOUT, map2);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, CollectionUtils.map());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, String> map) {
        trackEvent(str, map, null);
    }

    public void trackEvent(String str, Map<String, String> map, final Map<String, String> map2) {
        this.f5402a.D();
        if (v.a()) {
            this.f5402a.D().b("AppLovinEventService", "Tracking event: \"" + str + "\" with parameters: " + map);
        }
        final q qVar = new q(str, map, this.f5403b);
        try {
            this.f5402a.V().a(new com.applovin.impl.sdk.e.z(this.f5402a, new Runnable() { // from class: com.applovin.impl.sdk.EventServiceImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    EventServiceImpl.this.f5402a.X().a(com.applovin.impl.sdk.network.h.o().c(EventServiceImpl.this.a()).d(EventServiceImpl.this.b()).a(EventServiceImpl.this.a(qVar, false)).b(EventServiceImpl.this.a(qVar, map2)).c(qVar.b()).b(((Boolean) EventServiceImpl.this.f5402a.a(com.applovin.impl.sdk.c.b.eJ)).booleanValue()).a(((Boolean) EventServiceImpl.this.f5402a.a(com.applovin.impl.sdk.c.b.eA)).booleanValue()).a());
                }
            }), o.a.BACKGROUND);
        } catch (Throwable th) {
            this.f5402a.D();
            if (v.a()) {
                this.f5402a.D().b("AppLovinEventService", "Unable to track event: " + qVar, th);
            }
        }
    }

    public void trackEventSynchronously(String str) {
        this.f5402a.D();
        if (v.a()) {
            this.f5402a.D().b("AppLovinEventService", "Tracking event: \"" + str + "\" synchronously");
        }
        q qVar = new q(str, CollectionUtils.map(), this.f5403b);
        this.f5402a.X().a(com.applovin.impl.sdk.network.h.o().c(a()).d(b()).a(a(qVar, true)).b(a(qVar, (Map<String, String>) null)).c(qVar.b()).b(((Boolean) this.f5402a.a(com.applovin.impl.sdk.c.b.eJ)).booleanValue()).a(((Boolean) this.f5402a.a(com.applovin.impl.sdk.c.b.eA)).booleanValue()).a());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map<String, String> map) {
        Map<String, String> map2 = CollectionUtils.map(map);
        try {
            map2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra("INAPP_PURCHASE_DATA"));
            map2.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra("INAPP_DATA_SIGNATURE"));
        } catch (Throwable th) {
            v.c("AppLovinEventService", "Unable to track in app purchase - invalid purchase intent", th);
        }
        trackEvent("iap", map2);
    }
}
