package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Log;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.plugins.PluginErrorDetails;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.regex.Pattern;
/* renamed from: com.yandex.metrica.impl.ob.h2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1575h2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f14825a = Pattern.compile(".*at com\\.yandex\\.metrica\\.push\\.*");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f14826b = Pattern.compile(".*at com\\.yandex\\.metrica\\.(?!push)");

    /* renamed from: com.yandex.metrica.impl.ob.h2$a */
    /* loaded from: classes5.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        static final String f14827a;

        static {
            String str;
            if (C1575h2.a(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME)) {
                str = "unity";
            } else if (C1575h2.a("mono.MonoPackageManager")) {
                str = PluginErrorDetails.Platform.XAMARIN;
            } else if (C1575h2.a("org.apache.cordova.CordovaPlugin")) {
                str = PluginErrorDetails.Platform.CORDOVA;
            } else if (C1575h2.a("com.facebook.react.ReactRootView")) {
                str = "react";
            } else {
                str = C1575h2.a("io.flutter.embedding.engine.FlutterEngine") ? PluginErrorDetails.Platform.FLUTTER : "native";
            }
            f14827a = str;
        }
    }

    public static void a(String str, Object... objArr) {
        Log.i("AppMetrica-Attribution", String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        char charAt;
        StringBuilder sb = new StringBuilder("Initializing of Metrica, ");
        String str = "release";
        if (TextUtils.isEmpty("release")) {
            str = "";
        } else {
            if (!Character.isUpperCase("release".charAt(0))) {
                str = Character.toUpperCase(charAt) + "elease";
            }
        }
        Log.i("AppMetrica", sb.append(str).append(" type, Version 5.3.0, API Level ").append(YandexMetrica.getLibraryApiLevel()).append(", Dated 03.03.2023.").toString());
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e("AppMetrica-Attribution", String.format(str, objArr), th);
    }

    public static String a() {
        return a.f14827a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Throwable th) {
        String str;
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            str = stringWriter.toString();
            printWriter.close();
        } else {
            str = "";
        }
        return !TextUtils.isEmpty(str) && f14826b.matcher(str).find();
    }

    public static boolean a(String str) {
        return b(str) != null;
    }

    public static void b(String str, Object... objArr) {
        Log.w("AppMetrica-Attribution", String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Throwable th) {
        String str;
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            str = stringWriter.toString();
            printWriter.close();
        } else {
            str = "";
        }
        return !TextUtils.isEmpty(str) && f14825a.matcher(str).find();
    }

    public static Class b(String str) {
        try {
            return Class.forName(str, false, C1575h2.class.getClassLoader());
        } catch (Throwable unused) {
            return null;
        }
    }
}
