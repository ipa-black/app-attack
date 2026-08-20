package com.applovin.exoplayer2.k;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.upstream.RawResourceDataSource;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
/* loaded from: classes.dex */
public final class x extends e {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f3731a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3732b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f3733c;

    /* renamed from: d  reason: collision with root package name */
    private AssetFileDescriptor f3734d;

    /* renamed from: e  reason: collision with root package name */
    private InputStream f3735e;

    /* renamed from: f  reason: collision with root package name */
    private long f3736f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3737g;

    /* loaded from: classes.dex */
    public static class a extends j {
        public a(String str, Throwable th, int i) {
            super(str, th, i);
        }
    }

    public x(Context context) {
        super(false);
        this.f3731a = context.getResources();
        this.f3732b = context.getPackageName();
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f3736f;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new a(null, e2, 2000);
            }
        }
        int read = ((InputStream) ai.a(this.f3735e)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f3736f == -1) {
                return -1;
            }
            throw new a("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.f3736f;
        if (j2 != -1) {
            this.f3736f = j2 - read;
        }
        a(read);
        return read;
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws a {
        int parseInt;
        Uri uri = lVar.f3626a;
        this.f3733c = uri;
        if (TextUtils.equals(RawResourceDataSource.RAW_RESOURCE_SCHEME, uri.getScheme()) || (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) com.applovin.exoplayer2.l.a.b(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                parseInt = Integer.parseInt((String) com.applovin.exoplayer2.l.a.b(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new a("Resource identifier must be an integer.", null, 1004);
            }
        } else if (!TextUtils.equals("android.resource", uri.getScheme())) {
            throw new a("URI must either use scheme rawresource or android.resource", null, 1004);
        } else {
            String str = (String) com.applovin.exoplayer2.l.a.b(uri.getPath());
            if (str.startsWith("/")) {
                str = str.substring(1);
            }
            String host = uri.getHost();
            parseInt = this.f3731a.getIdentifier((TextUtils.isEmpty(host) ? "" : host + ":") + str, "raw", this.f3732b);
            if (parseInt == 0) {
                throw new a("Resource not found.", null, 2005);
            }
        }
        b(lVar);
        try {
            AssetFileDescriptor openRawResourceFd = this.f3731a.openRawResourceFd(parseInt);
            this.f3734d = openRawResourceFd;
            if (openRawResourceFd != null) {
                long length = openRawResourceFd.getLength();
                FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
                this.f3735e = fileInputStream;
                int i = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i != 0) {
                    try {
                        if (lVar.f3632g > length) {
                            throw new a(null, null, 2008);
                        }
                    } catch (a e2) {
                        throw e2;
                    } catch (IOException e3) {
                        throw new a(null, e3, 2000);
                    }
                }
                long startOffset = openRawResourceFd.getStartOffset();
                long skip = fileInputStream.skip(lVar.f3632g + startOffset) - startOffset;
                if (skip == lVar.f3632g) {
                    if (i == 0) {
                        FileChannel channel = fileInputStream.getChannel();
                        if (channel.size() == 0) {
                            this.f3736f = -1L;
                        } else {
                            long size = channel.size() - channel.position();
                            this.f3736f = size;
                            if (size < 0) {
                                throw new a(null, null, 2008);
                            }
                        }
                    } else {
                        long j = length - skip;
                        this.f3736f = j;
                        if (j < 0) {
                            throw new j(2008);
                        }
                    }
                    if (lVar.f3633h != -1) {
                        long j2 = this.f3736f;
                        this.f3736f = j2 == -1 ? lVar.f3633h : Math.min(j2, lVar.f3633h);
                    }
                    this.f3737g = true;
                    c(lVar);
                    return lVar.f3633h != -1 ? lVar.f3633h : this.f3736f;
                }
                throw new a(null, null, 2008);
            }
            throw new a("Resource is compressed: " + uri, null, 2000);
        } catch (Resources.NotFoundException e4) {
            throw new a(null, e4, 2005);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        return this.f3733c;
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() throws a {
        this.f3733c = null;
        try {
            try {
                InputStream inputStream = this.f3735e;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f3735e = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f3734d;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f3734d = null;
                        if (this.f3737g) {
                            this.f3737g = false;
                            d();
                        }
                    }
                } catch (IOException e2) {
                    throw new a(null, e2, 2000);
                }
            } catch (IOException e3) {
                throw new a(null, e3, 2000);
            }
        } catch (Throwable th) {
            this.f3735e = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f3734d;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f3734d = null;
                    if (this.f3737g) {
                        this.f3737g = false;
                        d();
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new a(null, e4, 2000);
                }
            } finally {
                this.f3734d = null;
                if (this.f3737g) {
                    this.f3737g = false;
                    d();
                }
            }
        }
    }
}
