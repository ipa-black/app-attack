package com.bytedance.sdk.openadsdk.hpZ;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Base64;
/* compiled from: PlayableHub.java */
/* loaded from: classes2.dex */
public class Tgh {
    protected static int CJ = 30;
    public static int Gm = 16;
    protected static String Qhi = "images";
    public static int ROR = 1;
    public static int Sf = 2;
    public static int Tgh = 0;
    public static int WAv = 8;
    protected static int ac = 1;
    protected static String cJ = null;
    protected static long fl = 15360;
    public static int hm = 4;
    public static int zc = 32;

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean Qhi(Context context, String str) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Bitmap Qhi(String str) {
        byte[] decode = Base64.decode(str, 2);
        return BitmapFactory.decodeByteArray(decode, 0, decode.length);
    }

    public static boolean Qhi(Context context, int i) {
        boolean Qhi2;
        boolean Qhi3;
        if (Tgh == 0) {
            if (Build.VERSION.SDK_INT >= 33) {
                Qhi2 = Qhi(context, "android.permission.READ_MEDIA_IMAGES");
                Qhi3 = true;
            } else {
                Qhi2 = Qhi(context, "android.permission.READ_EXTERNAL_STORAGE");
                Qhi3 = Qhi(context, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            boolean Qhi4 = Qhi(context, "android.permission.CAMERA");
            boolean Qhi5 = Qhi(context, "android.permission.RECORD_AUDIO");
            PackageManager packageManager = context.getPackageManager();
            if (Qhi2 && Qhi3) {
                Tgh |= ROR;
            }
            if (Qhi4 && packageManager.hasSystemFeature("android.hardware.camera")) {
                Tgh |= Sf;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.gyroscope")) {
                Tgh |= hm;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.accelerometer")) {
                Tgh |= WAv;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.compass")) {
                Tgh |= Gm;
            }
            if (Qhi5 && packageManager.hasSystemFeature("android.hardware.microphone")) {
                Tgh |= zc;
            }
        }
        return (Tgh & i) != 0;
    }

    public static boolean Qhi(Context context) {
        boolean z;
        boolean z2;
        if (Build.VERSION.SDK_INT >= 33) {
            z = context.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0;
        } else {
            z = context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0;
            if (context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                z2 = false;
                return !z2 && z;
            }
        }
        z2 = true;
        if (z2) {
        }
    }

    public static boolean cJ(Context context, String str) {
        return context.checkSelfPermission(str) == 0;
    }
}
