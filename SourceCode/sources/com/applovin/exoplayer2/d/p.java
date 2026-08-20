package com.applovin.exoplayer2.d;

import android.net.Uri;
import android.text.TextUtils;
import com.applovin.exoplayer2.d.m;
import com.applovin.exoplayer2.k.l;
import com.applovin.exoplayer2.k.t;
import com.applovin.exoplayer2.k.z;
import com.applovin.exoplayer2.l.ai;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public final class p implements r {

    /* renamed from: a  reason: collision with root package name */
    private final t.b f2042a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2043b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f2044c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f2045d;

    public p(String str, boolean z, t.b bVar) {
        com.applovin.exoplayer2.l.a.a((z && TextUtils.isEmpty(str)) ? false : true);
        this.f2042a = bVar;
        this.f2043b = str;
        this.f2044c = z;
        this.f2045d = new HashMap();
    }

    private static String a(t.e eVar, int i) {
        Map<String, List<String>> map;
        List<String> list;
        if ((eVar.f3701d != 307 && eVar.f3701d != 308) || i >= 5 || (map = eVar.f3703f) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static byte[] a(t.b bVar, String str, byte[] bArr, Map<String, String> map) throws s {
        z zVar = new z(bVar.a());
        com.applovin.exoplayer2.k.l a2 = new l.a().a(str).a(map).a(2).a(bArr).b(1).a();
        int i = 0;
        com.applovin.exoplayer2.k.l lVar = a2;
        while (true) {
            try {
                com.applovin.exoplayer2.k.k kVar = new com.applovin.exoplayer2.k.k(zVar, lVar);
                try {
                    byte[] a3 = ai.a((InputStream) kVar);
                    ai.a((Closeable) kVar);
                    return a3;
                } catch (t.e e2) {
                    String a4 = a(e2, i);
                    if (a4 == null) {
                        throw e2;
                    }
                    i++;
                    lVar = lVar.b().a(a4).a();
                    ai.a((Closeable) kVar);
                }
            } catch (Exception e3) {
                throw new s(a2, (Uri) com.applovin.exoplayer2.l.a.b(zVar.e()), zVar.b(), zVar.d(), e3);
            }
        }
    }

    public void a(String str, String str2) {
        com.applovin.exoplayer2.l.a.b(str);
        com.applovin.exoplayer2.l.a.b(str2);
        synchronized (this.f2045d) {
            this.f2045d.put(str, str2);
        }
    }

    @Override // com.applovin.exoplayer2.d.r
    public byte[] a(UUID uuid, m.a aVar) throws s {
        String b2 = aVar.b();
        if (this.f2044c || TextUtils.isEmpty(b2)) {
            b2 = this.f2043b;
        }
        if (TextUtils.isEmpty(b2)) {
            throw new s(new l.a().a(Uri.EMPTY).a(), Uri.EMPTY, com.applovin.exoplayer2.common.a.u.a(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", com.applovin.exoplayer2.h.f2972e.equals(uuid) ? "text/xml" : com.applovin.exoplayer2.h.f2970c.equals(uuid) ? "application/json" : "application/octet-stream");
        if (com.applovin.exoplayer2.h.f2972e.equals(uuid)) {
            hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.f2045d) {
            hashMap.putAll(this.f2045d);
        }
        return a(this.f2042a, b2, aVar.a(), hashMap);
    }

    @Override // com.applovin.exoplayer2.d.r
    public byte[] a(UUID uuid, m.d dVar) throws s {
        return a(this.f2042a, dVar.b() + "&signedRequest=" + ai.a(dVar.a()), null, Collections.emptyMap());
    }
}
