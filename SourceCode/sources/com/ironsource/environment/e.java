package com.ironsource.environment;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.text.TextUtils;
import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import java.io.DataOutputStream;
import java.lang.Thread;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    public static String f10565c = "";

    /* renamed from: a  reason: collision with root package name */
    Context f10566a;

    /* renamed from: b  reason: collision with root package name */
    String f10567b;

    /* renamed from: d  reason: collision with root package name */
    private JSONObject f10568d;

    /* renamed from: e  reason: collision with root package name */
    private String f10569e;

    /* renamed from: f  reason: collision with root package name */
    private String f10570f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f10571g;

    /* renamed from: h  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f10572h;
    private String i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        static volatile e f10582a = new e((byte) 0);
    }

    private e() {
        this.f10571g = false;
        this.f10568d = new JSONObject();
        this.f10572h = Thread.getDefaultUncaughtExceptionHandler();
        this.f10567b = " ";
        this.i = "https://outcome-crash-report.supersonicads.com/reporter";
        Thread.setDefaultUncaughtExceptionHandler(new d(this.f10572h));
    }

    /* synthetic */ e(byte b2) {
        this();
    }

    public static e a() {
        return a.f10582a;
    }

    private static String a(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return "none";
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            return networkCapabilities == null ? "none" : networkCapabilities.hasTransport(1) ? "wifi" : networkCapabilities.hasTransport(0) ? "cellular" : "none";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "none";
        }
    }

    public final void a(final Context context, HashSet<String> hashSet, String str, String str2, boolean z, final String str3, int i, boolean z2) {
        if (context != null) {
            Log.d("automation_log", "init ISCrashReporter");
            this.f10566a = context;
            if (!TextUtils.isEmpty(str2)) {
                this.f10567b = str2;
            }
            if (!TextUtils.isEmpty(str)) {
                this.i = str;
            }
            this.f10570f = str3;
            if (z) {
                com.ironsource.environment.a aVar = new com.ironsource.environment.a(i);
                aVar.f10540c = z2;
                aVar.f10539b = true;
                aVar.f10538a = new b() { // from class: com.ironsource.environment.e.1
                    @Override // com.ironsource.environment.b
                    public final void a() {
                        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
                        StringBuilder sb = new StringBuilder(128);
                        for (Thread thread : allStackTraces.keySet()) {
                            StackTraceElement[] stackTrace = thread.getStackTrace();
                            if (stackTrace != null && stackTrace.length > 0) {
                                sb.append("*** Thread Name ").append(thread.getName()).append(" Thread ID ").append(thread.getId()).append(" (").append(thread.getState().toString()).append(") ***\n");
                                for (StackTraceElement stackTraceElement : stackTrace) {
                                    sb.append(stackTraceElement.toString()).append(" ").append(thread.getState().toString()).append("\n");
                                }
                            }
                        }
                        e.f10565c = sb.toString();
                    }

                    @Override // com.ironsource.environment.b
                    public final void b() {
                    }
                };
                aVar.start();
            }
            String a2 = a(this.f10566a);
            if (!a2.equals("none")) {
                SharedPreferences sharedPreferences = context.getSharedPreferences("CRep", 0);
                String string = sharedPreferences.getString("String1", this.f10569e);
                String string2 = sharedPreferences.getString("sId", this.f10570f);
                for (c cVar : f.a()) {
                    String b2 = cVar.b();
                    String a3 = cVar.a();
                    String c2 = cVar.c();
                    String packageName = context.getPackageName();
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("crashDate", b2);
                        jSONObject.put("stacktraceCrash", a3);
                        jSONObject.put("crashType", c2);
                        jSONObject.put("CrashReporterVersion", "1.0.5");
                        jSONObject.put("SDKVersion", "7.2.1.1");
                        jSONObject.put("deviceLanguage", h.a(context));
                        jSONObject.put("appVersion", c.c(context, packageName));
                        jSONObject.put("deviceOSVersion", h.e());
                        jSONObject.put("network", a2);
                        jSONObject.put("deviceApiLevel", h.f());
                        jSONObject.put("deviceModel", h.g());
                        jSONObject.put("deviceOS", h.i());
                        jSONObject.put("advertisingId", string);
                        jSONObject.put("isLimitAdTrackingEnabled", this.f10571g);
                        jSONObject.put("deviceOEM", h.h());
                        jSONObject.put("systemProperties", System.getProperties());
                        jSONObject.put("bundleId", packageName);
                        jSONObject.put("sId", string2);
                        JSONObject jSONObject2 = new JSONObject();
                        if (hashSet != null && !hashSet.isEmpty()) {
                            Iterator<String> it = hashSet.iterator();
                            while (it.hasNext()) {
                                String next = it.next();
                                try {
                                    if (jSONObject.has(next)) {
                                        jSONObject2.put(next, jSONObject.opt(next));
                                    }
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                            }
                            jSONObject = jSONObject2;
                        }
                        this.f10568d = jSONObject;
                    } catch (Exception unused) {
                    }
                    if (this.f10568d.length() == 0) {
                        Log.d("ISCrashReport", " Is Empty");
                    } else {
                        new Thread(new Runnable() { // from class: com.ironsource.environment.e.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(e.a().i).openConnection();
                                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                                    httpURLConnection.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
                                    httpURLConnection.setRequestProperty("Accept", "application/json");
                                    httpURLConnection.setDoOutput(true);
                                    httpURLConnection.setDoInput(true);
                                    Log.i("JSON", e.this.f10568d.toString());
                                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                                    dataOutputStream.writeBytes(e.this.f10568d.toString());
                                    dataOutputStream.flush();
                                    dataOutputStream.close();
                                    Log.i("STATUS", String.valueOf(httpURLConnection.getResponseCode()));
                                    Log.i("MSG", httpURLConnection.getResponseMessage());
                                    httpURLConnection.disconnect();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            }
                        }).start();
                        f.c();
                    }
                }
            }
            new Thread(new Runnable() { // from class: com.ironsource.environment.e.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        String[] C = h.C(context);
                        if (C == null || C.length != 2) {
                            return;
                        }
                        if (!TextUtils.isEmpty(C[0])) {
                            e.this.f10569e = C[0];
                        }
                        e.this.f10571g = Boolean.parseBoolean(C[1]);
                        SharedPreferences.Editor edit = context.getSharedPreferences("CRep", 0).edit();
                        edit.putString("String1", e.this.f10569e);
                        edit.putString("sId", str3);
                        edit.apply();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            }).start();
        }
    }
}
