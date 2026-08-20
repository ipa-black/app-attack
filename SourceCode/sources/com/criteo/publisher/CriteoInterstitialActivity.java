package com.criteo.publisher;

import android.app.Activity;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.exoplayer2.C;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class CriteoInterstitialActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f8606a = com.criteo.publisher.logging.h.b(getClass());

    /* renamed from: b  reason: collision with root package name */
    private WebView f8607b;

    /* renamed from: c  reason: collision with root package name */
    private ResultReceiver f8608c;

    /* renamed from: d  reason: collision with root package name */
    private FrameLayout f8609d;

    /* renamed from: e  reason: collision with root package name */
    private ComponentName f8610e;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            c();
        } catch (Throwable th) {
            this.f8606a.a(v.b(th));
            finish();
        }
    }

    private void c() {
        setContentView(R.layout.activity_criteo_interstitial);
        this.f8609d = (FrameLayout) findViewById(R.id.AdLayout);
        WebView webView = new WebView(getApplicationContext());
        this.f8607b = webView;
        this.f8609d.addView(webView, 0);
        ImageButton imageButton = (ImageButton) findViewById(R.id.closeButton);
        Bundle extras = getIntent().getExtras();
        if (extras != null && extras.getString("webviewdata") != null) {
            String string = extras.getString("webviewdata");
            this.f8608c = (ResultReceiver) extras.getParcelable("resultreceiver");
            this.f8610e = (ComponentName) extras.getParcelable("callingactivity");
            d();
            a(string);
        }
        imageButton.setOnClickListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CriteoInterstitialActivity.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Bundle bundle = new Bundle();
        bundle.putInt("Action", 201);
        this.f8608c.send(100, bundle);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        Bundle bundle = new Bundle();
        bundle.putInt("Action", 202);
        this.f8608c.send(100, bundle);
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f8609d.removeAllViews();
        this.f8607b.destroy();
        this.f8607b = null;
    }

    private void a(String str) {
        this.f8607b.loadDataWithBaseURL("https://criteo.com", str, "text/html", C.UTF8_NAME, "about:blank");
    }

    private void d() {
        this.f8607b.getSettings().setJavaScriptEnabled(true);
        this.f8607b.setWebViewClient(new com.criteo.publisher.b0.a(new b(new WeakReference(this), null), this.f8610e));
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b implements com.criteo.publisher.b0.c {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<CriteoInterstitialActivity> f8612a;

        /* synthetic */ b(WeakReference weakReference, a aVar) {
            this(weakReference);
        }

        private b(WeakReference<CriteoInterstitialActivity> weakReference) {
            this.f8612a = weakReference;
        }

        @Override // com.criteo.publisher.b0.c
        public void b() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f8612a.get();
            if (criteoInterstitialActivity != null) {
                criteoInterstitialActivity.a();
            }
        }

        @Override // com.criteo.publisher.b0.c
        public void a() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f8612a.get();
            if (criteoInterstitialActivity != null) {
                criteoInterstitialActivity.b();
            }
        }
    }
}
