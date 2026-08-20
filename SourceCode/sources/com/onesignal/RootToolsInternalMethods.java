package com.onesignal;

import java.io.File;
/* loaded from: classes3.dex */
class RootToolsInternalMethods {
    RootToolsInternalMethods() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isRooted() {
        String[] strArr = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};
        for (int i = 0; i < 8; i++) {
            try {
                if (new File(strArr[i] + "su").exists()) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
