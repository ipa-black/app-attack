package com.pgl.ssdk;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.text.TextUtils;
import android.view.Display;
/* compiled from: VirtualDisplayInfo.java */
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private static volatile DisplayManager.DisplayListener f12264a = null;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f12265b = false;

    /* renamed from: c  reason: collision with root package name */
    private static String f12266c;

    /* renamed from: d  reason: collision with root package name */
    private static String f12267d;

    /* renamed from: e  reason: collision with root package name */
    private static String f12268e;

    /* renamed from: f  reason: collision with root package name */
    private static DisplayManager f12269f;

    /* compiled from: VirtualDisplayInfo.java */
    /* loaded from: classes3.dex */
    static class a implements DisplayManager.DisplayListener {
        a() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
            w.a(i, 1);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            w.a(i, 3);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            w.a(i, 2);
        }
    }

    public static void b(Context context) {
        Q c2;
        if (f12265b) {
            return;
        }
        f12265b = true;
        if (f12264a == null) {
            f12264a = new a();
        }
        if (f12269f == null) {
            f12269f = (DisplayManager) context.getSystemService("display");
        }
        if (f12269f == null || (c2 = M.a().c()) == null) {
            return;
        }
        f12269f.registerDisplayListener(f12264a, c2);
    }

    private static String a(Display display) {
        String name = display.getName();
        boolean z = false;
        Object a2 = J.a(display, display.getClass(), "getType", new Class[0], new Object[0]);
        Object a3 = J.a(display, display.getClass(), "getOwnerPackageName", new Class[0], new Object[0]);
        Object a4 = J.a(null, display.getClass(), "TYPE_VIRTUAL", null);
        if (a2 != null && a4 != null && ((Integer) a2).intValue() == ((Integer) a4).intValue()) {
            z = true;
        }
        return String.format("%s#%s#%b", a3, name, Boolean.valueOf(z));
    }

    static void a(int i, int i2) {
        if (i != 0) {
            try {
                Display display = f12269f.getDisplay(i);
                String a2 = display != null ? a(display) : "pd";
                if (i2 == 1) {
                    if (a2.equals(f12266c)) {
                        return;
                    }
                    f12266c = a2;
                } else if (i2 != 2) {
                    if (i2 != 3 || a2.equals(f12268e)) {
                        return;
                    }
                    f12268e = a2;
                } else if (a2.equals(f12267d)) {
                } else {
                    f12267d = a2;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean a(Context context) {
        String str;
        Display[] displays;
        if (f12266c == null && f12267d == null && f12268e == null) {
            if (context != null) {
                if (f12269f == null) {
                    f12269f = (DisplayManager) context.getSystemService("display");
                }
                DisplayManager displayManager = f12269f;
                if (displayManager == null || (displays = displayManager.getDisplays()) == null) {
                    str = "";
                } else {
                    StringBuffer stringBuffer = new StringBuffer();
                    for (int i = 0; i < displays.length; i++) {
                        Display display = displays[i];
                        if (display != null && display.getDisplayId() != 0) {
                            stringBuffer.append(a(displays[i]));
                            if (i != displays.length - 1) {
                                stringBuffer.append(",");
                            }
                        }
                    }
                    str = stringBuffer.toString();
                }
                if (!TextUtils.isEmpty(str)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }
}
