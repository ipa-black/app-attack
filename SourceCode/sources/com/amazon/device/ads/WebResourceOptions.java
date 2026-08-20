package com.amazon.device.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WebResourceOptions {
    private static String cdnHost = null;
    private static String[] jsNames = {"aps-mraid.js", "dtb-m.js", "omsdk-v1.js"};
    private static boolean useLocalOnly = false;

    WebResourceOptions() {
    }

    static void setCDNHost(String str) {
        if (str.equals(cdnHost) || cdnHost == null) {
            return;
        }
        cdnHost = str;
        DtbSharedPreferences.getInstance().resetWebResoucesLastPing();
        WebResourceService.getInstance().deleteWebDirContent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getCDNHost(String str) {
        String str2 = cdnHost;
        if (str2 == null) {
            str2 = "c.amazon-adsystem.com/";
        }
        if ("omsdk-v1.js".equals(str)) {
            str2 = "dcqi4aodgg8tv.cloudfront.net/resources/omsdk/1_3_28";
        }
        return !str2.endsWith("/") ? str2 + "/" : str2;
    }

    static void setCDNResources(String[] strArr) {
        jsNames = strArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] getCDNResources() {
        return jsNames;
    }

    static void setLocalSourcesOnly(boolean z) {
        useLocalOnly = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLocalSourcesOnly() {
        return useLocalOnly;
    }
}
