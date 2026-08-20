package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.input.InputManager;
import android.os.Build;
import android.view.InputDevice;
import android.view.MotionEvent;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: InputInfo.java */
/* renamed from: com.pgl.ssdk.u  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1389u {

    /* renamed from: a  reason: collision with root package name */
    private static int f12253a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static int f12254b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static int f12255c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static int f12256d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static int f12257e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static int f12258f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f12259g = false;

    /* renamed from: h  reason: collision with root package name */
    private static InputManager f12260h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InputInfo.java */
    /* renamed from: com.pgl.ssdk.u$a */
    /* loaded from: classes3.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f12261a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f12262b;

        a(Context context, int i) {
            this.f12261a = context;
            this.f12262b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            InputManager a2 = C1389u.a(this.f12261a);
            if (a2 == null) {
                return;
            }
            InputDevice inputDevice = a2.getInputDevice(this.f12262b);
            C1389u.g();
            if (inputDevice == null) {
                C1389u.a();
                C1389u.b();
                C1389u.a("nihc");
            } else if (inputDevice.isVirtual()) {
                C1389u.c();
                C1389u.d();
                C1389u.a("vihc");
            } else if (Build.VERSION.SDK_INT < 29 || !inputDevice.isExternal()) {
            } else {
                C1389u.e();
                C1389u.f();
                C1389u.a("eihc");
            }
        }
    }

    static /* synthetic */ int a() {
        int i = f12255c;
        f12255c = i + 1;
        return i;
    }

    static /* synthetic */ int b() {
        int i = f12258f;
        f12258f = i + 1;
        return i;
    }

    static /* synthetic */ int c() {
        int i = f12253a;
        f12253a = i + 1;
        return i;
    }

    static /* synthetic */ int d() {
        int i = f12256d;
        f12256d = i + 1;
        return i;
    }

    static /* synthetic */ int e() {
        int i = f12254b;
        f12254b = i + 1;
        return i;
    }

    static /* synthetic */ int f() {
        int i = f12257e;
        f12257e = i + 1;
        return i;
    }

    public static void g() {
        if (f12259g) {
            return;
        }
        try {
            SharedPreferences a2 = L.a(C1390v.b());
            if (a2 != null) {
                f12258f = a2.getInt("nihc", 0);
                f12257e = a2.getInt("eihc", 0);
                f12256d = a2.getInt("vihc", 0);
                f12259g = true;
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(MotionEvent motionEvent, Context context) {
        if (motionEvent == null || context == null) {
            return;
        }
        if (motionEvent.getRawX() > 0.0f || motionEvent.getRawY() > 0.0f) {
            AbstractC1372c.a(new a(context, motionEvent.getDeviceId()));
        }
    }

    static void a(String str) {
        try {
            SharedPreferences a2 = L.a(C1390v.b());
            if (a2 != null) {
                a2.edit().putInt(str, a2.getInt(str, 0) + 1).apply();
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(JSONObject jSONObject) {
        try {
            jSONObject.put("vihc", f12256d);
            jSONObject.put("eihc", f12257e);
            jSONObject.put("nihc", f12258f);
            jSONObject.put("vic", f12253a);
            jSONObject.put("nic", f12255c);
            jSONObject.put("eic", f12254b);
        } catch (JSONException unused) {
        }
    }

    static InputManager a(Context context) {
        if (f12260h == null) {
            f12260h = (InputManager) context.getSystemService("input");
        }
        return f12260h;
    }
}
