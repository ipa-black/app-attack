package com.applovin.impl.sdk.network;

import androidx.core.util.Consumer;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.e;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.utils.t;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinErrorCodes;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.xml.sax.SAXException;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f5894a = Arrays.asList("5.0/i", "4.0/ad", "1.0/mediate");

    /* renamed from: b  reason: collision with root package name */
    private final n f5895b;

    /* renamed from: c  reason: collision with root package name */
    private final v f5896c;

    /* renamed from: d  reason: collision with root package name */
    private e f5897d;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f5898a;

        /* renamed from: b  reason: collision with root package name */
        private long f5899b;

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j) {
            this.f5898a = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(long j) {
            this.f5899b = j;
        }

        public long a() {
            return this.f5898a;
        }

        public long b() {
            return this.f5899b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.impl.sdk.network.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0083b<T> implements Consumer<e.c> {

        /* renamed from: b  reason: collision with root package name */
        private final String f5901b;

        /* renamed from: c  reason: collision with root package name */
        private final com.applovin.impl.sdk.network.c<T> f5902c;

        /* renamed from: d  reason: collision with root package name */
        private final String f5903d;

        /* renamed from: e  reason: collision with root package name */
        private final T f5904e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f5905f;

        /* renamed from: g  reason: collision with root package name */
        private final long f5906g;

        /* renamed from: h  reason: collision with root package name */
        private final a f5907h;
        private final c<T> i;

        private C0083b(String str, com.applovin.impl.sdk.network.c<T> cVar, String str2, T t, boolean z, long j, a aVar, c<T> cVar2) {
            this.f5901b = str;
            this.f5902c = cVar;
            this.f5903d = str2;
            this.f5904e = t;
            this.f5905f = z;
            this.f5906g = j;
            this.f5907h = aVar;
            this.i = cVar2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.core.util.Consumer
        /* renamed from: a */
        public void accept(e.c cVar) {
            c<T> cVar2;
            Object obj = null;
            try {
                int a2 = cVar.a();
                if (a2 > 0) {
                    long currentTimeMillis = System.currentTimeMillis() - this.f5906g;
                    if (a2 >= 200 && a2 < 400) {
                        a aVar = this.f5907h;
                        if (aVar != null) {
                            aVar.a(currentTimeMillis);
                        }
                        b.this.a(this.f5903d, this.f5901b, a2, this.f5906g);
                        String b2 = cVar.b();
                        if (Utils.isDspDemoApp(b.this.f5895b.P())) {
                            b.this.f5895b.aj().a(b2 != null ? b2 : "", this.f5901b, this.f5902c.e() != null ? this.f5902c.e().toString() : "");
                        }
                        if (b2 == null) {
                            this.i.a(this.f5904e, a2);
                            return;
                        }
                        b.this.f5896c.a("ConnectionManager", b2);
                        a aVar2 = this.f5907h;
                        if (aVar2 != null) {
                            aVar2.b(b2.length());
                        }
                        if (this.f5905f) {
                            String a3 = com.applovin.impl.sdk.utils.n.a(b2, b.this.f5895b.C());
                            if (a3 == null) {
                                Map<String, String> map = CollectionUtils.map(2);
                                map.put("request", StringUtils.getHostAndPath(this.f5901b));
                                map.put("response", b2);
                                b.this.f5895b.x().trackEvent("rdf", map);
                            }
                            b2 = a3;
                        }
                        try {
                            this.i.a(b.this.a(b2, (String) this.f5904e), a2);
                            return;
                        } catch (Throwable th) {
                            String str = "Unable to parse response from " + b.this.a(this.f5901b);
                            v unused = b.this.f5896c;
                            if (v.a()) {
                                b.this.f5896c.b("ConnectionManager", str, th);
                            }
                            b.this.f5895b.W().a(com.applovin.impl.sdk.d.f.k);
                            this.i.a(AppLovinErrorCodes.INVALID_RESPONSE, str, null);
                            return;
                        }
                    }
                    cVar2 = this.i;
                } else {
                    b.this.a(this.f5903d, this.f5901b, a2, this.f5906g, (Throwable) null);
                    cVar2 = this.i;
                }
                cVar2.a(a2, null, null);
            } catch (MalformedURLException e2) {
                if (this.f5904e != null) {
                    b.this.a(this.f5903d, this.f5901b, 0, this.f5906g, e2);
                    this.i.a(-901, e2.getMessage(), null);
                    return;
                }
                b.this.a(this.f5903d, this.f5901b, 0, this.f5906g);
                this.i.a(this.f5904e, -901);
            } catch (Throwable th2) {
                int a4 = 0 == 0 ? b.this.a(th2) : 0;
                try {
                    String c2 = cVar.c();
                    if (c2 != null) {
                        if (this.f5905f) {
                            c2 = com.applovin.impl.sdk.utils.n.a(c2, b.this.f5895b.C());
                        }
                        obj = b.this.a(c2, (String) this.f5904e);
                    }
                } catch (Throwable unused2) {
                }
                b.this.a(this.f5903d, this.f5901b, a4, this.f5906g, th2);
                this.i.a(a4, th2.getMessage(), obj);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface c<T> {
        void a(int i, String str, T t);

        void a(T t, int i);
    }

    public b(n nVar) {
        this.f5895b = nVar;
        this.f5896c = nVar.D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(Throwable th) {
        if (th instanceof UnknownHostException) {
            return -1009;
        }
        if (th instanceof SocketTimeoutException) {
            return -1001;
        }
        if (th instanceof IOException) {
            return -100;
        }
        return th instanceof JSONException ? -104 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T a(String str, T t) throws JSONException, SAXException, ClassCastException {
        if (t == null) {
            return str;
        }
        if (str != 0 && str.length() >= 3) {
            if (t instanceof JSONObject) {
                return (T) new JSONObject(str);
            }
            if (t instanceof s) {
                return (T) t.a(str, this.f5895b);
            }
            if (t instanceof String) {
                return str;
            }
            if (v.a()) {
                this.f5896c.e("ConnectionManager", "Failed to process response of type '" + t.getClass().getName() + "'");
            }
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        return "#" + str.hashCode() + " \"" + StringUtils.getHostAndPath(str) + "\"";
    }

    private HttpURLConnection a(String str, String str2, Map<String, String> map, int i) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(i < 0 ? ((Integer) this.f5895b.a(com.applovin.impl.sdk.c.b.cV)).intValue() : i);
        if (i < 0) {
            i = ((Integer) this.f5895b.a(com.applovin.impl.sdk.c.b.cW)).intValue();
        }
        httpURLConnection.setReadTimeout(i);
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setDoInput(true);
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        return httpURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j) {
        if (v.a()) {
            this.f5896c.c("ConnectionManager", "Successful " + str + " returned " + i + " in " + (((float) (System.currentTimeMillis() - j)) / 1000.0f) + " s over " + com.applovin.impl.sdk.utils.i.f(this.f5895b) + " to " + a(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j, Throwable th) {
        if (v.a()) {
            this.f5896c.b("ConnectionManager", "Failed " + str + " returned " + i + " in " + (((float) (System.currentTimeMillis() - j)) / 1000.0f) + " s over " + com.applovin.impl.sdk.utils.i.f(this.f5895b) + " to " + a(str2), th);
        }
    }

    private <T> void b(com.applovin.impl.sdk.network.c<T> cVar, a aVar, c<T> cVar2) {
        String str;
        String jSONObject;
        if (cVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        String a2 = cVar.a();
        String b2 = cVar.b();
        if (a2 == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (b2 == null) {
            throw new IllegalArgumentException("No method specified");
        }
        if (cVar2 == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (!a2.toLowerCase().startsWith("http")) {
            String str2 = "Requested postback submission to non HTTP endpoint " + a2 + "; skipping...";
            v.i("ConnectionManager", str2);
            cVar2.a(AppLovinErrorCodes.INVALID_URL, str2, null);
            return;
        }
        if (((Boolean) this.f5895b.a(com.applovin.impl.sdk.c.b.cX)).booleanValue() && !a2.contains("https://")) {
            this.f5895b.D();
            if (v.a()) {
                this.f5895b.D().d("ConnectionManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
            }
            a2 = a2.replace("http://", "https://");
        }
        Map<String, String> map = CollectionUtils.map(2);
        boolean n = cVar.n();
        long serverAdjustedUnixTimestampMillis = Utils.getServerAdjustedUnixTimestampMillis(this.f5895b);
        if ((cVar.c() != null && !cVar.c().isEmpty()) || cVar.i() >= 0) {
            Map<String, String> c2 = cVar.c();
            Boolean bool = (Boolean) this.f5895b.a(com.applovin.impl.sdk.c.b.dm);
            if (c2 != null && cVar.i() >= 0 && cVar.i() > 0) {
                c2.put("current_retry_attempt", String.valueOf(cVar.i()));
            }
            boolean booleanValue = bool.booleanValue();
            if (n) {
                String encodeUrlMap = Utils.encodeUrlMap(c2, booleanValue, ((Boolean) this.f5895b.a(com.applovin.impl.sdk.c.b.dn)).booleanValue());
                String a3 = com.applovin.impl.sdk.utils.n.a(encodeUrlMap, this.f5895b.C(), serverAdjustedUnixTimestampMillis);
                if (StringUtils.isValidString(encodeUrlMap) && a3 == null) {
                    map.put("query", encodeUrlMap);
                }
                a2 = StringUtils.appendQueryParameter(a2, "p", a3);
            } else {
                a2 = StringUtils.appendQueryParameters(a2, c2, booleanValue);
            }
        }
        String str3 = a2;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            Boolean endsWith = StringUtils.endsWith(StringUtils.getHostAndPath(str3), f5894a);
            if (v.a()) {
                this.f5896c.c("ConnectionManager", "Sending " + b2 + " request to id=#" + str3.hashCode() + " \"" + (endsWith.booleanValue() ? str3 : StringUtils.getHostAndPath(str3)) + "\"...");
            }
            e.b.a a4 = new e.b.a().a(str3).b(b2).a(cVar.d()).a(cVar.j());
            if (cVar.e() != null) {
                if (n) {
                    jSONObject = com.applovin.impl.sdk.utils.n.a(cVar.e().toString(), this.f5895b.C(), serverAdjustedUnixTimestampMillis);
                    if (jSONObject == null) {
                        map.put(TtmlNode.TAG_BODY, cVar.e().toString());
                    }
                } else {
                    jSONObject = cVar.e().toString();
                }
                String str4 = jSONObject;
                byte[] gzip = (!cVar.o() || str4 == null || str4.length() <= ((Integer) this.f5895b.a(com.applovin.impl.sdk.c.b.eE)).intValue()) ? null : Utils.gzip(str4.getBytes(Charset.forName(C.UTF8_NAME)));
                if (v.a()) {
                    this.f5896c.b("ConnectionManager", "Request to " + a(str3) + " is " + str4);
                }
                a4.a("Content-Type", "application/json; charset=utf-8");
                if (cVar.o() && gzip != null) {
                    a4.a("Content-Encoding", "gzip");
                    a4.a(gzip);
                } else if (str4 != null) {
                    a4.a(str4.getBytes(C.UTF8_NAME));
                }
            }
            if (!map.isEmpty()) {
                map.put("request", StringUtils.getHostAndPath(str3));
                this.f5895b.x().trackEvent("ref", map);
            }
            str = str3;
            try {
                this.f5897d.a(a4.a(new C0083b(str3, cVar, b2, cVar.g(), n, currentTimeMillis, aVar, cVar2)).a(this.f5895b.V().b()).a());
            } catch (Throwable th) {
                th = th;
                a(b2, str, 0, currentTimeMillis, th);
                cVar2.a(0, th.getMessage(), null);
            }
        } catch (Throwable th2) {
            th = th2;
            str = str3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0494 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v22, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r21v0, types: [com.applovin.impl.sdk.network.b] */
    /* JADX WARN: Type inference failed for: r7v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.lang.StringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> void c(com.applovin.impl.sdk.network.c<T> r22, com.applovin.impl.sdk.network.b.a r23, com.applovin.impl.sdk.network.b.c<T> r24) {
        /*
            Method dump skipped, instructions count: 1291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.network.b.c(com.applovin.impl.sdk.network.c, com.applovin.impl.sdk.network.b$a, com.applovin.impl.sdk.network.b$c):void");
    }

    public <T> void a(com.applovin.impl.sdk.network.c<T> cVar, a aVar, c<T> cVar2) {
        if (!((Boolean) this.f5895b.a(com.applovin.impl.sdk.c.b.fh)).booleanValue()) {
            c(cVar, aVar, cVar2);
            return;
        }
        if (this.f5897d == null) {
            e eVar = new e(this.f5895b);
            this.f5897d = eVar;
            eVar.a();
        }
        b(cVar, aVar, cVar2);
    }
}
