package com.ironsource.mediationsdk;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.ironsource.mediationsdk.C1349f;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceAES;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.h  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1351h {

    /* renamed from: a  reason: collision with root package name */
    ISBannerSize f11124a;

    /* renamed from: g  reason: collision with root package name */
    private String f11130g;
    private com.ironsource.mediationsdk.utils.c i;
    private InterfaceC1350g j;

    /* renamed from: b  reason: collision with root package name */
    private final String f11125b = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;

    /* renamed from: c  reason: collision with root package name */
    private final String f11126c = "102";

    /* renamed from: d  reason: collision with root package name */
    private final String f11127d = "103";

    /* renamed from: e  reason: collision with root package name */
    private final String f11128e = "102";

    /* renamed from: f  reason: collision with root package name */
    private final String f11129f = "GenericNotifications";

    /* renamed from: h  reason: collision with root package name */
    private String f11131h = IronSourceUtils.getSessionId();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.mediationsdk.h$a */
    /* loaded from: classes3.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<InterfaceC1350g> f11132a;

        /* renamed from: b  reason: collision with root package name */
        private int f11133b;

        /* renamed from: c  reason: collision with root package name */
        private String f11134c;

        /* renamed from: d  reason: collision with root package name */
        private String f11135d;

        /* renamed from: e  reason: collision with root package name */
        private List<com.ironsource.mediationsdk.server.b> f11136e;

        /* renamed from: f  reason: collision with root package name */
        private com.ironsource.mediationsdk.server.b f11137f;

        /* renamed from: g  reason: collision with root package name */
        private JSONObject f11138g;

        /* renamed from: h  reason: collision with root package name */
        private JSONObject f11139h;
        private long i;
        private int j;
        private int l;
        private final URL o;
        private final JSONObject p;
        private final boolean q;
        private final int r;
        private final long s;
        private final boolean t;
        private final boolean u;
        private final int v;
        private String k = "other";
        private String m = "";
        private int n = 0;

        a(InterfaceC1350g interfaceC1350g, URL url, JSONObject jSONObject, boolean z, int i, long j, boolean z2, boolean z3, int i2) {
            this.f11132a = new WeakReference<>(interfaceC1350g);
            this.o = url;
            this.p = jSONObject;
            this.q = z;
            this.r = i;
            this.s = j;
            this.t = z2;
            this.u = z3;
            this.v = i2;
        }

        private static String a(HttpURLConnection httpURLConnection) {
            InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    inputStreamReader.close();
                    return sb.toString();
                }
                sb.append(readLine);
            }
        }

        /* JADX WARN: Type inference failed for: r7v0 */
        /* JADX WARN: Type inference failed for: r7v1, types: [int, boolean] */
        /* JADX WARN: Type inference failed for: r7v2 */
        private boolean a() {
            long time;
            HttpURLConnection httpURLConnection;
            String encode;
            int responseCode;
            String str;
            JSONObject jSONObject;
            this.i = new Date().getTime();
            int i = 0;
            try {
                int i2 = 1015;
                ?? r7 = 1;
                this.l = this.n == 1015 ? 1 : this.v;
                this.j = 0;
                HttpURLConnection httpURLConnection2 = null;
                while (true) {
                    int i3 = this.j;
                    int i4 = this.r;
                    if (i3 >= i4) {
                        this.j = i4 - r7;
                        this.k = "trials_fail";
                        return false;
                    }
                    try {
                        time = new Date().getTime();
                        String str2 = "Auction Handler: auction trial " + (this.j + r7) + " out of " + this.r + " max trials";
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, str2, i);
                        IronSourceUtils.sendAutomationLog(str2);
                        httpURLConnection = (HttpURLConnection) this.o.openConnection();
                        httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                        httpURLConnection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                        httpURLConnection.setReadTimeout((int) this.s);
                        httpURLConnection.setDoInput(r7);
                        httpURLConnection.setDoOutput(r7);
                    } catch (SocketTimeoutException unused) {
                    } catch (Exception e2) {
                        e = e2;
                    }
                    try {
                        JSONObject jSONObject2 = this.p;
                        boolean z = this.t;
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, com.google.android.exoplayer2.C.UTF8_NAME);
                        BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
                        String str3 = "";
                        if (this.l == 2) {
                            try {
                                str3 = com.ironsource.mediationsdk.utils.g.a().d();
                            } catch (JSONException e3) {
                                this.m = e3.getLocalizedMessage();
                                this.n = i2;
                                this.l = r7;
                            }
                        }
                        String str4 = str3;
                        String jSONObject3 = jSONObject2.toString();
                        String b2 = b();
                        if (z) {
                            IronLog.INTERNAL.verbose("compressing and encrypting auction request");
                            encode = IronSourceAES.compressAndEncrypt(b2, jSONObject3);
                        } else {
                            encode = IronSourceAES.encode(b2, jSONObject3);
                        }
                        bufferedWriter.write(this.l == 2 ? String.format("{\"sk\" : \"%1$s\", \"ct\" : \"%2$s\"}", str4, encode) : String.format("{\"request\" : \"%1$s\"}", encode));
                        bufferedWriter.flush();
                        bufferedWriter.close();
                        outputStreamWriter.close();
                        outputStream.close();
                        responseCode = httpURLConnection.getResponseCode();
                    } catch (SocketTimeoutException unused2) {
                        httpURLConnection2 = httpURLConnection;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        this.f11133b = 1006;
                        this.f11134c = "Connection timed out";
                        this.j++;
                        r7 = 1;
                        i = 0;
                        i2 = 1015;
                    } catch (Exception e4) {
                        e = e4;
                        httpURLConnection2 = httpURLConnection;
                        IronLog.INTERNAL.error("getting exception " + e);
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        this.f11133b = 1000;
                        this.f11134c = e.getMessage();
                        this.k = "other";
                        return false;
                    }
                    if (responseCode == 200) {
                        String a2 = a(httpURLConnection);
                        try {
                            boolean z2 = this.q;
                            boolean z3 = this.u;
                            if (TextUtils.isEmpty(a2)) {
                                throw new JSONException("empty response");
                            }
                            JSONObject jSONObject4 = new JSONObject(a2);
                            if (z2) {
                                String b3 = b();
                                String string = jSONObject4.getString(this.l == 2 ? com.appnext.base.a.c.a.dS : "response");
                                if (z3) {
                                    IronLog.INTERNAL.verbose("decrypting and decompressing auction response");
                                    String decryptAndDecompress = IronSourceAES.decryptAndDecompress(b3, string);
                                    if (decryptAndDecompress == null) {
                                        throw new JSONException("decompression error");
                                    }
                                    jSONObject = new JSONObject(decryptAndDecompress);
                                } else {
                                    String decode = IronSourceAES.decode(b3, string);
                                    if (TextUtils.isEmpty(decode)) {
                                        throw new JSONException("decryption error");
                                    }
                                    jSONObject = new JSONObject(decode);
                                }
                                jSONObject4 = jSONObject;
                            }
                            C1349f.a();
                            C1349f.a a3 = C1349f.a(jSONObject4);
                            this.f11135d = a3.f11111a;
                            this.f11136e = a3.f11112b;
                            this.f11137f = a3.f11113c;
                            this.f11138g = a3.f11114d;
                            this.f11139h = a3.f11115e;
                            this.f11133b = a3.f11116f;
                            this.f11134c = a3.f11117g;
                            httpURLConnection.disconnect();
                            return true;
                        } catch (JSONException e5) {
                            if (e5.getMessage() != null && e5.getMessage().equalsIgnoreCase("decryption error")) {
                                this.f11133b = 1003;
                                this.f11134c = "Auction decryption error";
                            }
                            if (e5.getMessage() == null || !e5.getMessage().equalsIgnoreCase("decompression error")) {
                                this.f11133b = 1002;
                                str = "Auction parsing error";
                            } else {
                                this.f11133b = 1008;
                                str = "Auction decompression error";
                            }
                            this.f11134c = str;
                            this.k = "parsing";
                            httpURLConnection.disconnect();
                            return false;
                        }
                    }
                    this.f11133b = 1001;
                    this.f11134c = "Auction status not 200 error, error code response from server - " + responseCode;
                    IronLog.INTERNAL.error(this.f11134c);
                    httpURLConnection.disconnect();
                    if (this.j < this.r - 1) {
                        long time2 = this.s - (new Date().getTime() - time);
                        if (time2 > 0) {
                            SystemClock.sleep(time2);
                        }
                    }
                    httpURLConnection2 = httpURLConnection;
                    this.j++;
                    r7 = 1;
                    i = 0;
                    i2 = 1015;
                }
            } catch (Exception e6) {
                this.f11133b = 1007;
                this.f11134c = e6.getMessage();
                this.j = 0;
                this.k = "other";
                return false;
            }
        }

        private String b() {
            return this.l == 2 ? com.ironsource.mediationsdk.utils.g.a().c() : com.ironsource.mediationsdk.utils.g.a().b();
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean a2 = a();
            InterfaceC1350g interfaceC1350g = this.f11132a.get();
            if (interfaceC1350g == null) {
                return;
            }
            long time = new Date().getTime() - this.i;
            if (a2) {
                interfaceC1350g.a(this.f11136e, this.f11135d, this.f11137f, this.f11138g, this.f11139h, this.j + 1, time, this.n, this.m);
            } else {
                interfaceC1350g.a(this.f11133b, this.f11134c, this.j + 1, this.k, time);
            }
        }
    }

    public C1351h(String str, com.ironsource.mediationsdk.utils.c cVar, InterfaceC1350g interfaceC1350g) {
        this.f11130g = str;
        this.i = cVar;
        this.j = interfaceC1350g;
    }

    private JSONObject a(Context context, Map<String, Object> map, List<String> list, C1352i c1352i, int i, boolean z, IronSourceSegment ironSourceSegment) {
        new JSONObject();
        com.ironsource.mediationsdk.utils.p c2 = H.a().i.f11449c.f11258e.c();
        JSONObject a2 = a(ironSourceSegment);
        boolean z2 = c2.f11473d;
        C1349f a3 = C1349f.a();
        if (z2) {
            return a3.a(this.f11130g, z, map, list, c1352i, i, this.f11124a, a2);
        }
        JSONObject a4 = a3.a(context, map, list, c1352i, i, this.f11131h, this.i, this.f11124a, a2);
        a4.put("adUnit", this.f11130g);
        a4.put("doNotEncryptResponse", z ? "false" : "true");
        return a4;
    }

    private static JSONObject a(IronSourceSegment ironSourceSegment) {
        JSONObject jSONObject = new JSONObject();
        if (ironSourceSegment == null) {
            return null;
        }
        Vector<Pair<String, String>> a2 = ironSourceSegment.a();
        for (int i = 0; i < a2.size(); i++) {
            try {
                jSONObject.put((String) a2.get(i).first, a2.get(i).second);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONObject;
    }

    public static void a(com.ironsource.mediationsdk.server.b bVar, int i, com.ironsource.mediationsdk.server.b bVar2) {
        for (String str : bVar.f()) {
            String a2 = C1349f.a().a(str, i, bVar, "", "", "");
            C1349f.a();
            C1349f.a("reportLoadSuccess", bVar.a(), a2);
        }
        if (bVar2 != null) {
            for (String str2 : bVar2.f()) {
                String a3 = C1349f.a().a(str2, i, bVar, "", "102", "");
                C1349f.a();
                C1349f.a("reportLoadSuccess", "GenericNotifications", a3);
            }
        }
    }

    public static void a(com.ironsource.mediationsdk.server.b bVar, int i, com.ironsource.mediationsdk.server.b bVar2, String str) {
        for (String str2 : bVar.d()) {
            String a2 = C1349f.a().a(str2, i, bVar, "", "", str);
            C1349f.a();
            C1349f.a("reportImpression", bVar.a(), a2);
        }
        if (bVar2 != null) {
            for (String str3 : bVar2.d()) {
                String a3 = C1349f.a().a(str3, i, bVar, "", "102", str);
                C1349f.a();
                C1349f.a("reportImpression", "GenericNotifications", a3);
            }
        }
    }

    public static void a(ArrayList<String> arrayList, ConcurrentHashMap<String, com.ironsource.mediationsdk.server.b> concurrentHashMap, int i, com.ironsource.mediationsdk.server.b bVar, com.ironsource.mediationsdk.server.b bVar2) {
        Iterator<String> it = arrayList.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            String next = it.next();
            if (next.equals(bVar2.a())) {
                z2 = i == 2;
                z = true;
            } else {
                com.ironsource.mediationsdk.server.b bVar3 = concurrentHashMap.get(next);
                String c2 = bVar3.c();
                String str = z ? z2 ? "102" : "103" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
                for (String str2 : bVar3.e()) {
                    String a2 = C1349f.a().a(str2, i, bVar2, c2, str, "");
                    C1349f.a();
                    C1349f.a("reportAuctionLose", bVar3.a(), a2);
                }
            }
        }
        if (bVar != null) {
            for (String str3 : bVar.e()) {
                String a3 = C1349f.a().a(str3, i, bVar2, "", "102", "");
                C1349f.a();
                C1349f.a("reportAuctionLose", "GenericNotifications", a3);
            }
        }
    }

    public final void a(Context context, Map<String, Object> map, List<String> list, C1352i c1352i, int i, IronSourceSegment ironSourceSegment) {
        try {
            boolean z = true;
            if (IronSourceUtils.getSerr() != 1) {
                z = false;
            }
            boolean z2 = z;
            com.ironsource.environment.e.c.f10584a.c(new a(this.j, new URL(this.i.f11407d), a(context, map, list, c1352i, i, z2, ironSourceSegment), z2, this.i.f11408e, this.i.f11411h, this.i.p, this.i.q, this.i.r));
        } catch (Exception e2) {
            this.j.a(1000, e2.getMessage(), 0, "other", 0L);
        }
    }

    public final void a(CopyOnWriteArrayList<Y> copyOnWriteArrayList, ConcurrentHashMap<String, com.ironsource.mediationsdk.server.b> concurrentHashMap, int i, com.ironsource.mediationsdk.server.b bVar, com.ironsource.mediationsdk.server.b bVar2) {
        ArrayList arrayList = new ArrayList();
        Iterator<Y> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().k());
        }
        a(arrayList, concurrentHashMap, i, bVar, bVar2);
    }
}
