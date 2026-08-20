package com.iab.omid.library.applovin.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.applovin.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class f extends a {
    public f(b.InterfaceC0306b interfaceC0306b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0306b, hashSet, jSONObject, j);
    }

    private void b(String str) {
        com.iab.omid.library.applovin.internal.c c2 = com.iab.omid.library.applovin.internal.c.c();
        if (c2 != null) {
            for (com.iab.omid.library.applovin.adsession.a aVar : c2.b()) {
                if (this.f10127c.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().b(str, this.f10129e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.applovin.utils.c.h(this.f10128d, this.f10131b.a())) {
            return null;
        }
        this.f10131b.a(this.f10128d);
        return this.f10128d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.applovin.walking.async.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
