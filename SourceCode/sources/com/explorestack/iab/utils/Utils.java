package com.explorestack.iab.utils;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import com.google.android.exoplayer2.C;
import java.io.Closeable;
import java.io.Flushable;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class Utils {

    /* renamed from: a  reason: collision with root package name */
    public static final Handler f9398a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    public static final AtomicInteger f9399b = new AtomicInteger(1);

    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f9400a;

        public a(String str) {
            this.f9400a = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r7 = this;
                java.lang.String r0 = "Utils"
                r1 = 0
                java.util.Locale r2 = java.util.Locale.ENGLISH     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                java.lang.String r3 = "Connection to URL: %s"
                java.lang.String r4 = r7.f9400a     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                java.lang.Object[] r4 = new java.lang.Object[]{r4}     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                java.lang.String r3 = java.lang.String.format(r2, r3, r4)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                com.explorestack.iab.utils.c.a(r0, r3)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                java.net.URL r3 = new java.net.URL     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                java.lang.String r4 = r7.f9400a     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                r3.<init>(r4)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                r4 = 1
                java.net.HttpURLConnection.setFollowRedirects(r4)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                java.net.URLConnection r3 = r3.openConnection()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                java.net.HttpURLConnection r3 = (java.net.HttpURLConnection) r3     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
                r1 = 5000(0x1388, float:7.006E-42)
                r3.setConnectTimeout(r1)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L75
                java.lang.String r1 = "Connection"
                java.lang.String r4 = "close"
                r3.setRequestProperty(r1, r4)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L75
                java.lang.String r1 = "GET"
                r3.setRequestMethod(r1)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L75
                int r1 = r3.getResponseCode()     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L75
                java.lang.String r4 = "Response code: %d, for URL: %s"
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L75
                java.lang.String r5 = r7.f9400a     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L75
                java.lang.Object[] r1 = new java.lang.Object[]{r1, r5}     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L75
                java.lang.String r1 = java.lang.String.format(r2, r4, r1)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L75
                com.explorestack.iab.utils.c.a(r0, r1)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L75
            L4d:
                r3.disconnect()     // Catch: java.lang.Exception -> L74
                goto L74
            L51:
                r1 = move-exception
                goto L58
            L53:
                r0 = move-exception
                goto L77
            L55:
                r2 = move-exception
                r3 = r1
                r1 = r2
            L58:
                java.util.Locale r2 = java.util.Locale.ENGLISH     // Catch: java.lang.Throwable -> L75
                java.lang.String r4 = "%s: %s: %s"
                java.lang.String r5 = r7.f9400a     // Catch: java.lang.Throwable -> L75
                java.lang.String r6 = r1.getMessage()     // Catch: java.lang.Throwable -> L75
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L75
                java.lang.Object[] r1 = new java.lang.Object[]{r5, r6, r1}     // Catch: java.lang.Throwable -> L75
                java.lang.String r1 = java.lang.String.format(r2, r4, r1)     // Catch: java.lang.Throwable -> L75
                com.explorestack.iab.utils.c.b(r0, r1)     // Catch: java.lang.Throwable -> L75
                if (r3 == 0) goto L74
                goto L4d
            L74:
                return
            L75:
                r0 = move-exception
                r1 = r3
            L77:
                if (r1 == 0) goto L7c
                r1.disconnect()     // Catch: java.lang.Exception -> L7c
            L7c:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.utils.Utils.a.run():void");
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f9401a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f9402b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Runnable f9403c;

        public b(Context context, String str, Runnable runnable) {
            this.f9401a = context;
            this.f9402b = str;
            this.f9403c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Utils.b(this.f9401a, Utils.a(this.f9402b));
            Runnable runnable = this.f9403c;
            if (runnable != null) {
                Utils.onUiThread(runnable);
            }
        }
    }

    public static double a(Random random, float f2, float f3) {
        double sqrt = Math.sqrt(Math.log(Math.abs(((random.nextLong() % 100000) + 1) / 100000.0d)) * (-2.0d)) * Math.sin(Math.abs(((random.nextLong() % 100000) + 1) / 100000.0d) * 6.283185307179586d);
        double d2 = f3;
        return Math.min(1.0d, Math.max(0.0d, (d2 < 0.4d || d2 > 0.6d) ? d2 < 0.4d ? d2 + (f2 / (sqrt * sqrt)) : d2 - (f2 / (sqrt * sqrt)) : (sqrt * f2) + d2));
    }

    public static float a(float f2, float f3) {
        return f2 / f3;
    }

    public static float a(int i) {
        if (i != 1) {
            if (i != 3) {
                return i != 17 ? 1.0f : 0.5f;
            }
            return 0.0f;
        }
        return 0.5f;
    }

    public static String a(String str) {
        URL url;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                url = new URL(str);
                httpURLConnection = (HttpURLConnection) url.openConnection();
            } catch (Exception e2) {
                e = e2;
            }
            try {
                try {
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setConnectTimeout(500);
                    httpURLConnection.setReadTimeout(500);
                    switch (httpURLConnection.getResponseCode()) {
                        case 301:
                        case 302:
                        case 303:
                        case 305:
                        case 307:
                            String headerField = httpURLConnection.getHeaderField("Location");
                            if (headerField == null) {
                                String url2 = url.toString();
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e3) {
                                    c.a("Utils", e3);
                                }
                                return url2;
                            } else if (isHttpUrl(headerField)) {
                                String a2 = a(httpURLConnection.getHeaderField("Location"));
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e4) {
                                    c.a("Utils", e4);
                                }
                                return a2;
                            } else if (new URI(headerField).getScheme() != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e5) {
                                    c.a("Utils", e5);
                                }
                                return headerField;
                            } else {
                                try {
                                    String url3 = new URL(url, headerField).toString();
                                    if (url3.trim().length() <= 0) {
                                        try {
                                            httpURLConnection.disconnect();
                                        } catch (Exception e6) {
                                            c.a("Utils", e6);
                                        }
                                        return headerField;
                                    }
                                    String a3 = a(url3);
                                    try {
                                        httpURLConnection.disconnect();
                                    } catch (Exception e7) {
                                        c.a("Utils", e7);
                                    }
                                    return a3;
                                } catch (Exception e8) {
                                    c.a("Utils", e8);
                                    try {
                                        httpURLConnection.disconnect();
                                    } catch (Exception e9) {
                                        c.a("Utils", e9);
                                    }
                                    return headerField;
                                }
                            }
                        case 304:
                        case 306:
                        default:
                            String url4 = url.toString();
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception e10) {
                                c.a("Utils", e10);
                            }
                            return url4;
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection2 = httpURLConnection;
                    if (httpURLConnection2 != null) {
                        try {
                            httpURLConnection2.disconnect();
                        } catch (Exception e11) {
                            c.a("Utils", e11);
                        }
                    }
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
                httpURLConnection2 = httpURLConnection;
                c.a("Utils", e);
                if (httpURLConnection2 != null) {
                    try {
                        httpURLConnection2.disconnect();
                    } catch (Exception e13) {
                        c.a("Utils", e13);
                    }
                }
                return str;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void a(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = new View(activity);
        }
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    public static void a(Window window, boolean z) {
        int i;
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsController windowInsetsController = window.getDecorView().getWindowInsetsController();
            if (windowInsetsController == null) {
                return;
            }
            windowInsetsController.setSystemBarsBehavior(2);
            if (z) {
                windowInsetsController.hide(WindowInsets.Type.statusBars());
                return;
            }
            return;
        }
        if (z) {
            window.setFlags(1024, 1024);
            i = 4;
        } else {
            i = 0;
        }
        if (i > 0) {
            window.getDecorView().setSystemUiVisibility(i);
        }
    }

    public static void applyFullscreenActivityFlags(Activity activity) {
        applyFullscreenActivityFlags(activity, true);
    }

    public static void applyFullscreenActivityFlags(Activity activity, boolean z) {
        activity.requestWindowFeature(1);
        Window window = activity.getWindow();
        if (window != null) {
            window.addFlags(128);
            a(window, z);
        }
        a(activity);
    }

    public static float b(int i) {
        if (i == 16 || i == 17) {
            return 0.5f;
        }
        return i != 80 ? 0.0f : 1.0f;
    }

    public static boolean b(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(268435456);
            ComponentName pickBrowser = pickBrowser(context, intent);
            if (pickBrowser == null) {
                String decode = URLDecoder.decode(str, C.UTF8_NAME);
                intent = new Intent("android.intent.action.VIEW", Uri.parse(decode));
                intent.setFlags(268435456);
                pickBrowser = pickBrowser(context, intent);
                if (pickBrowser == null) {
                    c.b("Utils", String.format("Component not found to handle intent: %s", decode));
                    context.startActivity(intent);
                    return true;
                }
            }
            intent.setComponent(pickBrowser);
            context.startActivity(intent);
            return true;
        } catch (Exception e2) {
            c.a("Utils", e2);
            return false;
        }
    }

    public static void cancelOnUiThread(Runnable runnable) {
        f9398a.removeCallbacks(runnable);
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                c.a("Utils", th);
            }
        }
    }

    public static Float convertCssSizeToPx(String str) {
        return Float.valueOf(str.replace("px", ""));
    }

    public static int dpToPx(Context context, float f2) {
        return (int) TypedValue.applyDimension(1, f2, context.getResources().getDisplayMetrics());
    }

    public static void finishActivityWithoutAnimation(Activity activity) {
        activity.finish();
        activity.overridePendingTransition(0, 0);
    }

    public static void flush(Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (Throwable th) {
                c.a("Utils", th);
            }
        }
    }

    public static int generateViewId() {
        return View.generateViewId();
    }

    public static Point getClickPoint(Rect rect, int i, int i2) {
        Random random = new Random();
        double a2 = a(random, 0.1f, a(i));
        double a3 = a(random, 0.1f, b(i2));
        return new Point((int) (rect.width() * a2), (int) (rect.height() * a3));
    }

    public static Point getDefaultClickPoint(Rect rect) {
        return new Point(Math.round(rect.width() * 0.5f), Math.round(rect.height() * 0.7f));
    }

    public static int getScreenOrientation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = context.getResources().getConfiguration().orientation;
        if (i == 1) {
            return (rotation == 2 || rotation == 3) ? 9 : 1;
        } else if (i == 2) {
            return (rotation == 2 || rotation == 3) ? 8 : 0;
        } else {
            return 9;
        }
    }

    public static String getValidUrl(String str) {
        try {
            try {
                new URL(str);
                return str;
            } catch (UnsupportedEncodingException | IllegalArgumentException unused) {
                return str;
            }
        } catch (MalformedURLException unused2) {
            return URLDecoder.decode(str, C.UTF8_NAME);
        }
    }

    public static void httpGetURL(String str) {
        if (TextUtils.isEmpty(str)) {
            c.a("Utils", "url is null or empty");
            return;
        }
        try {
            Executors.newSingleThreadExecutor().execute(new a(str));
        } catch (Exception e2) {
            c.b("Utils", e2.getMessage());
        }
    }

    public static boolean isHttpUrl(String str) {
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static boolean isLandscapeOrientation(Context context) {
        int screenOrientation = getScreenOrientation(context);
        return screenOrientation == 0 || screenOrientation == 8 || screenOrientation == 6 || screenOrientation == 11;
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo;
        c.a("Utils", "Testing connectivity:");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            c.a("Utils", "No Internet connection");
            return false;
        }
        c.a("Utils", "Connected to Internet");
        return true;
    }

    public static boolean isTablet(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        double d2 = displayMetrics.widthPixels / displayMetrics.xdpi;
        double d3 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((d2 * d2) + (d3 * d3)) >= 6.6d;
    }

    public static boolean isViewTransparent(View view) {
        return view.getAlpha() == 0.0f;
    }

    public static void onUiThread(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            f9398a.post(runnable);
        }
    }

    public static void onUiThread(Runnable runnable, long j) {
        f9398a.postDelayed(runnable, j);
    }

    public static boolean openBrowser(Context context, String str, Runnable runnable) {
        Context applicationContext = context.getApplicationContext();
        String validUrl = getValidUrl(str);
        if (isHttpUrl(validUrl)) {
            Executors.newSingleThreadExecutor().execute(new b(applicationContext, validUrl, runnable));
            return true;
        }
        if (runnable != null) {
            onUiThread(runnable);
        }
        return b(applicationContext, validUrl);
    }

    public static int orientationBySize(int i, int i2) {
        return i > i2 ? 2 : 1;
    }

    public static String orientationToString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "UNKNOWN" : "LANDSCAPE" : "PORTRAIT" : "UNDEFINED";
    }

    public static ComponentName pickBrowser(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.isEmpty()) {
            return null;
        }
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            if (resolveInfo.activityInfo.packageName.equals("com.android.vending")) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                return new ComponentName(activityInfo.packageName, activityInfo.name);
            }
        }
        return new ComponentName(queryIntentActivities.get(0).activityInfo.packageName, queryIntentActivities.get(0).activityInfo.name);
    }

    public static int pixelsToIntDips(float f2, float f3) {
        return (int) (a(f2, f3) + 0.5f);
    }

    public static void postOnUiThread(Runnable runnable) {
        f9398a.post(runnable);
    }

    public static void removeFromParent(View view) {
        if (view == null || view.getParent() == null || !(view.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }

    public static String stringifyRect(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    public static String stringifySize(Rect rect) {
        return rect.width() + "," + rect.height();
    }
}
