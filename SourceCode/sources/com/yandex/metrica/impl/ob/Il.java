package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1840rl;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Il extends C1840rl {

    /* renamed from: h  reason: collision with root package name */
    public volatile String f13219h;
    public volatile String i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Il(String str, String str2, C1840rl.b bVar, int i, boolean z) {
        super(str, str2, null, i, z, C1840rl.c.VIEW, C1840rl.a.WEBVIEW);
        this.f13219h = null;
        this.i = null;
    }

    @Override // com.yandex.metrica.impl.ob.C1840rl
    JSONArray a(C1594hl c1594hl) {
        JSONArray jSONArray = new JSONArray();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.appnext.base.a.c.d.COLUMN_TYPE, "HTML");
            if (c1594hl.j) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("u", A2.a(this.f13219h, c1594hl.o));
                jSONObject2.putOpt("ou", A2.a(this.i, c1594hl.o));
                if (jSONObject2.length() > 0) {
                    jSONObject.put("i", jSONObject2);
                }
            }
            jSONArray.put(jSONObject);
        } catch (Throwable unused) {
        }
        return jSONArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.C1840rl
    public boolean a() {
        return true;
    }

    @Override // com.yandex.metrica.impl.ob.C1840rl
    public String toString() {
        return "WebViewElement{url='" + this.f13219h + "', originalUrl='" + this.i + "', mClassName='" + this.f15666a + "', mId='" + this.f15667b + "', mParseFilterReason=" + this.f15668c + ", mDepth=" + this.f15669d + ", mListItem=" + this.f15670e + ", mViewType=" + this.f15671f + ", mClassType=" + this.f15672g + "} ";
    }
}
