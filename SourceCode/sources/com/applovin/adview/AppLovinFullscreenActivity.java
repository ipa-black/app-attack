package com.applovin.adview;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
import android.window.OnBackInvokedCallback;
import androidx.core.view.ViewCompat;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.applovin.impl.adview.activity.b.a;
import com.applovin.impl.adview.activity.b.e;
import com.applovin.impl.adview.k;
import com.applovin.impl.adview.o;
import com.applovin.impl.sdk.c.b;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.h;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class AppLovinFullscreenActivity extends Activity implements k {
    public static o parentInterstitialWrapper;

    /* renamed from: a  reason: collision with root package name */
    private n f1182a;

    /* renamed from: b  reason: collision with root package name */
    private com.applovin.impl.adview.activity.b.a f1183b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f1184c = new AtomicBoolean(true);

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.adview.activity.a f1185d;

    /* renamed from: e  reason: collision with root package name */
    private a f1186e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f1187f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a implements OnBackInvokedCallback {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f1190a;

        protected a(Runnable runnable) {
            this.f1190a = runnable;
        }

        public void onBackInvoked() {
            this.f1190a.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        com.applovin.impl.adview.activity.b.a aVar = this.f1183b;
        if (aVar != null) {
            aVar.l();
        }
        if (Utils.isAppLovinTestEnvironment(getApplicationContext())) {
            super.onBackPressed();
        }
    }

    @Override // com.applovin.impl.adview.k
    public void dismiss() {
        if (h.k() && this.f1186e != null) {
            getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.f1186e);
            this.f1186e = null;
        }
        com.applovin.impl.adview.activity.b.a aVar = this.f1183b;
        if (aVar != null) {
            aVar.h();
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        com.applovin.impl.adview.activity.b.a aVar = this.f1183b;
        if (aVar != null) {
            aVar.a(configuration);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null && parentInterstitialWrapper == null) {
            if (bundle.getBoolean("com.applovin.dismiss_on_restore", false)) {
                v.h("AppLovinFullscreenActivity", "Dismissing ad. Activity was destroyed while in background.");
                dismiss();
                return;
            }
            v.f("AppLovinFullscreenActivity", "Activity was destroyed while in background.");
        }
        try {
            requestWindowFeature(1);
        } catch (Throwable th) {
            v.c("AppLovinFullscreenActivity", "Failed to request window feature", th);
        }
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(16777216);
        getWindow().addFlags(128);
        View findViewById = findViewById(16908290);
        findViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        String stringExtra = getIntent().getStringExtra("com.applovin.interstitial.sdk_key");
        if (TextUtils.isEmpty(stringExtra)) {
            o oVar = parentInterstitialWrapper;
            if (oVar != null && oVar.e() != null) {
                o.a(parentInterstitialWrapper.e(), parentInterstitialWrapper.b(), "Empty SDK key", null, this);
            }
            finish();
            return;
        }
        n nVar = AppLovinSdk.getInstance(stringExtra, new AppLovinSdkSettings(this), this).coreSdk;
        this.f1182a = nVar;
        this.f1187f = ((Boolean) nVar.a(b.cL)).booleanValue();
        if (((Boolean) this.f1182a.a(b.cM)).booleanValue()) {
            findViewById.setFitsSystemWindows(true);
        }
        com.applovin.impl.sdk.utils.b.a(this.f1187f, this);
        if (h.k() && ((Boolean) this.f1182a.a(b.fg)).booleanValue()) {
            this.f1186e = new a(new Runnable() { // from class: com.applovin.adview.AppLovinFullscreenActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    AppLovinFullscreenActivity.this.a();
                }
            });
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.f1186e);
        }
        o oVar2 = parentInterstitialWrapper;
        if (oVar2 != null) {
            com.applovin.impl.adview.activity.b.a.a(oVar2.e(), parentInterstitialWrapper.d(), parentInterstitialWrapper.b(), parentInterstitialWrapper.c(), this.f1182a, this, new a.InterfaceC0060a() { // from class: com.applovin.adview.AppLovinFullscreenActivity.2
                @Override // com.applovin.impl.adview.activity.b.a.InterfaceC0060a
                public void a(com.applovin.impl.adview.activity.b.a aVar) {
                    AppLovinFullscreenActivity.this.f1183b = aVar;
                    aVar.d();
                }

                @Override // com.applovin.impl.adview.activity.b.a.InterfaceC0060a
                public void a(String str, Throwable th2) {
                    o.a(AppLovinFullscreenActivity.parentInterstitialWrapper.e(), AppLovinFullscreenActivity.parentInterstitialWrapper.b(), str, th2, AppLovinFullscreenActivity.this);
                }
            });
            return;
        }
        Intent intent = new Intent(this, FullscreenAdService.class);
        com.applovin.impl.adview.activity.a aVar = new com.applovin.impl.adview.activity.a(this, this.f1182a);
        this.f1185d = aVar;
        bindService(intent, aVar, 1);
        if (h.h()) {
            String str = this.f1182a.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.DISABLE_SET_DATA_DIRECTORY_SUFFIX);
            if (StringUtils.isValidString(str) && Boolean.parseBoolean(str)) {
                return;
            }
            try {
                WebView.setDataDirectorySuffix(String.valueOf(Process.myPid()));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        parentInterstitialWrapper = null;
        com.applovin.impl.adview.activity.a aVar = this.f1185d;
        if (aVar != null) {
            try {
                unbindService(aVar);
            } catch (Throwable unused) {
            }
        }
        com.applovin.impl.adview.activity.b.a aVar2 = this.f1183b;
        if (aVar2 != null) {
            if (!aVar2.i()) {
                this.f1183b.h();
            }
            this.f1183b.k();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        com.applovin.impl.adview.activity.b.a aVar = this.f1183b;
        if (aVar != null) {
            aVar.a(i, keyEvent);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        com.applovin.impl.adview.activity.b.a aVar = this.f1183b;
        if (aVar != null) {
            aVar.g();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        com.applovin.impl.adview.activity.b.a aVar;
        try {
            super.onResume();
            if (this.f1184c.get() || (aVar = this.f1183b) == null) {
                return;
            }
            aVar.f();
        } catch (IllegalArgumentException e2) {
            this.f1182a.D();
            if (v.a()) {
                this.f1182a.D().b("AppLovinFullscreenActivity", "Error was encountered in onResume().", e2);
            }
            dismiss();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        n nVar = this.f1182a;
        if (nVar != null) {
            bundle.putBoolean("com.applovin.dismiss_on_restore", ((Boolean) nVar.a(b.eY)).booleanValue());
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        com.applovin.impl.adview.activity.b.a aVar = this.f1183b;
        if (aVar != null) {
            aVar.j();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (this.f1183b != null) {
            if (!this.f1184c.getAndSet(false) || (this.f1183b instanceof e)) {
                this.f1183b.c(z);
            }
            if (z) {
                com.applovin.impl.sdk.utils.b.a(this.f1187f, this);
            }
        }
        super.onWindowFocusChanged(z);
    }

    public void setPresenter(com.applovin.impl.adview.activity.b.a aVar) {
        this.f1183b = aVar;
    }
}
