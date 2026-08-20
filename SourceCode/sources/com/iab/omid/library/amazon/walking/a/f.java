package com.iab.omid.library.amazon.walking.a;

import android.text.TextUtils;
import com.iab.omid.library.amazon.walking.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class f extends a {
    public f(b.InterfaceC0303b interfaceC0303b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0303b, hashSet, jSONObject, j);
    }

    private void b(String str) {
        com.iab.omid.library.amazon.b.a a2 = com.iab.omid.library.amazon.b.a.a();
        if (a2 != null) {
            for (com.iab.omid.library.amazon.adsession.a aVar : a2.b()) {
                if (this.f10013a.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().a(str, this.f10015c);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.amazon.d.b.b(this.f10014b, this.f10017d.b())) {
            return null;
        }
        this.f10017d.a(this.f10014b);
        return this.f10014b.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.amazon.walking.a.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
