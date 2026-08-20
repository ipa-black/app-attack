package com.bytedance.sdk.openadsdk.core.act;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsService;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.browser.customtabs.EngagementSignalsCallback;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.iMK;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ActHelper.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static volatile boolean CJ = false;
    private static String Qhi = null;
    private static ActServiceConnection Tgh = null;
    private static int ac = -1;
    private static int cJ = -1;
    private static Boolean fl;

    private Qhi() {
    }

    public static String Qhi(final Context context) {
        String str = Qhi;
        if (str != null) {
            return str;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            String str2 = resolveActivity != null ? resolveActivity.activityInfo.packageName : null;
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            ArrayList arrayList = new ArrayList();
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                Intent intent2 = new Intent();
                intent2.setAction(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
                intent2.setPackage(resolveInfo.activityInfo.packageName);
                if (packageManager.resolveService(intent2, 0) != null) {
                    arrayList.add(resolveInfo.activityInfo.packageName);
                }
            }
            if (arrayList.isEmpty()) {
                Qhi = null;
            } else if (!TextUtils.isEmpty(str2) && !Qhi(context, intent) && arrayList.contains(str2)) {
                Qhi = str2;
            } else {
                Qhi = (String) arrayList.get(0);
            }
            if (!TextUtils.isEmpty(Qhi)) {
                synchronized (Qhi.class) {
                    if (!CJ) {
                        cJ cJVar = new cJ() { // from class: com.bytedance.sdk.openadsdk.core.act.Qhi.1
                            @Override // com.bytedance.sdk.openadsdk.core.act.cJ
                            public void Qhi(final CustomTabsClient customTabsClient) {
                                iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.act.Qhi.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Throwable th;
                                        boolean z;
                                        boolean z2;
                                        boolean z3 = false;
                                        try {
                                            CustomTabsCallback customTabsCallback = new CustomTabsCallback();
                                            EngagementSignalsCallback engagementSignalsCallback = new EngagementSignalsCallback() { // from class: com.bytedance.sdk.openadsdk.core.act.Qhi.1.1.1
                                                @Override // androidx.browser.customtabs.EngagementSignalsCallback
                                                public void onGreatestScrollPercentageIncreased(int i, Bundle bundle) {
                                                }

                                                @Override // androidx.browser.customtabs.EngagementSignalsCallback
                                                public void onSessionEnded(boolean z4, Bundle bundle) {
                                                }

                                                @Override // androidx.browser.customtabs.EngagementSignalsCallback
                                                public void onVerticalScrollEvent(boolean z4, Bundle bundle) {
                                                }
                                            };
                                            CustomTabsSession newSession = customTabsClient.newSession(customTabsCallback);
                                            z2 = newSession != null ? newSession.isEngagementSignalsApiAvailable(Bundle.EMPTY) : false;
                                            try {
                                                if (z2) {
                                                    int unused = Qhi.cJ = 1;
                                                    z3 = newSession.setEngagementSignalsCallback(engagementSignalsCallback, Bundle.EMPTY);
                                                    if (z3) {
                                                        int unused2 = Qhi.ac = 1;
                                                    }
                                                } else {
                                                    int unused3 = Qhi.cJ = 0;
                                                }
                                                if (!z2 || !z3) {
                                                    Boolean unused4 = Qhi.fl = Boolean.FALSE;
                                                } else {
                                                    Boolean unused5 = Qhi.fl = Boolean.TRUE;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                z = false;
                                                z3 = z2;
                                                ABk.Qhi("CustomTabsHelper", th.getMessage());
                                                z2 = z3;
                                                z3 = z;
                                                new Object[]{"pagact before  ", "   api_Available=", Boolean.valueOf(z2), "  signalsCallback=", Boolean.valueOf(z3)};
                                                ActServiceConnection actServiceConnection = Qhi.Tgh;
                                                if (Qhi.CJ) {
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            z = false;
                                        }
                                        new Object[]{"pagact before  ", "   api_Available=", Boolean.valueOf(z2), "  signalsCallback=", Boolean.valueOf(z3)};
                                        ActServiceConnection actServiceConnection2 = Qhi.Tgh;
                                        if (Qhi.CJ || actServiceConnection2 == null) {
                                            return;
                                        }
                                        try {
                                            context.unbindService(actServiceConnection2);
                                        } catch (Throwable unused6) {
                                        }
                                    }
                                });
                            }

                            @Override // com.bytedance.sdk.openadsdk.core.act.cJ
                            public void Qhi() {
                                ActServiceConnection unused = Qhi.Tgh = null;
                            }
                        };
                        if (Tgh == null) {
                            Tgh = new ActServiceConnection(cJVar);
                        }
                        CustomTabsClient.bindCustomTabsService(context, Qhi, Tgh);
                        CJ = true;
                    }
                }
            }
        } catch (Throwable th) {
            ABk.Qhi("CustomTabsHelper", th.getMessage());
        }
        return Qhi;
    }

    private static boolean Qhi(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities;
        try {
            queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
        } catch (RuntimeException unused) {
            Log.e("CustomTabsHelper", "Runtime exception while getting specialized handlers");
        }
        if (queryIntentActivities.size() == 0) {
            return false;
        }
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            IntentFilter intentFilter = resolveInfo.filter;
            if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo.activityInfo != null) {
                return true;
            }
        }
        return false;
    }

    public static int Qhi() {
        Boolean bool = fl;
        return (bool != null && bool.booleanValue()) ? 1 : 0;
    }

    public static int cJ(Context context) {
        return !TextUtils.isEmpty(Qhi(context)) ? 1 : 0;
    }

    public static int cJ() {
        return cJ;
    }

    public static int ac() {
        return ac;
    }

    public static void Qhi(int i) {
        cJ = i;
    }

    public static void cJ(int i) {
        ac = i;
    }
}
