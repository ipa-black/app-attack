package com.yandex.metrica.impl.ob;

import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.rl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1840rl {

    /* renamed from: a  reason: collision with root package name */
    public final String f15666a;

    /* renamed from: b  reason: collision with root package name */
    public final String f15667b;

    /* renamed from: c  reason: collision with root package name */
    public final b f15668c;

    /* renamed from: d  reason: collision with root package name */
    public final int f15669d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f15670e;

    /* renamed from: f  reason: collision with root package name */
    public final c f15671f;

    /* renamed from: g  reason: collision with root package name */
    public final a f15672g;

    /* renamed from: com.yandex.metrica.impl.ob.rl$a */
    /* loaded from: classes5.dex */
    enum a {
        LIST("LIST"),
        LABEL("LABEL"),
        BUTTON("BUTTON"),
        CONTAINER("CONTAINER"),
        TOOLBAR("TOOLBAR"),
        INPUT("INPUT"),
        IMAGE("IMAGE"),
        WEBVIEW("WEBVIEW"),
        OTHER("OTHER");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f15680a;

        a(String str) {
            this.f15680a = str;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.rl$b */
    /* loaded from: classes5.dex */
    enum b {
        TEXT_TOO_LONG("TEXT_TOO_LONG"),
        REGEXP_NOT_MATCHED("REGEXP_NOT_MATCHED"),
        IRRELEVANT_CLASS("IRRELEVANT_CLASS"),
        BAD_REGEXP_MATCHED("BAD_REGEXP_MATCHED"),
        EQUALS("EQUALS"),
        CONTAINS("CONTAINS");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f15688a;

        b(String str) {
            this.f15688a = str;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.rl$c */
    /* loaded from: classes5.dex */
    enum c {
        VIEW_CONTAINER("VIEW_CONTAINER"),
        VIEW("VIEW");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f15692a;

        c(String str) {
            this.f15692a = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1840rl(String str, String str2, b bVar, int i, boolean z, c cVar, a aVar) {
        this.f15666a = str;
        this.f15667b = str2;
        this.f15668c = bVar;
        this.f15669d = i;
        this.f15670e = z;
        this.f15671f = cVar;
        this.f15672g = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(Ak ak) {
        return this.f15668c;
    }

    JSONArray a(C1594hl c1594hl) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return false;
    }

    public String toString() {
        return "UiElement{mClassName='" + this.f15666a + "', mId='" + this.f15667b + "', mParseFilterReason=" + this.f15668c + ", mDepth=" + this.f15669d + ", mListItem=" + this.f15670e + ", mViewType=" + this.f15671f + ", mClassType=" + this.f15672g + '}';
    }

    public JSONObject a(C1594hl c1594hl, b bVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(com.appnext.base.a.c.d.COLUMN_TYPE, this.f15671f.f15692a);
            if (bVar == null) {
                jSONObject.put("cnt", a(c1594hl));
            }
            if (c1594hl.f14880e) {
                JSONObject put = new JSONObject().put(com.appnext.base.a.c.a.dS, this.f15672g.f15680a).put("cn", this.f15666a).put("rid", this.f15667b).put(com.ironsource.sdk.c.d.f11571a, this.f15669d).put("lc", this.f15670e).put("if", bVar != null);
                if (bVar != null) {
                    put.put("fr", bVar.f15688a);
                }
                jSONObject.put("i", put);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
