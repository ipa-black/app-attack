package com.appodeal.consent.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appodeal.consent.Consent;
import com.appodeal.consent.Vendor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Deprecated;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b extends WebView {

    /* renamed from: a  reason: collision with root package name */
    public final c f8151a;

    /* renamed from: b  reason: collision with root package name */
    public final String f8152b;

    /* renamed from: c  reason: collision with root package name */
    public final Consent f8153c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, Vendor> f8154d;

    /* renamed from: e  reason: collision with root package name */
    public final CoroutineScope f8155e;

    /* renamed from: f  reason: collision with root package name */
    public AtomicBoolean f8156f;

    /* renamed from: g  reason: collision with root package name */
    public AtomicBoolean f8157g;

    /* renamed from: h  reason: collision with root package name */
    public final com.appodeal.consent.view.a f8158h;

    /* loaded from: classes2.dex */
    public final class a extends WebViewClient {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ b f8159a;

        public a(b this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.f8159a = this$0;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView view, String url) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            super.onPageFinished(view, url);
            if (url == null || url.length() == 0 || !StringsKt.startsWith$default(url, this.f8159a.f8152b, false, 2, (Object) null)) {
                return;
            }
            b bVar = this.f8159a;
            b.a(bVar, bVar.getConsentJs());
            if (this.f8159a.f8156f.getAndSet(true)) {
                return;
            }
            this.f8159a.f8151a.a();
        }

        @Override // android.webkit.WebViewClient
        @Deprecated(message = "Deprecated in Java")
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            this.f8159a.f8151a.a("WebResourceError: " + ((Object) str2) + " [" + i + "] " + ((Object) str));
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(error, "error");
            super.onReceivedError(view, request, error);
            this.f8159a.f8151a.a(error.toString());
        }

        @Override // android.webkit.WebViewClient
        @Deprecated(message = "Deprecated in Java")
        public final boolean shouldOverrideUrlLoading(WebView view, String url) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            if (url == null || url.length() == 0 || !StringsKt.startsWith$default(url, this.f8159a.f8152b, false, 2, (Object) null)) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
                    intent.setFlags(268435456);
                    this.f8159a.getContext().startActivity(intent);
                    return true;
                } catch (Throwable unused) {
                    this.f8159a.f8151a.a("No Activity found to handle browser intent.");
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: com.appodeal.consent.view.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public final class C0156b {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ b f8160a;

        @DebugMetadata(c = "com.appodeal.consent.view.ConsentWebView$ConsentJSInterface$closeWebView$1", f = "ConsentWebView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.appodeal.consent.view.b$b$a */
        /* loaded from: classes2.dex */
        public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ b f8161a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f8161a = bVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new a(this.f8161a, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                this.f8161a.loadUrl("about:blank");
                return Unit.INSTANCE;
            }
        }

        public C0156b(b this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.f8160a = this$0;
        }

        @JavascriptInterface
        public final void closeWebView() {
            BuildersKt__Builders_commonKt.launch$default(this.f8160a.f8155e, null, null, new a(this.f8160a, null), 3, null);
        }

        @JavascriptInterface
        public final void send(String consentString) {
            Intrinsics.checkNotNullParameter(consentString, "consentString");
            if (this.f8160a.f8157g.getAndSet(true)) {
                return;
            }
            this.f8160a.f8151a.a(d.b(consentString));
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a();

        void a(String str);

        void a(JSONObject jSONObject);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, com.appodeal.consent.internal.d listener, String consentDialogUrl, Consent consent, Map customVendors) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(consentDialogUrl, "consentDialogUrl");
        Intrinsics.checkNotNullParameter(consent, "consent");
        Intrinsics.checkNotNullParameter(customVendors, "customVendors");
        this.f8151a = listener;
        this.f8152b = consentDialogUrl;
        this.f8153c = consent;
        this.f8154d = customVendors;
        this.f8155e = CoroutineScopeKt.CoroutineScope(Dispatchers.getMain());
        this.f8156f = new AtomicBoolean(false);
        this.f8157g = new AtomicBoolean(false);
        addJavascriptInterface(new C0156b(this), "ConsentManager");
        setWebViewClient(new a(this));
        getSettings().setJavaScriptEnabled(true);
        this.f8158h = d.a(this, new com.appodeal.consent.view.c(this));
    }

    public static final void a(b bVar, String str) {
        bVar.getClass();
        bVar.loadUrl(Intrinsics.stringPlus("javascript: ", str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getCloseJs() {
        return "closeConsentDialog()";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getConsentJs() {
        String jSONObject = this.f8153c.toJson().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "consent.toJson().toString()");
        String replace = new Regex("\"").replace(jSONObject, "\\\\\"");
        Map<String, Vendor> map = this.f8154d;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, Vendor> entry : map.entrySet()) {
            arrayList.add(entry.getValue().toJson$apd_consent());
        }
        JSONArray jSONArray = new JSONArray((Collection) arrayList);
        StringBuilder sb = new StringBuilder("showConsentDialog(\"");
        sb.append(replace).append("\",\"");
        sb.append(d.b(this)).append("\",\"");
        sb.append(d.a(this)).append("\",");
        sb.append(jSONArray).append(")");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public final void a() {
        this.f8156f.set(false);
        this.f8157g.set(false);
        clearCache(true);
    }

    public final com.appodeal.consent.view.a getCloseButton() {
        return this.f8158h;
    }
}
