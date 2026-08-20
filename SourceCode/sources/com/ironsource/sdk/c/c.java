package com.ironsource.sdk.c;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.sdk.a.f;
import com.ironsource.sdk.c.e;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class c implements e {

    /* renamed from: e  reason: collision with root package name */
    private static final String f11555e = "c";

    /* renamed from: a  reason: collision with root package name */
    final String f11556a;

    /* renamed from: b  reason: collision with root package name */
    WebView f11557b;

    /* renamed from: c  reason: collision with root package name */
    public com.ironsource.sdk.b.b f11558c;

    /* renamed from: d  reason: collision with root package name */
    public com.ironsource.sdk.a f11559d;

    /* renamed from: f  reason: collision with root package name */
    private final String f11560f;

    /* renamed from: g  reason: collision with root package name */
    private Activity f11561g;

    public c(com.ironsource.sdk.b.a aVar, Activity activity, String str, com.ironsource.sdk.a aVar2) {
        this.f11561g = activity;
        com.ironsource.sdk.b.b bVar = new com.ironsource.sdk.b.b();
        this.f11558c = bVar;
        bVar.f11530d = str;
        this.f11560f = IronSourceStorageUtils.getNetworkStorageDir(activity.getApplicationContext());
        this.f11556a = str;
        this.f11558c.f11527a = aVar;
        this.f11559d = aVar2;
    }

    static /* synthetic */ Activity a(c cVar, Activity activity) {
        cVar.f11561g = null;
        return null;
    }

    static /* synthetic */ com.ironsource.sdk.b.b a(c cVar, com.ironsource.sdk.b.b bVar) {
        cVar.f11558c = null;
        return null;
    }

    static /* synthetic */ void a(c cVar, final String str) {
        Logger.i(f11555e, "ISNAdViewWebPresenter | createWebView");
        WebView webView = new WebView(cVar.f11561g);
        cVar.f11557b = webView;
        webView.addJavascriptInterface(new b(cVar), "containerMsgHandler");
        cVar.f11557b.setWebViewClient(new com.ironsource.sdk.b.c(new e.a() { // from class: com.ironsource.sdk.c.c.3
            @Override // com.ironsource.sdk.c.e.a
            public final void a(String str2) {
                Logger.i(c.f11555e, "ISNAdViewWebPresenter | WebViewClient | reportOnError: " + str2);
                c.this.b(str, str2);
            }

            @Override // com.ironsource.sdk.c.e.a
            public final void b(String str2) {
                Logger.i(c.f11555e, "ISNAdViewWebPresenter | WebViewClient | onRenderProcessGone: " + str2);
                try {
                    ((ViewGroup) c.this.f11557b.getParent()).removeView(c.this.f11557b);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                c.this.c();
            }
        }));
        com.ironsource.sdk.utils.d.a(cVar.f11557b);
        cVar.f11558c.f11529c = cVar.f11557b;
    }

    static /* synthetic */ String b(c cVar, String str) {
        if (str.startsWith(".")) {
            StringBuilder append = new StringBuilder("file://").append(cVar.f11560f);
            String substring = str.substring(str.indexOf("/") + 1);
            return append.append(substring.substring(substring.indexOf("/"))).toString();
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        a("", "");
    }

    @Override // com.ironsource.sdk.c.e
    public final synchronized void a(final String str, final String str2) {
        if (this.f11561g == null) {
            return;
        }
        Logger.i(f11555e, "performCleanup");
        com.ironsource.environment.e.a.f10578a.a(new Runnable() { // from class: com.ironsource.sdk.c.c.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (c.this.f11557b != null) {
                        c.this.f11557b.destroy();
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("adViewId", c.this.f11556a);
                    if (c.this.f11558c != null) {
                        c.this.f11558c.a(str, jSONObject);
                        com.ironsource.sdk.b.b bVar = c.this.f11558c;
                        bVar.f11527a = null;
                        bVar.f11528b = null;
                    }
                    c.a(c.this, (com.ironsource.sdk.b.b) null);
                    c.a(c.this, (Activity) null);
                } catch (Exception e2) {
                    Log.e(c.f11555e, "performCleanup | could not destroy ISNAdView webView ID: " + c.this.f11556a);
                    com.ironsource.sdk.a.d.a(f.o, new com.ironsource.sdk.a.a().a("callfailreason", e2.getMessage()).f11500a);
                    c.this.b(str2, e2.getMessage());
                }
            }
        });
    }

    @Override // com.ironsource.sdk.c.e
    public final void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            b(str3, "action parameter empty");
            return;
        }
        Logger.i(f11555e, "trying to perform WebView Action: " + str);
        try {
            if (str.equals("onPause")) {
                this.f11557b.onPause();
            } else if (!str.equals("onResume")) {
                b(str3, "action not supported");
                return;
            } else {
                this.f11557b.onResume();
            }
            this.f11558c.a(str2);
        } catch (Exception unused) {
            b(str3, "failed to perform action");
        }
    }

    @Override // com.ironsource.sdk.c.e
    public final void a(JSONObject jSONObject, String str, String str2) {
        try {
            this.f11558c.b(str);
        } catch (Exception e2) {
            Logger.i(f11555e, "sendHandleGetViewVisibility fail with reason: " + e2.getMessage());
        }
    }

    @Override // com.ironsource.sdk.c.e
    public final WebView b() {
        return this.f11557b;
    }

    public final void b(String str, String str2) {
        com.ironsource.sdk.b.b bVar = this.f11558c;
        if (bVar != null) {
            bVar.a(str, str2);
        }
    }

    @Override // com.ironsource.sdk.c.e
    public final void b(JSONObject jSONObject, String str, String str2) {
        try {
            this.f11558c.a(jSONObject.getString(OutcomeEventsTable.COLUMN_NAME_PARAMS), str, str2);
        } catch (Exception e2) {
            Logger.i(f11555e, "sendMessageToAd fail message: " + e2.getMessage());
            throw e2;
        }
    }

    @JavascriptInterface
    public void handleMessageFromAd(String str) {
        com.ironsource.sdk.b.b bVar = this.f11558c;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(FirebaseAnalytics.Param.METHOD);
            if (TextUtils.isEmpty(optString) || !bVar.c(optString)) {
                bVar.a("containerSendMessage", jSONObject);
            } else if (optString.equalsIgnoreCase("handleGetViewVisibility")) {
                bVar.a(bVar.a(jSONObject).toString(), (String) null, (String) null);
            }
        } catch (JSONException e2) {
            Log.e(bVar.f11531e, "ISNAdViewLogic | receiveMessageFromExternal | Error while trying handle message: " + str);
            e2.printStackTrace();
        }
    }
}
