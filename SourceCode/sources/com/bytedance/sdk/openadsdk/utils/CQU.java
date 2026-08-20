package com.bytedance.sdk.openadsdk.utils;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: RomUtils.java */
/* loaded from: classes2.dex */
public class CQU {
    public static boolean Qhi = false;
    private static int Tgh = Integer.MAX_VALUE;
    public static boolean cJ = false;
    private static String fl;
    private static final CharSequence ac = "amigo";
    private static final CharSequence CJ = "funtouch";
    private static final ConcurrentHashMap<String, String> ROR = new ConcurrentHashMap<>();

    public static String Qhi() {
        if (!TextUtils.isEmpty(fl)) {
            return fl;
        }
        String Qhi2 = com.bytedance.sdk.openadsdk.core.hm.Qhi("sdk_local_rom_info", 604800000L);
        fl = Qhi2;
        if (TextUtils.isEmpty(Qhi2)) {
            String EBS = EBS();
            fl = EBS;
            com.bytedance.sdk.openadsdk.core.hm.Qhi("sdk_local_rom_info", EBS);
        }
        return fl;
    }

    private static String EBS() {
        if (pA()) {
            return hpZ();
        }
        if (fl()) {
            return zc();
        }
        if (cJ()) {
            return HzH();
        }
        if (kYc()) {
            return tP();
        }
        String ABk = ABk();
        if (TextUtils.isEmpty(ABk)) {
            if (ROR()) {
                return Tgh();
            }
            if (Sf()) {
                return hm();
            }
            if (CJ()) {
                return ac();
            }
            String WAv = WAv();
            return !TextUtils.isEmpty(WAv) ? WAv : Build.DISPLAY;
        }
        return ABk;
    }

    public static boolean cJ() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static String ac() {
        return CJ("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static boolean CJ() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static boolean fl() {
        if (!cJ) {
            try {
                if (Class.forName("miui.os.Build") != null) {
                    Qhi = true;
                    cJ = true;
                    return true;
                }
            } catch (Exception unused) {
            }
            cJ = true;
        }
        return Qhi;
    }

    public static String Tgh() {
        return CJ("ro.vivo.os.build.display.id") + "_" + CJ("ro.vivo.product.version");
    }

    public static boolean ROR() {
        String CJ2 = CJ("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(CJ2) && CJ2.toLowerCase().contains(CJ);
    }

    public static boolean Sf() {
        return !TextUtils.isEmpty(Build.DISPLAY) && Build.DISPLAY.toLowerCase().contains(ac);
    }

    public static String hm() {
        return Build.DISPLAY + "_" + CJ("ro.gn.sv.version");
    }

    public static String WAv() {
        if (Gm()) {
            return "eui_" + CJ("ro.letv.release.version") + "_" + Build.DISPLAY;
        }
        return "";
    }

    public static boolean Gm() {
        return !TextUtils.isEmpty(CJ("ro.letv.release.version"));
    }

    public static String zc() {
        if (fl()) {
            return "miui_" + CJ("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
        }
        return "";
    }

    public static String ABk() {
        String iMK = iMK();
        if (iMK != null && iMK.toLowerCase().contains("emotionui")) {
            return iMK + "_" + Build.DISPLAY;
        }
        return "";
    }

    public static String iMK() {
        return CJ("ro.build.version.emui");
    }

    public static boolean pA() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER) || "smartisan".equalsIgnoreCase(Build.BRAND);
    }

    public static String hpZ() {
        if (pA()) {
            try {
                return "smartisan_".concat(String.valueOf(CJ("ro.smartisan.version")));
            } catch (Throwable unused) {
            }
        }
        return Build.DISPLAY;
    }

    public static String HzH() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    public static boolean kYc() {
        if (Tgh == Integer.MAX_VALUE) {
            String str = Build.MANUFACTURER;
            String ROR2 = js.ROR("kllk");
            if (!TextUtils.isEmpty(str) && str.toLowerCase().contains(ROR2)) {
                Tgh = 1;
            } else {
                Tgh = 0;
            }
        }
        return Tgh == 1;
    }

    public static String tP() {
        if (kYc()) {
            return "coloros_" + CJ(js.ROR("ro.build.version.kllkrom")) + "_" + Build.DISPLAY;
        }
        return "";
    }

    public static boolean MQ() {
        try {
            if (TextUtils.isEmpty(Build.BRAND) || !Build.BRAND.toLowerCase().startsWith("huawei")) {
                if (TextUtils.isEmpty(Build.MANUFACTURER)) {
                    return false;
                }
                if (!Build.MANUFACTURER.toLowerCase().startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            str = iMK();
        }
        return (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("emotionui")) || MQ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String ac(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        Process exec;
        String str2 = "";
        Process process = null;
        try {
            try {
                try {
                    exec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
                    } catch (IllegalThreadStateException unused) {
                        bufferedReader = null;
                    }
                } catch (IOException e2) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("ToolUtils", "Exception while closing InputStream", e2);
                }
            } catch (IllegalThreadStateException unused2) {
                bufferedReader = null;
            }
        } catch (Throwable th2) {
            bufferedReader = null;
            th = th2;
        }
        try {
            str2 = bufferedReader.readLine();
            exec.exitValue();
            bufferedReader.close();
        } catch (IllegalThreadStateException unused3) {
            process = exec;
            try {
                process.destroy();
            } catch (Throwable unused4) {
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return str2;
        } catch (Throwable th3) {
            th = th3;
            try {
                com.bytedance.sdk.component.utils.ABk.Qhi("ToolUtils", "Unable to read sysprop ".concat(String.valueOf(str)), th);
                return str2;
            } finally {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("ToolUtils", "Exception while closing InputStream", e3);
                    }
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String CJ(java.lang.String r4) {
        /*
            java.lang.String r0 = ""
            java.lang.String r1 = "getSystemPropertyTask() called with: propName = ["
            java.lang.String r2 = "]"
            new java.lang.Object[]{r1, r4, r2}
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r1 = com.bytedance.sdk.openadsdk.utils.CQU.ROR
            java.lang.Object r1 = r1.get(r4)
            java.lang.String r1 = (java.lang.String) r1
            if (r1 == 0) goto L14
            return r1
        L14:
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L3b
            if (r1 == 0) goto L3b
            com.bytedance.sdk.openadsdk.utils.CQU$Qhi r1 = new com.bytedance.sdk.openadsdk.utils.CQU$Qhi     // Catch: java.lang.Throwable -> L3b
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L3b
            com.bytedance.sdk.component.Sf.Sf r4 = new com.bytedance.sdk.component.Sf.Sf     // Catch: java.lang.Throwable -> L3b
            r2 = 5
            r3 = 2
            r4.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> L3b
            com.bytedance.sdk.openadsdk.utils.CQU$1 r1 = new com.bytedance.sdk.openadsdk.utils.CQU$1     // Catch: java.lang.Throwable -> L3b
            java.lang.String r2 = "_getSystemPropertyTask"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3b
            com.bytedance.sdk.openadsdk.utils.lG.cJ(r1)     // Catch: java.lang.Throwable -> L3b
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L3b
            r2 = 1
            java.lang.Object r4 = r4.get(r2, r1)     // Catch: java.lang.Throwable -> L3b
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L3b
            goto L3c
        L3b:
            r4 = r0
        L3c:
            if (r4 != 0) goto L3f
            goto L40
        L3f:
            r0 = r4
        L40:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.CQU.CJ(java.lang.String):java.lang.String");
    }

    /* compiled from: RomUtils.java */
    /* loaded from: classes2.dex */
    public static class Qhi implements Callable<String> {
        private final String Qhi;

        public Qhi(String str) {
            this.Qhi = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: Qhi */
        public String call() throws Exception {
            String str = (String) CQU.ROR.get(this.Qhi);
            if (str != null) {
                return str;
            }
            System.currentTimeMillis();
            String ac = CQU.ac(this.Qhi);
            System.currentTimeMillis();
            if (ac != null) {
                CQU.ROR.put(this.Qhi, ac);
            }
            return ac;
        }
    }
}
