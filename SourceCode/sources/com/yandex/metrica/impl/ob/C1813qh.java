package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.util.Base64;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.common.net.HttpHeaders;
import java.net.Socket;
import java.util.HashMap;
import org.slf4j.Marker;
/* renamed from: com.yandex.metrica.impl.ob.qh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1813qh extends Ah {

    /* renamed from: f  reason: collision with root package name */
    private final String f15577f;

    /* renamed from: com.yandex.metrica.impl.ob.qh$a */
    /* loaded from: classes5.dex */
    class a extends HashMap<String, String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ byte[] f15578a;

        a(C1813qh c1813qh, byte[] bArr) {
            this.f15578a = bArr;
            put("Content-Type", "text/plain; charset=utf-8");
            put(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, Marker.ANY_MARKER);
            put(HttpHeaders.ACCESS_CONTROL_ALLOW_METHODS, ShareTarget.METHOD_GET);
            put("Content-Length", String.valueOf(bArr.length));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1813qh(Socket socket, Uri uri, Gh gh, C1491di c1491di, String str, Hh hh) {
        super(socket, uri, gh, c1491di, hh);
        this.f15577f = str;
    }

    @Override // com.yandex.metrica.impl.ob.Ah
    public void a() {
        try {
            byte[] encode = Base64.encode(new C2009ym().a(this.f15577f.getBytes()), 0);
            a("HTTP/1.1 200 OK", new a(this, encode), encode);
        } catch (Throwable unused) {
        }
    }
}
