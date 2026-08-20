package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.camera2.CameraManager;
/* compiled from: HardwareDetectForSec.java */
/* renamed from: com.pgl.ssdk.t  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1388t {

    /* renamed from: a  reason: collision with root package name */
    public static int f12251a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static int f12252b = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HardwareDetectForSec.java */
    /* renamed from: com.pgl.ssdk.t$a */
    /* loaded from: classes3.dex */
    public static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context b2 = C1390v.b();
            int i = C1388t.f12252b;
            if (i == -1) {
                CameraManager cameraManager = (CameraManager) b2.getSystemService("camera");
                if (cameraManager != null) {
                    try {
                        C1388t.f12252b = cameraManager.getCameraIdList().length;
                    } catch (Throwable unused) {
                        C1388t.f12252b = -1;
                    }
                } else {
                    C1388t.f12252b = -2;
                }
                i = C1388t.f12252b;
            }
            C1388t.f12252b = i;
            SharedPreferences a2 = L.a(C1390v.b());
            if (a2 != null) {
                a2.edit().putInt("camera_count", C1388t.f12252b).apply();
            }
        }
    }

    public static int a() {
        int i;
        int i2 = f12252b;
        if (i2 != -1) {
            return i2;
        }
        SharedPreferences a2 = L.a(C1390v.b());
        if (a2 != null && (i = a2.getInt("camera_count", -1)) != -1) {
            f12252b = i;
            return i;
        }
        AbstractC1372c.a(new a());
        return -1;
    }
}
