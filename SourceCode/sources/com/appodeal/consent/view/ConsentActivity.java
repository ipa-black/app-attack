package com.appodeal.consent.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.appodeal.consent.internal.d;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/appodeal/consent/view/ConsentActivity;", "Landroid/app/Activity;", "<init>", "()V", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "apd_consent"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class ConsentActivity extends Activity {

    /* renamed from: b  reason: collision with root package name */
    public static Function1<? super Activity, Unit> f8139b;

    /* renamed from: c  reason: collision with root package name */
    public static Function1<? super Activity, Unit> f8140c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f8141d;

    /* renamed from: e  reason: collision with root package name */
    public static b f8142e;

    /* renamed from: a  reason: collision with root package name */
    public RelativeLayout f8143a;

    /* loaded from: classes2.dex */
    public static final class a {
        public static boolean a() {
            return ConsentActivity.f8141d;
        }

        public static void b() {
            ConsentActivity.f8141d = false;
        }

        public static void a(d.f.b bVar) {
            ConsentActivity.f8140c = bVar;
        }

        public static void a(d.f.a aVar) {
            ConsentActivity.f8139b = aVar;
        }

        public static void a(b consentWebView) {
            Intrinsics.checkNotNullParameter(consentWebView, "consentWebView");
            ConsentActivity.f8142e = consentWebView;
            Context applicationContext = consentWebView.getContext().getApplicationContext();
            if (ConsentActivity.f8141d) {
                return;
            }
            ConsentActivity.f8141d = true;
            Intent intent = new Intent(applicationContext, ConsentActivity.class);
            intent.addFlags(276824064);
            applicationContext.startActivity(intent);
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        b bVar = f8142e;
        if (bVar == null) {
            Function1<? super Activity, Unit> function1 = f8140c;
            if (function1 == null) {
                return;
            }
            function1.invoke(this);
            return;
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.addView(bVar);
        relativeLayout.addView(bVar.getCloseButton());
        this.f8143a = relativeLayout;
        setContentView(relativeLayout, layoutParams);
        getWindow().setLayout(-1, -1);
        Function1<? super Activity, Unit> function12 = f8139b;
        if (function12 == null) {
            return;
        }
        function12.invoke(this);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        f8141d = false;
        RelativeLayout relativeLayout = this.f8143a;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
        Function1<? super Activity, Unit> function1 = f8140c;
        if (function1 == null) {
            return;
        }
        function1.invoke(this);
    }
}
