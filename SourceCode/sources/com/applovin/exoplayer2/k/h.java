package com.applovin.exoplayer2.k;

import android.net.Uri;
import android.util.Base64;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.l.ai;
import java.io.IOException;
import java.net.URLDecoder;
/* loaded from: classes.dex */
public final class h extends e {

    /* renamed from: a  reason: collision with root package name */
    private l f3615a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f3616b;

    /* renamed from: c  reason: collision with root package name */
    private int f3617c;

    /* renamed from: d  reason: collision with root package name */
    private int f3618d;

    public h() {
        super(false);
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f3618d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(ai.a(this.f3616b), this.f3617c, bArr, i, min);
        this.f3617c += min;
        this.f3618d -= min;
        a(min);
        return min;
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws IOException {
        b(lVar);
        this.f3615a = lVar;
        Uri uri = lVar.f3626a;
        String scheme = uri.getScheme();
        com.applovin.exoplayer2.l.a.a("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] a2 = ai.a(uri.getSchemeSpecificPart(), ",");
        if (a2.length == 2) {
            String str = a2[1];
            if (a2[0].contains(";base64")) {
                try {
                    this.f3616b = Base64.decode(str, 0);
                } catch (IllegalArgumentException e2) {
                    throw com.applovin.exoplayer2.ai.a("Error while parsing Base64 encoded string: " + str, e2);
                }
            } else {
                this.f3616b = ai.c(URLDecoder.decode(str, Charsets.US_ASCII.name()));
            }
            if (lVar.f3632g > this.f3616b.length) {
                this.f3616b = null;
                throw new j(2008);
            }
            int i = (int) lVar.f3632g;
            this.f3617c = i;
            this.f3618d = this.f3616b.length - i;
            if (lVar.f3633h != -1) {
                this.f3618d = (int) Math.min(this.f3618d, lVar.f3633h);
            }
            c(lVar);
            return lVar.f3633h != -1 ? lVar.f3633h : this.f3618d;
        }
        throw com.applovin.exoplayer2.ai.a("Unexpected URI format: " + uri, null);
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        l lVar = this.f3615a;
        if (lVar != null) {
            return lVar.f3626a;
        }
        return null;
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() {
        if (this.f3616b != null) {
            this.f3616b = null;
            d();
        }
        this.f3615a = null;
    }
}
