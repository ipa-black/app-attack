package com.adcolony.sdk;

import android.content.Context;
import com.adcolony.sdk.e0;
import com.google.android.exoplayer2.C;
import com.google.common.net.HttpHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.zip.DataFormatException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private HttpURLConnection f522a;

    /* renamed from: b  reason: collision with root package name */
    private InputStream f523b;

    /* renamed from: c  reason: collision with root package name */
    private h0 f524c;

    /* renamed from: d  reason: collision with root package name */
    private a f525d;

    /* renamed from: f  reason: collision with root package name */
    private String f527f;
    private Map<String, List<String>> i;
    boolean n;
    int o;
    int p;

    /* renamed from: e  reason: collision with root package name */
    private g f526e = null;

    /* renamed from: g  reason: collision with root package name */
    private int f528g = 0;

    /* renamed from: h  reason: collision with root package name */
    private boolean f529h = false;
    private String j = "";
    private String k = "";
    String l = "";
    String m = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        void a(s sVar, h0 h0Var, Map<String, List<String>> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(h0 h0Var, a aVar) {
        this.f524c = h0Var;
        this.f525d = aVar;
    }

    private void a(InputStream inputStream, OutputStream outputStream) throws Exception {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = bufferedInputStream.read(bArr, 0, 4096);
                if (read != -1) {
                    int i = this.o + read;
                    this.o = i;
                    if (this.f529h && i > this.f528g) {
                        throw new Exception("Data exceeds expected maximum (" + this.o + "/" + this.f528g + "): " + this.f522a.getURL().toString());
                    }
                    outputStream.write(bArr, 0, read);
                } else {
                    String str = C.UTF8_NAME;
                    String str2 = this.f527f;
                    if (str2 != null && !str2.isEmpty()) {
                        str = this.f527f;
                    }
                    if (outputStream instanceof ByteArrayOutputStream) {
                        String headerField = this.f522a.getHeaderField("Content-Type");
                        if (this.f526e != null && headerField != null && headerField.contains("application/octet-stream") && ((ByteArrayOutputStream) outputStream).size() != 0) {
                            this.m = this.f526e.b(((ByteArrayOutputStream) outputStream).toByteArray());
                        } else {
                            this.m = ((ByteArrayOutputStream) outputStream).toString(str);
                        }
                    }
                    bufferedInputStream.close();
                    if (inputStream != null) {
                        return;
                    }
                    return;
                }
            }
        } finally {
            if (outputStream != null) {
                outputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    private boolean c() throws IOException {
        f1 a2 = this.f524c.a();
        String h2 = c0.h(a2, FirebaseAnalytics.Param.CONTENT_TYPE);
        String h3 = c0.h(a2, "content");
        f1 n = a2.n("dictionaries");
        f1 n2 = a2.n("dictionaries_mapping");
        this.l = c0.h(a2, "url");
        if (n != null) {
            g.a(n.f());
        }
        if (com.adcolony.sdk.a.b().H() && n2 != null) {
            this.f526e = g.a(c0.i(n2, "request"), c0.i(n2, "response"));
        }
        String h4 = c0.h(a2, "user_agent");
        int a3 = c0.a(a2, "read_timeout", 60000);
        int a4 = c0.a(a2, "connect_timeout", 60000);
        boolean b2 = c0.b(a2, "no_redirect");
        this.l = c0.h(a2, "url");
        this.j = c0.h(a2, "filepath");
        StringBuilder append = new StringBuilder().append(com.adcolony.sdk.a.b().z().d());
        String str = this.j;
        this.k = append.append(str.substring(str.lastIndexOf("/") + 1)).toString();
        this.f527f = c0.h(a2, "encoding");
        int a5 = c0.a(a2, "max_size", 0);
        this.f528g = a5;
        this.f529h = a5 != 0;
        this.o = 0;
        this.f523b = null;
        this.f522a = null;
        this.i = null;
        if (this.l.startsWith("file://")) {
            if (this.l.startsWith("file:///android_asset/")) {
                Context a6 = com.adcolony.sdk.a.a();
                if (a6 != null) {
                    this.f523b = a6.getAssets().open(this.l.substring(22));
                }
            } else {
                this.f523b = new FileInputStream(this.l.substring(7));
            }
        } else {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.l).openConnection();
            this.f522a = httpURLConnection;
            httpURLConnection.setReadTimeout(a3);
            this.f522a.setConnectTimeout(a4);
            this.f522a.setInstanceFollowRedirects(!b2);
            if (h4 != null && !h4.equals("")) {
                this.f522a.setRequestProperty("User-Agent", h4);
            }
            if (this.f526e != null) {
                this.f522a.setRequestProperty("Content-Type", "application/octet-stream");
                this.f522a.setRequestProperty("Req-Dict-Id", this.f526e.b());
                this.f522a.setRequestProperty("Resp-Dict-Id", this.f526e.c());
            } else {
                this.f522a.setRequestProperty(HttpHeaders.ACCEPT_CHARSET, h.f341a.name());
                if (!h2.equals("")) {
                    this.f522a.setRequestProperty("Content-Type", h2);
                }
            }
            if (this.f524c.b().equals("WebServices.post")) {
                this.f522a.setDoOutput(true);
                g gVar = this.f526e;
                if (gVar != null) {
                    byte[] a7 = gVar.a(h3);
                    this.f522a.setFixedLengthStreamingMode(a7.length);
                    this.f522a.getOutputStream().write(a7);
                    this.f522a.getOutputStream().flush();
                } else {
                    this.f522a.setFixedLengthStreamingMode(h3.getBytes(h.f341a).length);
                    new PrintStream(this.f522a.getOutputStream()).print(h3);
                }
            }
        }
        return (this.f522a == null && this.f523b == null) ? false : true;
    }

    private void d() throws Exception {
        OutputStream outputStream;
        InputStream errorStream;
        String b2 = this.f524c.b();
        if (this.f523b != null) {
            if (this.j.length() == 0) {
                outputStream = new ByteArrayOutputStream(4096);
            } else {
                outputStream = new FileOutputStream(new File(this.j).getAbsolutePath());
            }
        } else if (b2.equals("WebServices.download")) {
            this.f523b = this.f522a.getInputStream();
            outputStream = new FileOutputStream(this.k);
        } else if (b2.equals("WebServices.get")) {
            this.f523b = this.f522a.getInputStream();
            outputStream = new ByteArrayOutputStream(4096);
        } else if (b2.equals("WebServices.post")) {
            this.f522a.connect();
            if (this.f522a.getResponseCode() >= 200 && this.f522a.getResponseCode() <= 299) {
                errorStream = this.f522a.getInputStream();
            } else {
                errorStream = this.f522a.getErrorStream();
            }
            this.f523b = errorStream;
            outputStream = new ByteArrayOutputStream(4096);
        } else {
            outputStream = null;
        }
        HttpURLConnection httpURLConnection = this.f522a;
        if (httpURLConnection != null) {
            this.p = httpURLConnection.getResponseCode();
            this.i = this.f522a.getHeaderFields();
        }
        a(this.f523b, outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0 b() {
        return this.f524c;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z = false;
        this.n = false;
        try {
            if (c()) {
                d();
                if (!this.f524c.b().equals("WebServices.post") || this.p == 200) {
                    z = true;
                }
                this.n = z;
            }
        } catch (IOException e2) {
            new e0.a().a("Download of ").a(this.l).a(" failed: ").a(e2.toString()).a(e0.f296g);
            int i = this.p;
            if (i == 0) {
                i = 504;
            }
            this.p = i;
        } catch (AssertionError e3) {
            new e0.a().a("okhttp error: ").a(e3.toString()).a(e0.f297h);
            e3.printStackTrace();
        } catch (IllegalArgumentException e4) {
            new e0.a().a("Exception, possibly response encoded with different dictionary: ").a(e4.toString()).a(e0.i);
            e4.printStackTrace();
        } catch (IllegalStateException e5) {
            new e0.a().a("okhttp error: ").a(e5.toString()).a(e0.f297h);
            e5.printStackTrace();
            return;
        } catch (OutOfMemoryError unused) {
            new e0.a().a("Out of memory error - disabling AdColony. (").a(this.o).a("/").a(this.f528g).a("): " + this.l).a(e0.f297h);
            com.adcolony.sdk.a.b().b(true);
        } catch (MalformedURLException e6) {
            new e0.a().a("MalformedURLException: ").a(e6.toString()).a(e0.i);
            this.n = true;
        } catch (DataFormatException e7) {
            new e0.a().a("Exception, possibly trying to decompress plain response: ").a(e7.toString()).a(e0.i);
            e7.printStackTrace();
            return;
        } catch (Exception e8) {
            new e0.a().a("Exception: ").a(e8.toString()).a(e0.f297h);
            e8.printStackTrace();
        }
        if (this.f524c.b().equals("WebServices.download")) {
            a(this.k, this.j);
        }
        this.f525d.a(this, this.f524c, this.i);
    }

    private void a(String str, String str2) {
        try {
            String substring = str2.substring(0, str2.lastIndexOf("/") + 1);
            if (str2.equals("") || substring.equals(com.adcolony.sdk.a.b().z().d()) || new File(str).renameTo(new File(str2))) {
                return;
            }
            new e0.a().a("Moving of ").a(str).a(" failed.").a(e0.f296g);
        } catch (Exception e2) {
            new e0.a().a("Exception: ").a(e2.toString()).a(e0.f297h);
            e2.printStackTrace();
        }
    }
}
