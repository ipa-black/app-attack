package com.iab.omid.library.bytedance2.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.bytedance2.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class f extends a {
    public f(b.InterfaceC0312b interfaceC0312b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0312b, hashSet, jSONObject, j);
    }

    private void b(String str) {
        com.iab.omid.library.bytedance2.internal.c c2 = com.iab.omid.library.bytedance2.internal.c.c();
        if (c2 != null) {
            for (com.iab.omid.library.bytedance2.adsession.a aVar : c2.b()) {
                if (this.f10349c.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().b(str, this.f10351e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.bytedance2.utils.c.h(this.f10350d, this.f10353b.a())) {
            return null;
        }
        this.f10353b.a(this.f10350d);
        return this.f10350d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.bytedance2.walking.async.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
