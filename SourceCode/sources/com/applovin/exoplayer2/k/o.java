package com.applovin.exoplayer2.k;

import android.content.Context;
import android.net.Uri;
import com.applovin.exoplayer2.k.i;
import com.applovin.exoplayer2.k.q;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.upstream.RawResourceDataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class o implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3663a;

    /* renamed from: b  reason: collision with root package name */
    private final List<aa> f3664b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final i f3665c;

    /* renamed from: d  reason: collision with root package name */
    private i f3666d;

    /* renamed from: e  reason: collision with root package name */
    private i f3667e;

    /* renamed from: f  reason: collision with root package name */
    private i f3668f;

    /* renamed from: g  reason: collision with root package name */
    private i f3669g;

    /* renamed from: h  reason: collision with root package name */
    private i f3670h;
    private i i;
    private i j;
    private i k;

    /* loaded from: classes.dex */
    public static final class a implements i.a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f3671a;

        /* renamed from: b  reason: collision with root package name */
        private final i.a f3672b;

        /* renamed from: c  reason: collision with root package name */
        private aa f3673c;

        public a(Context context) {
            this(context, new q.a());
        }

        public a(Context context, i.a aVar) {
            this.f3671a = context.getApplicationContext();
            this.f3672b = aVar;
        }

        @Override // com.applovin.exoplayer2.k.i.a
        /* renamed from: b */
        public o a() {
            o oVar = new o(this.f3671a, this.f3672b.a());
            aa aaVar = this.f3673c;
            if (aaVar != null) {
                oVar.a(aaVar);
            }
            return oVar;
        }
    }

    public o(Context context, i iVar) {
        this.f3663a = context.getApplicationContext();
        this.f3665c = (i) com.applovin.exoplayer2.l.a.b(iVar);
    }

    private void a(i iVar) {
        for (int i = 0; i < this.f3664b.size(); i++) {
            iVar.a(this.f3664b.get(i));
        }
    }

    private void a(i iVar, aa aaVar) {
        if (iVar != null) {
            iVar.a(aaVar);
        }
    }

    private i d() {
        if (this.f3670h == null) {
            ab abVar = new ab();
            this.f3670h = abVar;
            a(abVar);
        }
        return this.f3670h;
    }

    private i e() {
        if (this.f3666d == null) {
            s sVar = new s();
            this.f3666d = sVar;
            a(sVar);
        }
        return this.f3666d;
    }

    private i f() {
        if (this.f3667e == null) {
            c cVar = new c(this.f3663a);
            this.f3667e = cVar;
            a(cVar);
        }
        return this.f3667e;
    }

    private i g() {
        if (this.f3668f == null) {
            f fVar = new f(this.f3663a);
            this.f3668f = fVar;
            a(fVar);
        }
        return this.f3668f;
    }

    private i h() {
        if (this.f3669g == null) {
            try {
                i iVar = (i) Class.forName("com.applovin.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f3669g = iVar;
                a(iVar);
            } catch (ClassNotFoundException unused) {
                com.applovin.exoplayer2.l.q.c("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.f3669g == null) {
                this.f3669g = this.f3665c;
            }
        }
        return this.f3669g;
    }

    private i i() {
        if (this.i == null) {
            h hVar = new h();
            this.i = hVar;
            a(hVar);
        }
        return this.i;
    }

    private i j() {
        if (this.j == null) {
            x xVar = new x(this.f3663a);
            this.j = xVar;
            a(xVar);
        }
        return this.j;
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws IOException {
        return ((i) com.applovin.exoplayer2.l.a.b(this.k)).a(bArr, i, i2);
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws IOException {
        i g2;
        com.applovin.exoplayer2.l.a.b(this.k == null);
        String scheme = lVar.f3626a.getScheme();
        if (ai.a(lVar.f3626a)) {
            String path = lVar.f3626a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                g2 = e();
            }
            g2 = f();
        } else {
            if (!"asset".equals(scheme)) {
                g2 = "content".equals(scheme) ? g() : "rtmp".equals(scheme) ? h() : "udp".equals(scheme) ? d() : "data".equals(scheme) ? i() : (RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) || "android.resource".equals(scheme)) ? j() : this.f3665c;
            }
            g2 = f();
        }
        this.k = g2;
        return this.k.a(lVar);
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        i iVar = this.k;
        if (iVar == null) {
            return null;
        }
        return iVar.a();
    }

    @Override // com.applovin.exoplayer2.k.i
    public void a(aa aaVar) {
        com.applovin.exoplayer2.l.a.b(aaVar);
        this.f3665c.a(aaVar);
        this.f3664b.add(aaVar);
        a(this.f3666d, aaVar);
        a(this.f3667e, aaVar);
        a(this.f3668f, aaVar);
        a(this.f3669g, aaVar);
        a(this.f3670h, aaVar);
        a(this.i, aaVar);
        a(this.j, aaVar);
    }

    @Override // com.applovin.exoplayer2.k.i
    public Map<String, List<String>> b() {
        i iVar = this.k;
        return iVar == null ? Collections.emptyMap() : iVar.b();
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() throws IOException {
        i iVar = this.k;
        if (iVar != null) {
            try {
                iVar.c();
            } finally {
                this.k = null;
            }
        }
    }
}
