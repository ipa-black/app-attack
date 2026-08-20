package com.explorestack.iab.vast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.view.View;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f9566a = false;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f9567b = false;

    /* renamed from: c  reason: collision with root package name */
    public static final WeakHashMap<View, InterfaceC0261b> f9568c = new WeakHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    public static final BroadcastReceiver f9569d = new a();

    /* renamed from: e  reason: collision with root package name */
    public static final IntentFilter f9570e;

    /* loaded from: classes2.dex */
    public class a extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (b.class) {
                boolean unused = b.f9567b = "android.intent.action.SCREEN_ON".equals(intent.getAction());
            }
            WeakHashMap<View, InterfaceC0261b> weakHashMap = b.f9568c;
            synchronized (weakHashMap) {
                for (InterfaceC0261b interfaceC0261b : weakHashMap.values()) {
                    interfaceC0261b.a(b.f9567b);
                }
            }
        }
    }

    /* renamed from: com.explorestack.iab.vast.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0261b {
        void a(boolean z);
    }

    static {
        IntentFilter intentFilter = new IntentFilter();
        f9570e = intentFilter;
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
    }

    public static synchronized void a(Context context) {
        synchronized (b.class) {
            if (!f9566a) {
                synchronized (b.class) {
                    if (!f9566a) {
                        f9567b = ((PowerManager) context.getSystemService("power")).isScreenOn();
                        context.getApplicationContext().registerReceiver(f9569d, f9570e);
                        f9566a = true;
                    }
                }
            }
        }
    }

    public static void a(View view) {
        if (f9566a) {
            WeakHashMap<View, InterfaceC0261b> weakHashMap = f9568c;
            synchronized (weakHashMap) {
                weakHashMap.remove(view);
            }
        }
    }

    public static void a(View view, InterfaceC0261b interfaceC0261b) {
        a(view.getContext());
        WeakHashMap<View, InterfaceC0261b> weakHashMap = f9568c;
        synchronized (weakHashMap) {
            weakHashMap.put(view, interfaceC0261b);
        }
    }

    public static boolean b(Context context) {
        a(context);
        return f9567b;
    }
}
