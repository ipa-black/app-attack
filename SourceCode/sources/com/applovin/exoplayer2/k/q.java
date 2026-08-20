package com.applovin.exoplayer2.k;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.exoplayer2.common.base.Predicate;
import com.applovin.exoplayer2.k.t;
import com.applovin.exoplayer2.l.ai;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
/* loaded from: classes.dex */
public class q extends e implements t {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3677b;

    /* renamed from: c  reason: collision with root package name */
    private final int f3678c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3679d;

    /* renamed from: e  reason: collision with root package name */
    private final String f3680e;

    /* renamed from: f  reason: collision with root package name */
    private final t.f f3681f;

    /* renamed from: g  reason: collision with root package name */
    private final t.f f3682g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f3683h;
    private Predicate<String> i;
    private l j;
    private HttpURLConnection k;
    private InputStream l;
    private boolean m;
    private int n;
    private long o;
    private long p;

    /* loaded from: classes.dex */
    public static final class a implements t.b {

        /* renamed from: b  reason: collision with root package name */
        private aa f3685b;

        /* renamed from: c  reason: collision with root package name */
        private Predicate<String> f3686c;

        /* renamed from: d  reason: collision with root package name */
        private String f3687d;

        /* renamed from: g  reason: collision with root package name */
        private boolean f3690g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f3691h;

        /* renamed from: a  reason: collision with root package name */
        private final t.f f3684a = new t.f();

        /* renamed from: e  reason: collision with root package name */
        private int f3688e = 8000;

        /* renamed from: f  reason: collision with root package name */
        private int f3689f = 8000;

        public a a(String str) {
            this.f3687d = str;
            return this;
        }

        @Override // com.applovin.exoplayer2.k.t.b
        /* renamed from: b */
        public q c() {
            q qVar = new q(this.f3687d, this.f3688e, this.f3689f, this.f3690g, this.f3684a, this.f3686c, this.f3691h);
            aa aaVar = this.f3685b;
            if (aaVar != null) {
                qVar.a(aaVar);
            }
            return qVar;
        }
    }

    @Deprecated
    public q() {
        this(null, 8000, 8000);
    }

    @Deprecated
    public q(String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    @Deprecated
    public q(String str, int i, int i2, boolean z, t.f fVar) {
        this(str, i, i2, z, fVar, null, false);
    }

    private q(String str, int i, int i2, boolean z, t.f fVar, Predicate<String> predicate, boolean z2) {
        super(true);
        this.f3680e = str;
        this.f3678c = i;
        this.f3679d = i2;
        this.f3677b = z;
        this.f3681f = fVar;
        this.i = predicate;
        this.f3682g = new t.f();
        this.f3683h = z2;
    }

    private HttpURLConnection a(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection a2 = a(url);
        a2.setConnectTimeout(this.f3678c);
        a2.setReadTimeout(this.f3679d);
        HashMap hashMap = new HashMap();
        t.f fVar = this.f3681f;
        if (fVar != null) {
            hashMap.putAll(fVar.a());
        }
        hashMap.putAll(this.f3682g.a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            a2.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String a3 = u.a(j, j2);
        if (a3 != null) {
            a2.setRequestProperty("Range", a3);
        }
        String str = this.f3680e;
        if (str != null) {
            a2.setRequestProperty("User-Agent", str);
        }
        a2.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, z ? "gzip" : "identity");
        a2.setInstanceFollowRedirects(z2);
        a2.setDoOutput(bArr != null);
        a2.setRequestMethod(l.a(i));
        if (bArr != null) {
            a2.setFixedLengthStreamingMode(bArr.length);
            a2.connect();
            OutputStream outputStream = a2.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            a2.connect();
        }
        return a2;
    }

    private URL a(URL url, String str, l lVar) throws t.c {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if ("https".equals(protocol) || "http".equals(protocol)) {
                    if (this.f3677b || protocol.equals(url.getProtocol())) {
                        return url2;
                    }
                    throw new t.c("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", lVar, 2001, 1);
                }
                throw new t.c("Unsupported protocol redirect: " + protocol, lVar, 2001, 1);
            } catch (MalformedURLException e2) {
                throw new t.c(e2, lVar, 2001, 1);
            }
        }
        throw new t.c("Null location redirect", lVar, 2001, 1);
    }

    private void a(long j, l lVar) throws IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int read = ((InputStream) ai.a(this.l)).read(bArr, 0, (int) Math.min(j, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new t.c(new InterruptedIOException(), lVar, 2000, 1);
            }
            if (read == -1) {
                throw new t.c(lVar, 2008, 1);
            }
            j -= read;
            a(read);
        }
    }

    private static void a(HttpURLConnection httpURLConnection, long j) {
        if (httpURLConnection != null && ai.f3781a >= 19 && ai.f3781a <= 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j <= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if (!"com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) && !"com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    return;
                }
                Method declaredMethod = ((Class) com.applovin.exoplayer2.l.a.b(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    private static boolean a(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    private int b(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.o;
        if (j != -1) {
            long j2 = j - this.p;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        int read = ((InputStream) ai.a(this.l)).read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.p += read;
        a(read);
        return read;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a9, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.HttpURLConnection d(com.applovin.exoplayer2.k.l r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.k.q.d(com.applovin.exoplayer2.k.l):java.net.HttpURLConnection");
    }

    private void e() {
        HttpURLConnection httpURLConnection = this.k;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                com.applovin.exoplayer2.l.q.c("DefaultHttpDataSource", "Unexpected error while disconnecting", e2);
            }
            this.k = null;
        }
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws t.c {
        try {
            return b(bArr, i, i2);
        } catch (IOException e2) {
            throw t.c.a(e2, (l) ai.a(this.j), 2);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws t.c {
        byte[] bArr;
        this.j = lVar;
        long j = 0;
        this.p = 0L;
        this.o = 0L;
        b(lVar);
        try {
            HttpURLConnection d2 = d(lVar);
            this.k = d2;
            this.n = d2.getResponseCode();
            String responseMessage = d2.getResponseMessage();
            int i = this.n;
            if (i < 200 || i > 299) {
                Map<String, List<String>> headerFields = d2.getHeaderFields();
                if (this.n == 416) {
                    if (lVar.f3632g == u.a(d2.getHeaderField(HttpHeaders.CONTENT_RANGE))) {
                        this.m = true;
                        c(lVar);
                        if (lVar.f3633h != -1) {
                            return lVar.f3633h;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = d2.getErrorStream();
                try {
                    bArr = errorStream != null ? ai.a(errorStream) : ai.f3786f;
                } catch (IOException unused) {
                    bArr = ai.f3786f;
                }
                byte[] bArr2 = bArr;
                e();
                throw new t.e(this.n, responseMessage, this.n == 416 ? new j(2008) : null, headerFields, lVar, bArr2);
            }
            String contentType = d2.getContentType();
            Predicate<String> predicate = this.i;
            if (predicate != null && !predicate.apply(contentType)) {
                e();
                throw new t.d(contentType, lVar);
            }
            if (this.n == 200 && lVar.f3632g != 0) {
                j = lVar.f3632g;
            }
            boolean a2 = a(d2);
            if (a2 || lVar.f3633h != -1) {
                this.o = lVar.f3633h;
            } else {
                long a3 = u.a(d2.getHeaderField("Content-Length"), d2.getHeaderField(HttpHeaders.CONTENT_RANGE));
                this.o = a3 != -1 ? a3 - j : -1L;
            }
            try {
                this.l = d2.getInputStream();
                if (a2) {
                    this.l = new GZIPInputStream(this.l);
                }
                this.m = true;
                c(lVar);
                try {
                    a(j, lVar);
                    return this.o;
                } catch (IOException e2) {
                    e();
                    if (e2 instanceof t.c) {
                        throw ((t.c) e2);
                    }
                    throw new t.c(e2, lVar, 2000, 1);
                }
            } catch (IOException e3) {
                e();
                throw new t.c(e3, lVar, 2000, 1);
            }
        } catch (IOException e4) {
            e();
            throw t.c.a(e4, lVar, 1);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        HttpURLConnection httpURLConnection = this.k;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // com.applovin.exoplayer2.k.i
    public Map<String, List<String>> b() {
        HttpURLConnection httpURLConnection = this.k;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() throws t.c {
        try {
            InputStream inputStream = this.l;
            if (inputStream != null) {
                long j = this.o;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.p;
                }
                a(this.k, j2);
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    throw new t.c(e2, (l) ai.a(this.j), 2000, 3);
                }
            }
        } finally {
            this.l = null;
            e();
            if (this.m) {
                this.m = false;
                d();
            }
        }
    }
}
