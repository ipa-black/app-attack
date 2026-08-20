package b;

import io.bidmachine.analytics.entity.Event;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f14a;

    /* renamed from: b  reason: collision with root package name */
    public final long f15b;

    /* renamed from: c  reason: collision with root package name */
    public final String f16c;

    /* renamed from: d  reason: collision with root package name */
    public final String f17d;

    /* renamed from: e  reason: collision with root package name */
    public final JSONObject f18e;

    /* renamed from: f  reason: collision with root package name */
    public final JSONObject f19f;

    public a(String str, long j, String str2, String str3, JSONObject jSONObject, JSONObject jSONObject2) {
        this.f14a = str;
        this.f15b = j;
        this.f16c = str2;
        this.f17d = str3;
        this.f18e = jSONObject;
        this.f19f = jSONObject2;
    }

    public a(String str, Event event) {
        this(UUID.randomUUID().toString(), event.getTimestamp(), str, event.getName(), a.a.a(event.getDimensions()), a.a.a(event.getMetrics()));
    }

    public String a() {
        return this.f16c;
    }

    public JSONObject b() {
        return this.f18e;
    }

    public String c() {
        return this.f14a;
    }

    public JSONObject d() {
        return this.f19f;
    }

    public String e() {
        return this.f17d;
    }

    public long f() {
        return this.f15b;
    }
}
