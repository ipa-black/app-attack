package f;

import android.text.TextUtils;
import com.google.android.exoplayer2.audio.MpegAudioUtil;
import f.a;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.Flushable;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes5.dex */
public abstract class a<Self extends a<Self>> {

    /* renamed from: e  reason: collision with root package name */
    public static final Executor f16338e = Executors.newFixedThreadPool(2);

    /* renamed from: a  reason: collision with root package name */
    public final d f16339a;

    /* renamed from: b  reason: collision with root package name */
    public final String f16340b;

    /* renamed from: c  reason: collision with root package name */
    public c<Self> f16341c;

    /* renamed from: d  reason: collision with root package name */
    public f.b<Self> f16342d;

    /* loaded from: classes5.dex */
    public class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a();
        }
    }

    public a(d dVar, String str) {
        this.f16339a = dVar;
        this.f16340b = str;
    }

    public Self a(f.b<Self> bVar) {
        this.f16342d = bVar;
        return d();
    }

    public Self a(c<Self> cVar) {
        this.f16341c = cVar;
        return d();
    }

    public final void a() {
        try {
            a(this.f16340b, e());
        } catch (Throwable unused) {
            b();
        }
    }

    public final void a(String str, byte[] bArr) {
        HttpURLConnection httpURLConnection;
        int b2;
        BufferedOutputStream bufferedOutputStream;
        HttpURLConnection httpURLConnection2 = null;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                this.f16339a.a(httpURLConnection);
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setConnectTimeout(MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND);
                httpURLConnection.setReadTimeout(MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND);
                c(httpURLConnection);
                if (bArr != null && bArr.length > 0) {
                    httpURLConnection.setDoOutput(true);
                    try {
                        bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        bufferedOutputStream.write(bArr);
                        a.a.a((Flushable) bufferedOutputStream);
                        a.a.a((Closeable) bufferedOutputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedOutputStream2 = bufferedOutputStream;
                        a.a.a((Flushable) bufferedOutputStream2);
                        a.a.a((Closeable) bufferedOutputStream2);
                        throw th;
                    }
                }
                b2 = b(httpURLConnection);
            } catch (Throwable unused) {
                httpURLConnection2 = httpURLConnection;
                try {
                    b();
                    httpURLConnection = httpURLConnection2;
                } finally {
                    a(httpURLConnection2);
                }
            }
        } catch (Throwable unused2) {
        }
        if (b2 == 200 || b2 == 204) {
            c();
            a(httpURLConnection);
            return;
        }
        if (b2 != 305 && b2 != 307 && b2 != 308) {
            switch (b2) {
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    b();
            }
        }
        String headerField = httpURLConnection.getHeaderField("Location");
        if (!TextUtils.isEmpty(headerField)) {
            a(headerField, bArr);
            a(httpURLConnection);
            return;
        }
        b();
    }

    public final void a(URLConnection uRLConnection) {
        try {
            if (uRLConnection instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection).disconnect();
            }
        } catch (Exception unused) {
        }
    }

    public final int b(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return -1;
    }

    public final void b() {
        f.b<Self> bVar = this.f16342d;
        if (bVar != null) {
            bVar.b(d());
        }
    }

    public final void c() {
        c<Self> cVar = this.f16341c;
        if (cVar != null) {
            cVar.a(d());
        }
    }

    public abstract void c(URLConnection uRLConnection);

    public abstract Self d();

    public abstract byte[] e();

    public Self f() {
        f16338e.execute(new b());
        return d();
    }
}
