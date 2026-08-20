package com.appodeal.ads.utils;

import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class EventsTracker {

    /* renamed from: e  reason: collision with root package name */
    public static EventsTracker f7722e;

    /* renamed from: a  reason: collision with root package name */
    public final EnumMap f7723a = new EnumMap(AdType.class);

    /* renamed from: b  reason: collision with root package name */
    public final a f7724b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f7725c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final com.appodeal.ads.storage.o f7726d = com.appodeal.ads.storage.o.f7663b;

    /* loaded from: classes2.dex */
    public enum EventType {
        Impression,
        Click,
        Finish,
        FailedToLoad,
        InternalError,
        Expired
    }

    /* loaded from: classes2.dex */
    public interface EventsListener {
        void onImpressionStored(AdType adType, String str);
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final EnumMap<EventType, AtomicInteger> f7727a = new EnumMap<>(EventType.class);

        /* renamed from: b  reason: collision with root package name */
        public final EnumMap<EventType, Map<String, AtomicInteger>> f7728b = new EnumMap<>(EventType.class);

        /* renamed from: c  reason: collision with root package name */
        public final a f7729c;

        /* renamed from: com.appodeal.ads.utils.EventsTracker$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0148a extends HashMap<String, AtomicInteger> {
            public C0148a(String str) {
                put(str, new AtomicInteger(1));
            }
        }

        public a(a aVar) {
            this.f7729c = aVar;
        }

        public final int a(EventType eventType) {
            if (this.f7727a.containsKey(eventType)) {
                return this.f7727a.get(eventType).get();
            }
            return 0;
        }

        public final void a(EventType eventType, String str) {
            a aVar = this.f7729c;
            if (aVar != null) {
                aVar.a(eventType, str);
            }
            if (this.f7727a.get(eventType) == null) {
                this.f7727a.put((EnumMap<EventType, AtomicInteger>) eventType, (EventType) new AtomicInteger(1));
            } else {
                this.f7727a.get(eventType).incrementAndGet();
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (this.f7728b.get(eventType) == null || !this.f7728b.get(eventType).containsKey(str)) {
                this.f7728b.put((EnumMap<EventType, Map<String, AtomicInteger>>) eventType, (EventType) new C0148a(str));
            } else {
                this.f7728b.get(eventType).get(str).incrementAndGet();
            }
        }
    }

    public static EventsTracker get() {
        EventsTracker eventsTracker = f7722e;
        if (eventsTracker == null) {
            EventsTracker eventsTracker2 = new EventsTracker();
            f7722e = eventsTracker2;
            return eventsTracker2;
        }
        return eventsTracker;
    }

    public final int a(AdType adType, EventType... eventTypeArr) {
        int i = 0;
        for (EventType eventType : eventTypeArr) {
            i += a(adType).a(eventType);
        }
        return i;
    }

    public final a a(AdType adType) {
        if (this.f7723a.containsKey(adType)) {
            return (a) this.f7723a.get(adType);
        }
        a aVar = new a(this.f7724b);
        this.f7723a.put((EnumMap) adType, (AdType) aVar);
        return aVar;
    }

    public final JSONObject a(EventType eventType) {
        AdType[] values;
        try {
            JSONObject jSONObject = new JSONObject(this.f7726d.f(eventType.name()));
            for (AdType adType : AdType.values()) {
                if (!jSONObject.has(adType.getCodeName())) {
                    jSONObject.put(adType.getCodeName(), 0);
                }
            }
            return jSONObject;
        } catch (JSONException e2) {
            Log.log(e2);
            return null;
        }
    }

    public final void a(AdType adType, com.appodeal.ads.l lVar, EventType eventType) {
        String name = lVar != null ? lVar.f6825b.getName() : null;
        if (adType != null) {
            a(adType).a(eventType, name);
            try {
                JSONObject jSONObject = new JSONObject(this.f7726d.f(eventType.name()));
                jSONObject.put(adType.getCodeName(), jSONObject.optInt(adType.getCodeName(), 0) + 1);
                this.f7726d.b(eventType.name(), jSONObject.toString());
            } catch (Exception e2) {
                Log.log(e2);
            }
        }
        if (eventType == EventType.Impression) {
            for (EventsListener eventsListener : this.f7725c.values()) {
                eventsListener.onImpressionStored(adType, name);
            }
        }
    }

    public final int b(EventType eventType) {
        return this.f7724b.a(eventType);
    }

    public final JSONObject c(EventType eventType) {
        AdType[] values;
        JSONObject jSONObject = new JSONObject();
        try {
            for (AdType adType : AdType.values()) {
                jSONObject.put(adType.getCodeName(), a(adType).a(eventType));
            }
        } catch (JSONException e2) {
            Log.log(e2);
        }
        return jSONObject;
    }

    public int getEventCount(EventType eventType, AdType... adTypeArr) {
        if (adTypeArr == null) {
            return 0;
        }
        int i = 0;
        for (AdType adType : adTypeArr) {
            i += a(adType).a(eventType);
        }
        return i;
    }

    public void subscribeEventsListener(String str, EventsListener eventsListener) {
        this.f7725c.put(str, eventsListener);
    }

    public void unsubscribeEventsListener(String str) {
        this.f7725c.remove(str);
    }
}
