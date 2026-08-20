package com.applovin.exoplayer2.k;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import com.applovin.exoplayer2.l.ai;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes.dex */
public final class s extends e {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f3693a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f3694b;

    /* renamed from: c  reason: collision with root package name */
    private long f3695c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3696d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(Throwable th) {
            return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
        }
    }

    /* loaded from: classes.dex */
    public static class b extends j {
        public b(String str, Throwable th, int i) {
            super(str, th, i);
        }

        public b(Throwable th, int i) {
            super(th, i);
        }
    }

    public s() {
        super(false);
    }

    private static RandomAccessFile a(Uri uri) throws b {
        int i = 2006;
        try {
            return new RandomAccessFile((String) com.applovin.exoplayer2.l.a.b(uri.getPath()), "r");
        } catch (FileNotFoundException e2) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new b(e2, (ai.f3781a < 21 || !a.b(e2.getCause())) ? 2005 : 2005);
            }
            throw new b(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e2, 1004);
        } catch (SecurityException e3) {
            throw new b(e3, 2006);
        } catch (RuntimeException e4) {
            throw new b(e4, 2000);
        }
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws b {
        if (i2 == 0) {
            return 0;
        }
        if (this.f3695c == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) ai.a(this.f3693a)).read(bArr, i, (int) Math.min(this.f3695c, i2));
            if (read > 0) {
                this.f3695c -= read;
                a(read);
            }
            return read;
        } catch (IOException e2) {
            throw new b(e2, 2000);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws b {
        Uri uri = lVar.f3626a;
        this.f3694b = uri;
        b(lVar);
        RandomAccessFile a2 = a(uri);
        this.f3693a = a2;
        try {
            a2.seek(lVar.f3632g);
            long length = lVar.f3633h == -1 ? this.f3693a.length() - lVar.f3632g : lVar.f3633h;
            this.f3695c = length;
            if (length >= 0) {
                this.f3696d = true;
                c(lVar);
                return this.f3695c;
            }
            throw new b(null, null, 2008);
        } catch (IOException e2) {
            throw new b(e2, 2000);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        return this.f3694b;
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() throws b {
        this.f3694b = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f3693a;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e2) {
                throw new b(e2, 2000);
            }
        } finally {
            this.f3693a = null;
            if (this.f3696d) {
                this.f3696d = false;
                d();
            }
        }
    }
}
