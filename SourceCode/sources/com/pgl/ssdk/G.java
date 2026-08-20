package com.pgl.ssdk;

import android.content.Context;
import com.google.common.net.HttpHeaders;
import java.net.HttpURLConnection;
import java.util.Locale;
/* compiled from: MyBaseRequest.java */
/* loaded from: classes3.dex */
public abstract class G {

    /* renamed from: a  reason: collision with root package name */
    private String f12161a;

    /* renamed from: c  reason: collision with root package name */
    private int f12163c;

    /* renamed from: d  reason: collision with root package name */
    private int f12164d;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f12165e;

    /* renamed from: b  reason: collision with root package name */
    public String f12162b = "";

    /* renamed from: f  reason: collision with root package name */
    private int f12166f = -1;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f12167g = null;

    /* renamed from: h  reason: collision with root package name */
    private int f12168h = 10000;
    private int i = 2;
    private int j = 0;
    private boolean k = false;
    private HttpURLConnection l = null;
    private Runnable m = new a();

    /* compiled from: MyBaseRequest.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (G.this.a() || G.this.j >= G.this.i) {
                return;
            }
            G.c(G.this);
            Q b2 = M.a().b();
            if (b2 != null) {
                b2.post(this);
            }
        }
    }

    public G(Context context, String str) {
        this.f12161a = (str == null || str.length() <= 0) ? "" : "";
    }

    static /* synthetic */ int c(G g2) {
        int i = g2.j;
        g2.j = i + 1;
        return i;
    }

    public abstract boolean a(int i, byte[] bArr);

    private void a(int i) {
        String str = i != 1 ? i != 2 ? "" : "application/octet-stream" : "application/json; charset=utf-8";
        if (str.length() > 0) {
            this.l.addRequestProperty("Content-Type", str);
        }
        this.l.addRequestProperty(HttpHeaders.COOKIE, "sessionid=" + this.f12161a);
        try {
            String language = Locale.getDefault().getLanguage();
            if (language.equalsIgnoreCase("zh")) {
                this.l.addRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, Locale.getDefault().toString() + "," + language + ";q=0.9");
            } else {
                this.l.addRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, Locale.getDefault().toString() + "," + language + ";q=0.9,en-US;q=0.6,en;q=0.4");
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b5, code lost:
        if (r2 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ba, code lost:
        if (r1 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c4, code lost:
        r1.disconnect();
        r8.l = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c9, code lost:
        r1 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a() {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.G.a():boolean");
    }

    public void a(int i, int i2, byte[] bArr) {
        Q b2;
        this.f12163c = i;
        this.f12164d = i2;
        this.f12165e = bArr;
        Runnable runnable = this.m;
        if (runnable == null || (b2 = M.a().b()) == null) {
            return;
        }
        b2.post(runnable);
    }
}
