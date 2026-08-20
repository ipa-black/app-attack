package com.iab.omid.library.adcolony.walking.a;

import android.text.TextUtils;
import com.iab.omid.library.adcolony.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class f extends a {
    public f(b.InterfaceC0300b interfaceC0300b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0300b, hashSet, jSONObject, j);
    }

    private void b(String str) {
        com.iab.omid.library.adcolony.b.a a2 = com.iab.omid.library.adcolony.b.a.a();
        if (a2 != null) {
            for (com.iab.omid.library.adcolony.adsession.a aVar : a2.b()) {
                if (((a) this).f9904a.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().a(str, this.f9906c);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.adcolony.d.b.b(this.f9905b, this.f9910d.b())) {
            return null;
        }
        this.f9910d.a(this.f9905b);
        return this.f9905b.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.adcolony.walking.a.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
