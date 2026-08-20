package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Intent;
import android.webkit.WebView;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinUserService;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class m implements l.a, AppLovinWebViewActivity.EventListener {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f5834a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private static WeakReference<AppLovinWebViewActivity> f5835b;

    /* renamed from: c  reason: collision with root package name */
    private final n f5836c;

    /* renamed from: d  reason: collision with root package name */
    private final v f5837d;

    /* renamed from: e  reason: collision with root package name */
    private AppLovinUserService.OnConsentDialogDismissListener f5838e;

    /* renamed from: f  reason: collision with root package name */
    private l f5839f;

    /* renamed from: g  reason: collision with root package name */
    private WeakReference<Activity> f5840g;

    /* renamed from: h  reason: collision with root package name */
    private com.applovin.impl.sdk.utils.a f5841h;
    private AtomicBoolean i = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(n nVar) {
        this.f5840g = new WeakReference<>(null);
        this.f5836c = nVar;
        this.f5837d = nVar.D();
        if (nVar.R() != null) {
            this.f5840g = new WeakReference<>(nVar.R());
        }
        n.a(n.Q()).a(new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.sdk.m.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                m.this.f5840g = new WeakReference(activity);
            }
        });
        this.f5839f = new l(this, nVar);
    }

    private void a(boolean z, long j) {
        g();
        if (z) {
            a(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(n nVar) {
        String str;
        if (d()) {
            str = "Consent dialog already showing";
        } else if (com.applovin.impl.sdk.utils.i.a(nVar.P())) {
            if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aB)).booleanValue()) {
                if (v.a()) {
                    this.f5837d.e("ConsentDialogManager", "Blocked publisher from showing consent dialog");
                }
                return false;
            } else if (StringUtils.isValidString((String) nVar.a(com.applovin.impl.sdk.c.b.aC))) {
                return true;
            } else {
                if (v.a()) {
                    this.f5837d.e("ConsentDialogManager", "AdServer returned empty consent dialog URL");
                }
                return false;
            }
        } else {
            str = "No internet available, skip showing of consent dialog";
        }
        v.i("AppLovinSdk", str);
        return false;
    }

    private void g() {
        this.f5836c.ai().b(this.f5841h);
        if (d()) {
            AppLovinWebViewActivity appLovinWebViewActivity = f5835b.get();
            f5835b = null;
            if (appLovinWebViewActivity != null) {
                appLovinWebViewActivity.finish();
                AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener = this.f5838e;
                if (onConsentDialogDismissListener != null) {
                    onConsentDialogDismissListener.onDismiss();
                    this.f5838e = null;
                }
            }
        }
    }

    @Override // com.applovin.impl.sdk.l.a
    public void a() {
        final Activity activity = this.f5840g.get();
        if (activity != null) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.m.5
                @Override // java.lang.Runnable
                public void run() {
                    m.this.a(activity, (AppLovinUserService.OnConsentDialogDismissListener) null);
                }
            }, ((Long) this.f5836c.a(com.applovin.impl.sdk.c.b.aE)).longValue());
        }
    }

    public void a(final long j) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.m.4
            @Override // java.lang.Runnable
            public void run() {
                v unused = m.this.f5837d;
                if (v.a()) {
                    m.this.f5837d.b("ConsentDialogManager", "Scheduling repeating consent alert");
                }
                m.this.f5839f.a(j, m.this.f5836c, m.this);
            }
        });
    }

    public void a(final Activity activity, final AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener) {
        activity.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.m.3
            @Override // java.lang.Runnable
            public void run() {
                m mVar = m.this;
                if (!mVar.a(mVar.f5836c) || m.f5834a.getAndSet(true)) {
                    AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener2 = onConsentDialogDismissListener;
                    if (onConsentDialogDismissListener2 != null) {
                        onConsentDialogDismissListener2.onDismiss();
                        return;
                    }
                    return;
                }
                m.this.f5840g = new WeakReference(activity);
                m.this.f5838e = onConsentDialogDismissListener;
                m.this.f5841h = new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.sdk.m.3.1
                    @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStarted(Activity activity2) {
                        if (activity2 instanceof AppLovinWebViewActivity) {
                            if (!m.this.d() || m.f5835b.get() != activity2) {
                                AppLovinWebViewActivity appLovinWebViewActivity = (AppLovinWebViewActivity) activity2;
                                WeakReference unused = m.f5835b = new WeakReference(appLovinWebViewActivity);
                                appLovinWebViewActivity.loadUrl((String) m.this.f5836c.a(com.applovin.impl.sdk.c.b.aC), m.this);
                            }
                            m.f5834a.set(false);
                        }
                    }
                };
                m.this.f5836c.ai().a(m.this.f5841h);
                Intent intent = new Intent(activity, AppLovinWebViewActivity.class);
                intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, m.this.f5836c.C());
                intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON, (Serializable) m.this.f5836c.a(com.applovin.impl.sdk.c.b.aD));
                activity.startActivity(intent);
            }
        });
    }

    @Override // com.applovin.impl.sdk.l.a
    public void b() {
    }

    public void c() {
        if (this.i.getAndSet(true)) {
            return;
        }
        final String str = (String) this.f5836c.a(com.applovin.impl.sdk.c.b.aC);
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.m.2
            @Override // java.lang.Runnable
            public void run() {
                WebView tryToCreateWebView = Utils.tryToCreateWebView(m.this.f5836c.P(), "preloading consent dialog");
                if (tryToCreateWebView == null) {
                    return;
                }
                tryToCreateWebView.loadUrl(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        WeakReference<AppLovinWebViewActivity> weakReference = f5835b;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    @Override // com.applovin.sdk.AppLovinWebViewActivity.EventListener
    public void onReceivedEvent(String str) {
        boolean booleanValue;
        n nVar;
        com.applovin.impl.sdk.c.b<Long> bVar;
        if ("accepted".equalsIgnoreCase(str)) {
            AppLovinPrivacySettings.setHasUserConsent(true, this.f5836c.P());
            g();
            return;
        }
        if ("rejected".equalsIgnoreCase(str)) {
            AppLovinPrivacySettings.setHasUserConsent(false, this.f5836c.P());
            booleanValue = ((Boolean) this.f5836c.a(com.applovin.impl.sdk.c.b.aF)).booleanValue();
            nVar = this.f5836c;
            bVar = com.applovin.impl.sdk.c.b.aK;
        } else if ("closed".equalsIgnoreCase(str)) {
            booleanValue = ((Boolean) this.f5836c.a(com.applovin.impl.sdk.c.b.aG)).booleanValue();
            nVar = this.f5836c;
            bVar = com.applovin.impl.sdk.c.b.aL;
        } else if (!AppLovinWebViewActivity.EVENT_DISMISSED_VIA_BACK_BUTTON.equalsIgnoreCase(str)) {
            return;
        } else {
            booleanValue = ((Boolean) this.f5836c.a(com.applovin.impl.sdk.c.b.aH)).booleanValue();
            nVar = this.f5836c;
            bVar = com.applovin.impl.sdk.c.b.aM;
        }
        a(booleanValue, ((Long) nVar.a(bVar)).longValue());
    }
}
