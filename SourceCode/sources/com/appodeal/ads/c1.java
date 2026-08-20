package com.appodeal.ads;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.appodeal.ads.d1;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.utils.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.ldap.server.db.gui.FilterDialog;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class c1 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ boolean f6577a = true;

    /* loaded from: classes.dex */
    public interface a {
    }

    public static String a() {
        String a2 = a("debug.appodeal.sdk.url", (String) null);
        return TextUtils.isEmpty(a2) ? String.format("https://%s:443", "a.appbaqend.com") : a2;
    }

    public static String a(String str, String str2) {
        String str3;
        try {
            String property = System.getProperty(str);
            if (!TextUtils.isEmpty(property)) {
                if (!".none.".equalsIgnoreCase(property)) {
                    return property;
                }
            }
        } catch (Throwable th) {
            Log.log(FilterDialog.DEBUG_MODE, "System.getProperty() threw an exception");
            Log.log(th);
        }
        try {
            String str4 = (String) Class.forName("android.os.SystemProperties").getMethod(Constants.GET, String.class, String.class).invoke(null, str, str2);
            if (!TextUtils.isEmpty(str4)) {
                if (!".none.".equalsIgnoreCase(str4)) {
                    return str4;
                }
            }
            return str2;
        } catch (ClassNotFoundException e2) {
            e = e2;
            str3 = "Could not find SystemProperties class";
            Log.log(FilterDialog.DEBUG_MODE, str3);
            Log.log(e);
            return str2;
        } catch (IllegalAccessException e3) {
            e = e3;
            str3 = "Could not access SystemProperties.get()";
            Log.log(FilterDialog.DEBUG_MODE, str3);
            Log.log(e);
            return str2;
        } catch (NoSuchMethodException e4) {
            e = e4;
            str3 = "Could not find SystemProperties class";
            Log.log(FilterDialog.DEBUG_MODE, str3);
            Log.log(e);
            return str2;
        } catch (InvocationTargetException e5) {
            e = e5;
            str3 = "SystemProperties.get() threw an exception";
            Log.log(FilterDialog.DEBUG_MODE, str3);
            Log.log(e);
            return str2;
        } catch (Throwable th2) {
            e = th2;
            Log.log(e);
            return str2;
        }
    }

    public static ArrayList a(List list, boolean z) {
        String str;
        String str2;
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                JSONObject jSONObject = (JSONObject) it.next();
                try {
                    String a2 = n5.a(jSONObject.getString("status"));
                    if (jSONObject.has("package_name")) {
                        String[] split = jSONObject.getString("package_name").split(":");
                        String str3 = split.length >= 1 ? split[0] : a2;
                        str = split.length >= 2 ? split[1] : "-1";
                        str2 = str3;
                    } else {
                        str = "-1";
                        str2 = a2;
                    }
                    arrayList.add(new com.appodeal.ads.utils.k(arrayList.size(), list.indexOf(jSONObject), str2, a2, str, jSONObject.getString("ecpm"), z));
                } catch (Exception e2) {
                    Log.log(e2);
                }
            }
        }
        return arrayList;
    }

    public static void a(Activity activity, r rVar, d1.a.C0124a c0124a) {
        com.appodeal.ads.utils.h hVar = new com.appodeal.ads.utils.h(activity, new y0(rVar));
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Color.parseColor("#404040"));
        linearLayout.setTag("appodeal");
        linearLayout.setClickable(true);
        EditText editText = new EditText(activity);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 56.0f, activity.getResources().getDisplayMetrics())));
        editText.setTextSize(20.0f);
        editText.setTextColor(-1);
        editText.setHint("What adunit you search for?");
        editText.setHintTextColor(Color.parseColor("#80ffffff"));
        editText.addTextChangedListener(new z0(hVar));
        ListView listView = new ListView(activity);
        listView.setAdapter((ListAdapter) hVar);
        listView.setOnItemClickListener(new a1(linearLayout, c0124a));
        listView.setOnItemLongClickListener(new b1());
        listView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, 1.0f));
        listView.setCacheColorHint(Color.parseColor("#404040"));
        listView.setDivider(new ColorDrawable(Color.parseColor("#b3b3b3")));
        listView.setDividerHeight(1);
        linearLayout.addView(editText);
        linearLayout.addView(listView);
        activity.addContentView(linearLayout, new ViewGroup.LayoutParams(-1, -1));
    }

    public static boolean b() {
        try {
            return Boolean.parseBoolean(a("debug.appodeal.sdk.testactivity", "false"));
        } catch (Exception e2) {
            Log.log(FilterDialog.DEBUG_MODE, "Start Test Activity property is not valid");
            Log.log(e2);
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:1|(3:53|54|(14:56|4|5|6|7|8|9|(1:11)(2:42|43)|12|(1:14)|15|16|17|(6:19|(2:23|24)|26|(4:29|(3:31|32|33)(1:35)|34|27)|36|37)(1:38)))|3|4|5|6|7|8|9|(0)(0)|12|(0)|15|16|17|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
        com.appodeal.ads.utils.Log.log(org.apache.ldap.server.db.gui.FilterDialog.DEBUG_MODE, "Log Enable property is not valid");
        com.appodeal.ads.utils.Log.log(r2);
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
        com.appodeal.ads.utils.Log.log(org.apache.ldap.server.db.gui.FilterDialog.DEBUG_MODE, "Log Enable property is not valid");
        com.appodeal.ads.utils.Log.log(r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008e A[Catch: all -> 0x00c7, TryCatch #0 {all -> 0x00c7, blocks: (B:32:0x0081, B:34:0x008e, B:38:0x0095, B:39:0x009a, B:40:0x009b, B:41:0x00ad, B:43:0x00b3, B:45:0x00c1), top: B:50:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r7) {
        /*
            java.lang.String r0 = "Log Enable property is not valid"
            java.lang.String r1 = "debug.appodeal.sdk.log"
            boolean r2 = com.appodeal.ads.r0.f7342b
            java.lang.String r3 = "false"
            r4 = 0
            java.lang.String r5 = "Debug"
            if (r2 != 0) goto L27
            java.lang.String r2 = "debug.appodeal.sdk.testmode"
            java.lang.String r2 = a(r2, r3)     // Catch: java.lang.Exception -> L18
            boolean r2 = java.lang.Boolean.parseBoolean(r2)     // Catch: java.lang.Exception -> L18
            goto L22
        L18:
            r2 = move-exception
            java.lang.String r6 = "Test Mode property is not valid"
            com.appodeal.ads.utils.Log.log(r5, r6)
            com.appodeal.ads.utils.Log.log(r2)
            r2 = r4
        L22:
            if (r2 == 0) goto L25
            goto L27
        L25:
            r2 = r4
            goto L28
        L27:
            r2 = 1
        L28:
            com.appodeal.ads.Appodeal.setTesting(r2)
            java.lang.String r2 = a(r1, r3)     // Catch: java.lang.Exception -> L34
            boolean r2 = java.lang.Boolean.parseBoolean(r2)     // Catch: java.lang.Exception -> L34
            goto L3c
        L34:
            r2 = move-exception
            com.appodeal.ads.utils.Log.log(r5, r0)
            com.appodeal.ads.utils.Log.log(r2)
            r2 = r4
        L3c:
            com.appodeal.ads.modules.common.internal.log.InternalLogKt.setLogEnable(r2)
            java.lang.String r1 = a(r1, r3)     // Catch: java.lang.Exception -> L48
            boolean r4 = java.lang.Boolean.parseBoolean(r1)     // Catch: java.lang.Exception -> L48
            goto L4f
        L48:
            r1 = move-exception
            com.appodeal.ads.utils.Log.log(r5, r0)
            com.appodeal.ads.utils.Log.log(r1)
        L4f:
            if (r4 == 0) goto L54
            com.appodeal.ads.utils.Log$LogLevel r0 = com.appodeal.ads.utils.Log.LogLevel.none
            goto L70
        L54:
            java.lang.String r0 = "debug.appodeal.sdk.loglevel"
            com.appodeal.ads.utils.Log$LogLevel r1 = com.appodeal.ads.utils.Log.LogLevel.none     // Catch: java.lang.Exception -> L65
            java.lang.String r1 = r1.name()     // Catch: java.lang.Exception -> L65
            java.lang.String r0 = a(r0, r1)     // Catch: java.lang.Exception -> L65
            com.appodeal.ads.utils.Log$LogLevel r0 = com.appodeal.ads.utils.Log.LogLevel.valueOf(r0)     // Catch: java.lang.Exception -> L65
            goto L70
        L65:
            r0 = move-exception
            java.lang.String r1 = "Log Level property is not valid"
            com.appodeal.ads.utils.Log.log(r5, r1)
            com.appodeal.ads.utils.Log.log(r0)
            com.appodeal.ads.utils.Log$LogLevel r0 = com.appodeal.ads.utils.Log.LogLevel.none
        L70:
            com.appodeal.ads.utils.Log$LogLevel r1 = com.appodeal.ads.r0.f7344d
            int r1 = r1.getValue()
            int r2 = r0.getValue()
            if (r1 <= r2) goto L7e
            com.appodeal.ads.utils.Log$LogLevel r0 = com.appodeal.ads.r0.f7344d
        L7e:
            com.appodeal.ads.Appodeal.setLogLevel(r0)
            java.lang.String r0 = "debug.appodeal.sdk.networks"
            r1 = 0
            java.lang.String r0 = a(r0, r1)     // Catch: java.lang.Throwable -> Lc7
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Lc7
            if (r1 != 0) goto Lcb
            boolean r1 = com.appodeal.ads.c1.f6577a     // Catch: java.lang.Throwable -> Lc7
            if (r1 != 0) goto L9b
            if (r0 == 0) goto L95
            goto L9b
        L95:
            java.lang.AssertionError r7 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> Lc7
            r7.<init>()     // Catch: java.lang.Throwable -> Lc7
            throw r7     // Catch: java.lang.Throwable -> Lc7
        L9b:
            java.lang.String r1 = ","
            java.lang.String[] r0 = r0.split(r1)     // Catch: java.lang.Throwable -> Lc7
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: java.lang.Throwable -> Lc7
            java.util.ArrayList r1 = com.appodeal.ads.i.c(r7)     // Catch: java.lang.Throwable -> Lc7
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> Lc7
        Lad:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> Lc7
            if (r2 == 0) goto Lcb
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> Lc7
            com.appodeal.ads.i$c r2 = (com.appodeal.ads.i.c) r2     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r3 = r2.f6724a     // Catch: java.lang.Throwable -> Lc7
            boolean r3 = r0.contains(r3)     // Catch: java.lang.Throwable -> Lc7
            if (r3 != 0) goto Lad
            java.lang.String r2 = r2.f6724a     // Catch: java.lang.Throwable -> Lc7
            com.appodeal.ads.Appodeal.disableNetwork(r7, r2)     // Catch: java.lang.Throwable -> Lc7
            goto Lad
        Lc7:
            r7 = move-exception
            com.appodeal.ads.utils.Log.log(r7)
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.c1.a(android.content.Context):void");
    }
}
