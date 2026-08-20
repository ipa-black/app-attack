package com.iab.omid.library.amazon.walking.a;

import com.iab.omid.library.amazon.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class e extends a {
    public e(b.InterfaceC0303b interfaceC0303b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0303b, hashSet, jSONObject, j);
    }

    private void b(String str) {
        com.iab.omid.library.amazon.b.a a2 = com.iab.omid.library.amazon.b.a.a();
        if (a2 != null) {
            for (com.iab.omid.library.amazon.adsession.a aVar : a2.b()) {
                if (this.f10013a.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().b(str, this.f10015c);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        return this.f10014b.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.amazon.walking.a.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        b(str);
        super.onPostExecute(str);
    }
}
