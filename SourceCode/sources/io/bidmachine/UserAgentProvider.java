package io.bidmachine;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.webkit.WebSettings;
import io.bidmachine.utils.DeviceUtils;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public class UserAgentProvider {
    private static String defaultHttpAgent;
    private static String generatedUserAgent;
    private static String webUserAgent;
    private static final AtomicBoolean webUserAgentProcessed = new AtomicBoolean(false);

    static {
        try {
            defaultHttpAgent = System.getProperty("http.agent", "");
        } catch (Throwable unused) {
        }
    }

    public static void initialize(Context context) {
        findWebUserAgent(context);
    }

    public static String getUserAgent(Context context) {
        if (webUserAgent == null) {
            findWebUserAgent(context);
        }
        if (!TextUtils.isEmpty(webUserAgent)) {
            return webUserAgent;
        }
        if (generatedUserAgent == null) {
            generatedUserAgent = UserAgentCreator.create(context);
        }
        if (!TextUtils.isEmpty(generatedUserAgent)) {
            return generatedUserAgent;
        }
        return defaultHttpAgent;
    }

    private static void findWebUserAgent(Context context) {
        if (webUserAgentProcessed.compareAndSet(false, true)) {
            final Context applicationContext = context.getApplicationContext();
            new Thread(new Runnable() { // from class: io.bidmachine.UserAgentProvider.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String unused = UserAgentProvider.webUserAgent = WebSettings.getDefaultUserAgent(applicationContext);
                    } catch (Throwable unused2) {
                    }
                }
            }).start();
        }
    }

    /* loaded from: classes5.dex */
    private static class UserAgentCreator {
        private UserAgentCreator() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String create(Context context) {
            try {
                StringBuilder sb = new StringBuilder("Mozilla/5.0");
                sb.append(" (Linux; Android ").append(DeviceUtils.getOsVersion()).append("; ").append(DeviceUtils.getModel()).append(" Build/").append(DeviceUtils.getBuildId()).append("; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0");
                PackageManager packageManager = context.getPackageManager();
                appendChromeToUserAgent(packageManager, sb);
                appendMobileToUserAgent(context, packageManager, sb);
                return sb.toString();
            } catch (Throwable unused) {
                return "";
            }
        }

        private static void appendChromeToUserAgent(PackageManager packageManager, StringBuilder sb) {
            String[] strArr = {"com.android.chrome", "com.google.android.webview", "com.android.webview"};
            for (int i = 0; i < 3; i++) {
                try {
                    sb.append(" Chrome/").append(packageManager.getPackageInfo(strArr[i], 0).versionName);
                    return;
                } catch (Throwable unused) {
                }
            }
        }

        private static void appendMobileToUserAgent(Context context, PackageManager packageManager, StringBuilder sb) {
            String string;
            try {
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                StringBuilder append = sb.append(" Mobile").append(" ");
                if (applicationInfo.labelRes == 0) {
                    string = applicationInfo.nonLocalizedLabel.toString();
                } else {
                    string = context.getString(applicationInfo.labelRes);
                }
                append.append(string).append("/").append(packageInfo.versionName);
            } catch (Throwable unused) {
            }
        }
    }
}
