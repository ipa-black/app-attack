package com.yandex.metrica.impl.ob;

import java.util.List;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Ud implements InterfaceC1843s0<a, C1512ee> {

    /* renamed from: a  reason: collision with root package name */
    public final C1512ee f14030a;

    /* renamed from: b  reason: collision with root package name */
    public final List<a> f14031b;

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f14032a;

        /* renamed from: b  reason: collision with root package name */
        public final JSONObject f14033b;

        /* renamed from: c  reason: collision with root package name */
        public final EnumC1891u0 f14034c;

        public a(String str, JSONObject jSONObject, EnumC1891u0 enumC1891u0) {
            this.f14032a = str;
            this.f14033b = jSONObject;
            this.f14034c = enumC1891u0;
        }

        public String toString() {
            return "Candidate{trackingId='" + this.f14032a + "', additionalParams=" + this.f14033b + ", source=" + this.f14034c + '}';
        }
    }

    public Ud(C1512ee c1512ee, List<a> list) {
        this.f14030a = c1512ee;
        this.f14031b = list;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1843s0
    public List<a> a() {
        return this.f14031b;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1843s0
    public C1512ee b() {
        return this.f14030a;
    }

    public String toString() {
        return "PreloadInfoData{chosenPreloadInfo=" + this.f14030a + ", candidates=" + this.f14031b + '}';
    }
}
