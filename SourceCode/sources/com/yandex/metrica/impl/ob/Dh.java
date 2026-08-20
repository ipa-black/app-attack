package com.yandex.metrica.impl.ob;

import android.net.Uri;
import java.net.Socket;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes5.dex */
public class Dh extends Ah {
    /* JADX INFO: Access modifiers changed from: package-private */
    public Dh(Socket socket, Uri uri, Gh gh, C1491di c1491di, Hh hh) {
        super(socket, uri, gh, c1491di, hh);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.Ah
    public void a() {
        Set<String> queryParameterNames = this.f12641d.getQueryParameterNames();
        HashMap hashMap = new HashMap();
        for (String str : queryParameterNames) {
            hashMap.put(str, this.f12641d.getQueryParameter(str));
        }
        hashMap.remove(com.appnext.base.a.c.d.COLUMN_TYPE);
        a("HTTP/1.1 200 OK", new HashMap(), new byte[0]);
        ((Jh) this.f12639b).a(hashMap, this.f12638a.getLocalPort(), this.f12642e);
    }
}
