package com.iab.omid.library.appodeal.walking.a;

import android.text.TextUtils;
import com.iab.omid.library.appodeal.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class f extends a {
    public f(b.InterfaceC0309b interfaceC0309b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0309b, hashSet, jSONObject, j);
    }

    private void b(String str) {
        com.iab.omid.library.appodeal.b.a a2 = com.iab.omid.library.appodeal.b.a.a();
        if (a2 != null) {
            for (com.iab.omid.library.appodeal.adsession.a aVar : a2.b()) {
                if (this.f10232a.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().a(str, this.f10234c);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.appodeal.d.b.b(this.f10233b, this.f10238d.b())) {
            return null;
        }
        this.f10238d.a(this.f10233b);
        return this.f10233b.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.appodeal.walking.a.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
