package com.applovin.exoplayer2.k;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.applovin.exoplayer2.l.ai;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class c extends e {

    /* renamed from: a  reason: collision with root package name */
    private final AssetManager f3596a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f3597b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f3598c;

    /* renamed from: d  reason: collision with root package name */
    private long f3599d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3600e;

    /* loaded from: classes.dex */
    public static final class a extends j {
        public a(Throwable th, int i) {
            super(th, i);
        }
    }

    public c(Context context) {
        super(false);
        this.f3596a = context.getAssets();
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f3599d;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new a(e2, 2000);
            }
        }
        int read = ((InputStream) ai.a(this.f3598c)).read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f3599d;
        if (j2 != -1) {
            this.f3599d = j2 - read;
        }
        a(read);
        return read;
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws a {
        try {
            Uri uri = lVar.f3626a;
            this.f3597b = uri;
            String str = (String) com.applovin.exoplayer2.l.a.b(uri.getPath());
            if (str.startsWith("/android_asset/")) {
                str = str.substring(15);
            } else if (str.startsWith("/")) {
                str = str.substring(1);
            }
            b(lVar);
            InputStream open = this.f3596a.open(str, 1);
            this.f3598c = open;
            if (open.skip(lVar.f3632g) >= lVar.f3632g) {
                if (lVar.f3633h != -1) {
                    this.f3599d = lVar.f3633h;
                } else {
                    long available = this.f3598c.available();
                    this.f3599d = available;
                    if (available == 2147483647L) {
                        this.f3599d = -1L;
                    }
                }
                this.f3600e = true;
                c(lVar);
                return this.f3599d;
            }
            throw new a(null, 2008);
        } catch (a e2) {
            throw e2;
        } catch (IOException e3) {
            throw new a(e3, e3 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        return this.f3597b;
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() throws a {
        this.f3597b = null;
        try {
            try {
                InputStream inputStream = this.f3598c;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e2) {
                throw new a(e2, 2000);
            }
        } finally {
            this.f3598c = null;
            if (this.f3600e) {
                this.f3600e = false;
                d();
            }
        }
    }
}
