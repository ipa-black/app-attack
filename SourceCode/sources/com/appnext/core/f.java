package com.appnext.core;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebView;
import androidx.browser.trusted.sharing.ShareTarget;
import com.appnext.base.b.d;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.google.android.exoplayer2.C;
import com.google.common.net.HttpHeaders;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.PushbackInputStream;
import java.io.StringWriter;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class f {
    private static final boolean DEBUG = false;
    public static final String VID = "2.5.1.472";
    static final int fd = 8000;
    private static final String gP = "expiredTimems";
    private static double gQ;
    private static HashMap<String, Bitmap> gR;
    private static String gS;
    private static String gT;
    private static String gU;
    public static final Executor gV;

    public static double bg() {
        return 0.0d;
    }

    public static void c(Throwable th) {
    }

    public static void o(String str) {
    }

    static {
        CookieHandler.setDefault(new CookieManager());
        gQ = -1.0d;
        gS = "";
        gT = "";
        gU = "";
        gV = new ThreadPoolExecutor(Runtime.getRuntime().availableProcessors() + 1, (Runtime.getRuntime().availableProcessors() * 2) + 1, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), new ThreadFactory() { // from class: com.appnext.core.f.1
            private final AtomicInteger gW = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, "AsyncTask #" + this.gW.getAndIncrement());
            }
        });
        gR = new HashMap<>();
    }

    public static String l(Context context) {
        return b(context, true);
    }

    public static String b(Context context, boolean z) {
        String str;
        if (context == null || context.getApplicationContext() == null) {
            return "";
        }
        try {
            try {
                Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                str = AdsIDHelper.a(context.getApplicationContext(), z);
            } catch (ClassNotFoundException unused) {
                str = "";
            }
            gT = str;
            return str;
        } catch (Throwable unused2) {
            if (gT.equals("")) {
                return "";
            }
            return gT;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void m(Context context) {
        try {
            WebView webView = new WebView(context);
            gS = webView.getSettings().getUserAgentString();
            webView.destroy();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String bd() {
        return gS;
    }

    private static void V(String str) {
        gS = str;
    }

    public static String be() {
        try {
            return URLEncoder.encode("android " + Build.VERSION.SDK_INT + " " + Build.MANUFACTURER + " " + Build.MODEL, C.UTF8_NAME);
        } catch (Throwable unused) {
            return MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID;
        }
    }

    public static int bf() {
        Runtime runtime = Runtime.getRuntime();
        return (int) ((runtime.maxMemory() / 1048576) - ((runtime.totalMemory() - runtime.freeMemory()) / 1048576));
    }

    public static String a(String str, HashMap<String, String> hashMap) throws IOException {
        return a(str, hashMap, true, 8000);
    }

    public static String a(String str, HashMap<String, String> hashMap, boolean z) throws IOException {
        return a(str, hashMap, z, 8000);
    }

    public static String a(String str, HashMap<String, String> hashMap, int i) throws IOException {
        return a(str, (HashMap<String, String>) null, true, i);
    }

    public static String a(String str, HashMap<String, String> hashMap, boolean z, int i) throws IOException {
        return new String(b(str, hashMap, z, i, d.a.HashMap), C.UTF8_NAME);
    }

    public static String a(String str, ArrayList<Pair<String, String>> arrayList) throws IOException {
        return a(str, arrayList, 8000);
    }

    public static String a(String str, ArrayList<Pair<String, String>> arrayList, int i) throws IOException {
        return new String(b(str, arrayList, true, i, d.a.ArrayList), C.UTF8_NAME);
    }

    public static String b(String str, JSONObject jSONObject) throws IOException {
        return new String(b(str, jSONObject, true, 8000, d.a.JSONObject), C.UTF8_NAME);
    }

    public static byte[] a(String str, Object obj, boolean z, int i) throws IOException {
        return b(str, obj, z, i, d.a.HashMap);
    }

    private static boolean W(String str) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
        } catch (Throwable unused) {
        }
        if (jSONObject.has("aid")) {
            String string = jSONObject.getString("aid");
            if (!TextUtils.isEmpty(string)) {
                if (string.equals(b(com.appnext.base.b.e.getContext(), true))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private static boolean X(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has(gP)) {
                return System.currentTimeMillis() >= jSONObject.getLong(gP);
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static byte[] a(String str, Object obj, boolean z, int i, d.a aVar) throws Exception {
        HttpURLConnection httpURLConnection;
        String key = com.appnext.base.services.a.aK().getKey();
        InputStream inputStream = null;
        if (TextUtils.isEmpty(key) || !W(key) || X(key)) {
            HashMap hashMap = new HashMap();
            hashMap.put("aid", com.appnext.base.b.h.aO().M(b(com.appnext.base.b.e.getContext(), true)));
            try {
                byte[] b2 = b("https://api.appnxt.net/api/token", hashMap, false, 15000, d.a.HashMap);
                if (b2 == null) {
                    return null;
                }
                String str2 = new String(b2, C.UTF8_NAME);
                JSONObject jSONObject = new JSONObject(str2);
                jSONObject.put("aid", b(com.appnext.base.b.e.getContext(), true));
                jSONObject.put(gP, (System.currentTimeMillis() + (jSONObject.getLong("expire") * 1000)) - 10000);
                com.appnext.base.services.a.aK().setKey(jSONObject.toString());
                key = str2;
            } catch (Throwable th) {
                throw new Exception(th.getMessage());
            }
        }
        try {
            JSONObject jSONObject2 = new JSONObject(key);
            if (jSONObject2.has("secret") && jSONObject2.has("rnd")) {
                String string = jSONObject2.getString("rnd");
                String string2 = jSONObject2.getString("secret");
                try {
                    httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                } catch (Throwable th2) {
                    th = th2;
                    httpURLConnection = null;
                }
                try {
                    httpURLConnection.setReadTimeout(15000);
                    httpURLConnection.setConnectTimeout(15000);
                    httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "gzip");
                    httpURLConnection.setRequestProperty("User-Agent", gS);
                    httpURLConnection.setRequestProperty("rnd", string);
                    String b3 = b(com.appnext.base.b.e.getContext(), true);
                    if (TextUtils.isEmpty(b3)) {
                        Object a2 = com.appnext.base.b.j.a(com.appnext.base.b.d.fp, d.a.String);
                        if (a2 == null || !(a2 instanceof String)) {
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            return null;
                        }
                        b3 = (String) a2;
                    } else {
                        com.appnext.base.b.j.a(com.appnext.base.b.d.fp, b3, d.a.String);
                    }
                    if (TextUtils.isEmpty(b3)) {
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return null;
                    }
                    httpURLConnection.setRequestProperty("aid", com.appnext.base.b.h.aO().M(b3));
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                    if (aVar == d.a.JSONObject || aVar == d.a.JSONArray) {
                        httpURLConnection.setRequestProperty("Content-Type", "application/json");
                        obj.toString();
                    }
                    String str3 = "";
                    if (aVar == d.a.JSONArray) {
                        str3 = ((JSONArray) obj).toString();
                    } else if (aVar == d.a.JSONObject) {
                        str3 = ((JSONObject) obj).toString();
                    } else if (aVar == d.a.HashMap) {
                        ArrayList arrayList = new ArrayList();
                        for (Map.Entry entry : ((HashMap) obj).entrySet()) {
                            arrayList.add(new Pair(entry.getKey(), entry.getValue()));
                        }
                        str3 = b((List<Pair<String, String>>) arrayList, false);
                    } else if (aVar == d.a.ArrayList) {
                        str3 = b((List<Pair<String, String>>) ((ArrayList) obj), false);
                    }
                    byte[] f2 = com.appnext.base.b.h.aO().f(str3, string2);
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    if (f2 != null) {
                        outputStream.write(f2);
                    }
                    outputStream.close();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        InputStream inputStream2 = httpURLConnection.getInputStream();
                        byte[] b4 = b(a(inputStream2));
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return b4;
                    } else if (responseCode == 301 || responseCode == 302 || responseCode == 303) {
                        byte[] b5 = b(httpURLConnection.getHeaderField("Location"), obj, false, 15000, aVar);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return b5;
                    } else {
                        throw new HttpRetryException(new String(b(httpURLConnection.getErrorStream()), C.UTF8_NAME), responseCode);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (0 != 0) {
                        inputStream.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static byte[] b(String str, Object obj, boolean z, int i, d.a aVar) throws IOException {
        HttpURLConnection httpURLConnection;
        URL url = new URL(str);
        InputStream inputStream = null;
        try {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        } catch (Throwable th) {
            th = th;
            httpURLConnection = null;
        }
        try {
            httpURLConnection.setReadTimeout(i);
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "gzip");
            httpURLConnection.setRequestProperty("User-Agent", gS);
            if (obj != null) {
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                if (aVar == d.a.JSONObject || aVar == d.a.JSONArray) {
                    httpURLConnection.setRequestProperty("Content-Type", "application/json");
                    obj.toString();
                }
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, C.UTF8_NAME));
                if (aVar == d.a.JSONArray) {
                    bufferedWriter.write(((JSONArray) obj).toString());
                } else if (aVar == d.a.JSONObject) {
                    bufferedWriter.write(((JSONObject) obj).toString());
                } else if (aVar == d.a.HashMap) {
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry entry : ((HashMap) obj).entrySet()) {
                        arrayList.add(new Pair(entry.getKey(), entry.getValue()));
                    }
                    bufferedWriter.write(b(arrayList, z));
                } else if (aVar == d.a.ArrayList) {
                    bufferedWriter.write(b((ArrayList) obj, z));
                }
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                InputStream inputStream2 = httpURLConnection.getInputStream();
                byte[] b2 = b(a(inputStream2));
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return b2;
            } else if (responseCode == 301 || responseCode == 302 || responseCode == 303) {
                byte[] b3 = b(httpURLConnection.getHeaderField("Location"), obj, z, i, aVar);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return b3;
            } else {
                String str2 = "";
                InputStream errorStream = httpURLConnection.getErrorStream();
                if (errorStream != null) {
                    str2 = new String(b(errorStream), C.UTF8_NAME);
                }
                throw new HttpRetryException(str2, responseCode);
            }
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                inputStream.close();
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    public static InputStream a(InputStream inputStream) throws IOException {
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 2);
        byte[] bArr = new byte[2];
        try {
            pushbackInputStream.unread(bArr, 0, pushbackInputStream.read(bArr));
            return (bArr[0] == 31 && bArr[1] == -117) ? new GZIPInputStream(pushbackInputStream) : pushbackInputStream;
        } catch (Throwable unused) {
            return inputStream;
        }
    }

    private static byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                inputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static Bitmap Y(String str) {
        HttpURLConnection httpURLConnection;
        try {
            if (gR.get(str) != null) {
                return gR.get(str);
            }
            if (gR.keySet().size() > 50) {
                try {
                    Iterator<String> it = gR.keySet().iterator();
                    while (it.hasNext()) {
                        it.next();
                        if (new Random().nextBoolean()) {
                            it.remove();
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                InputStream inputStream = httpURLConnection.getInputStream();
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                inputStream.close();
                if (decodeStream == null) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return null;
                }
                if (!gR.containsKey(str)) {
                    gR.put(str, decodeStream);
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return decodeStream;
            } catch (Throwable unused2) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return null;
            }
        } catch (Throwable unused3) {
            httpURLConnection = null;
        }
    }

    private static void d(HashMap<String, Bitmap> hashMap) {
        try {
            Iterator<String> it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                it.next();
                if (new Random().nextBoolean()) {
                    it.remove();
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static String b(List<Pair<String, String>> list, boolean z) {
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        for (Pair<String, String> pair : list) {
            try {
                if (pair.first != null && pair.second != null) {
                    StringBuilder sb2 = new StringBuilder();
                    if (z2) {
                        z2 = false;
                    } else {
                        sb2.append("&");
                    }
                    if (z) {
                        sb2.append(URLEncoder.encode(URLDecoder.decode((String) pair.first, C.UTF8_NAME), C.UTF8_NAME));
                        sb2.append("=");
                        sb2.append(URLEncoder.encode(URLDecoder.decode((String) pair.second, C.UTF8_NAME), C.UTF8_NAME));
                    } else {
                        sb2.append(URLEncoder.encode((String) pair.first, C.UTF8_NAME));
                        sb2.append("=");
                        sb2.append(URLEncoder.encode((String) pair.second, C.UTF8_NAME));
                    }
                    new StringBuilder("params: key: ").append((String) pair.first).append(" value: ");
                    String str = (String) pair.second;
                    sb.append((CharSequence) sb2);
                }
            } catch (Throwable unused) {
            }
        }
        return sb.toString();
    }

    public static int a(Context context, float f2) {
        return (int) (f2 * (context.getResources().getDisplayMetrics().densityDpi / 160.0f));
    }

    public static void a(final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final String str7, final String str8, final String str9) {
        try {
            if (str6.equals(com.appnext.ads.a.I) || str6.equals(com.appnext.ads.a.M)) {
                new Thread(new Runnable() { // from class: com.appnext.core.f.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str10;
                        String str11;
                        try {
                            str10 = URLEncoder.encode(str5.replace(" ", "_"), C.UTF8_NAME);
                        } catch (Throwable unused) {
                            str10 = "";
                        }
                        try {
                            str11 = URLEncoder.encode(str6.replace(" ", "_"), C.UTF8_NAME);
                        } catch (Throwable unused2) {
                            str11 = "";
                        }
                        try {
                            f.a(String.format("https://admin.appnext.com/tp12.aspx?tid=%s&vid=%s&osid=%s&auid=%s&session_id=%s&pid=%s&ref=%s&ads_type=%s&bid=%s&cid=%s", str, str2, StatisticData.ERROR_CODE_NOT_FOUND, str3, str10, str4, str11, str7, str8.equals("") ? "0" : str8, str9.equals("") ? "0" : str9), (HashMap<String, String>) null);
                        } catch (Throwable th) {
                            th.getMessage();
                        }
                    }
                }).start();
            }
        } catch (Throwable unused) {
        }
    }

    private static void a(final Context context, final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final String str7, final String str8) {
        try {
            new Thread(new Runnable() { // from class: com.appnext.core.f.3
                @Override // java.lang.Runnable
                public final void run() {
                    String str9;
                    try {
                        str9 = f.q(context);
                    } catch (Throwable unused) {
                        str9 = "";
                    }
                    f.a(str, str2, str3, str4, str9, str5, str6, str7, str8);
                }
            }).start();
        } catch (Throwable unused) {
        }
    }

    public static void a(final Ad ad, final AppnextAd appnextAd, final String str, final String str2, final p pVar) {
        new Thread(new Runnable() { // from class: com.appnext.core.f.4
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (Boolean.parseBoolean(p.this.get("stp_flag"))) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new Pair("client_date", new StringBuilder().append(System.currentTimeMillis()).toString()));
                        arrayList.add(new Pair("did", f.b(ad.getContext(), true)));
                        arrayList.add(new Pair("session_id", appnextAd.getSession()));
                        arrayList.add(new Pair(ScarConstants.TOKEN_ID_KEY, ad.getTID()));
                        arrayList.add(new Pair("vid", ad.getVID()));
                        arrayList.add(new Pair("auid", ad.getAUID()));
                        arrayList.add(new Pair("osid", StatisticData.ERROR_CODE_NOT_FOUND));
                        arrayList.add(new Pair("tem_id", str2));
                        arrayList.add(new Pair("pid", ad.getPlacementID()));
                        arrayList.add(new Pair("banner_id", appnextAd.getBannerID()));
                        arrayList.add(new Pair("cm_id", appnextAd.getCampaignID()));
                        arrayList.add(new Pair("event_name", str));
                        arrayList.add(new Pair("package_id", ad.getContext().getPackageName()));
                        f.a("https://global.appnext.com/stp.aspx", arrayList, 8000);
                    }
                } catch (Throwable unused) {
                }
            }
        }).start();
    }

    public static boolean c(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 128);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String m(String str, String str2) {
        String[] split;
        String cookie = android.webkit.CookieManager.getInstance().getCookie(str);
        if (cookie == null) {
            return "";
        }
        String str3 = "";
        for (String str4 : cookie.split(";")) {
            if (str4.contains(str2)) {
                String[] split2 = str4.split("=");
                if (split2.length <= 1) {
                    return "";
                }
                str3 = split2[1];
            }
        }
        return str3;
    }

    public static String n(Context context) {
        if (context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) != 0) {
            return LogConstants.KEY_UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "-";
        }
        if (activeNetworkInfo.getType() == 1) {
            return "wifi";
        }
        return activeNetworkInfo.getType() == 0 ? new StringBuilder().append(activeNetworkInfo.getSubtype()).toString() : LogConstants.KEY_UNKNOWN;
    }

    public static String o(Context context) {
        if (context == null || context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) != 0) {
            return LogConstants.KEY_UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "-";
        }
        if (activeNetworkInfo.getType() == 1) {
            return "wifi";
        }
        if (activeNetworkInfo.getType() != 0) {
            return LogConstants.KEY_UNKNOWN;
        }
        switch (activeNetworkInfo.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
                return "4G";
            default:
                return LogConstants.KEY_UNKNOWN;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int Z(String str) {
        boolean z;
        String lowerCase = str.toLowerCase(Locale.US);
        lowerCase.hashCode();
        switch (lowerCase.hashCode()) {
            case 1653:
                if (lowerCase.equals("2g")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 1684:
                if (lowerCase.equals("3g")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1715:
                if (lowerCase.equals("4g")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3649301:
                if (lowerCase.equals("wifi")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                return 0;
            case true:
                return 1;
            case true:
                return 2;
            case true:
                return 3;
            default:
                return -1;
        }
    }

    public static String b(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String obj = stringWriter.toString();
        return obj.length() > 512 ? obj.substring(0, 512) : obj;
    }

    public static boolean a(Context context, String str) {
        return (context == null || TextUtils.isEmpty(str) || context.checkPermission(str, Process.myPid(), Process.myUid()) != 0) ? false : true;
    }

    public static String p(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager.getSimState() != 5) {
            return "";
        }
        String simOperator = telephonyManager.getSimOperator();
        return simOperator.substring(0, 3) + "_" + simOperator.substring(3);
    }

    public static String bh() {
        return Locale.getDefault().getLanguage();
    }

    public static String q(Context context) {
        if (gU.equals("")) {
            synchronized ("2.5.1.472") {
                if (gU.equals("")) {
                    gU = r(context);
                }
            }
        }
        return gU;
    }

    private static String aa(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            StringBuilder sb = new StringBuilder(length << 1);
            for (int i = 0; i < length; i++) {
                sb.append(Character.forDigit((digest[i] & 240) >> 4, 16));
                sb.append(Character.forDigit(digest[i] & 15, 16));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return c(32);
        }
    }

    private static String c(int i) {
        char[] charArray = "0123456789abcdef".toCharArray();
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 32; i2++) {
            sb.append(charArray[random.nextInt(charArray.length)]);
        }
        return sb.toString();
    }

    public static String c(String str) {
        String substring = str.substring(str.lastIndexOf("/") + 1);
        if (substring.contains("?")) {
            substring = substring.substring(0, substring.indexOf("?"));
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter("rnd");
            return (queryParameter == null || queryParameter.equals("")) ? substring : substring.substring(0, substring.lastIndexOf(46)) + "_" + queryParameter + substring.substring(substring.lastIndexOf(46));
        } catch (Throwable unused) {
            return substring;
        }
    }

    public static String g(AppnextAd appnextAd) {
        return "https://www.appnext.com/privacy_policy/index.html?z=" + new Random().nextInt(10) + appnextAd.getZoneID() + new Random().nextInt(10) + (appnextAd.isGdpr() ? "&edda=1&geo=" + appnextAd.getCountry() : "");
    }

    public static boolean s(Context context) {
        try {
            if (context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) != 0) {
                a("http://www.appnext.com/myid.html", (HashMap<String, String>) null);
                return true;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                throw new IOException();
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String bi() {
        String[] split = "2.5.1.472".split("\\.");
        if (split.length < 4) {
            return "2.5.1.472";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 3; i++) {
            sb.append(split[i]);
            if (i < 2) {
                sb.append(".");
            }
        }
        return sb.toString();
    }

    public static void a(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                a(file2);
            }
        }
        file.delete();
    }

    public static String r(Context context) {
        String b2 = b(context, true);
        if (b2.equals("")) {
            return c(32);
        }
        return aa(b2 + "_" + (System.currentTimeMillis() / 1000));
    }
}
