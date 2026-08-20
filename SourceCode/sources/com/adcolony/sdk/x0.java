package com.adcolony.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.adcolony.sdk.e0;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onesignal.OSInAppMessageContentKt;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import io.bidmachine.utils.IabUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.f(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements j0 {
        b() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.a(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements j0 {
        c() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.c(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements j0 {
        d() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.n(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements j0 {
        e() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.j(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements j0 {
        f() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.i(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f642a;

        g(x0 x0Var, String str) {
            this.f642a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            f1 b2 = c0.b();
            c0.a(b2, SessionDescription.ATTR_TYPE, "open_hook");
            c0.a(b2, "message", this.f642a);
            new h0("CustomMessage.controller_send", 0, b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements j0 {
        h() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.h(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements j0 {
        i() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.m(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j implements j0 {
        j() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.k(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class k implements j0 {
        k() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.o(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class l implements j0 {
        l() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.g(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class m implements j0 {
        m() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.e(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class n implements j0 {
        n() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.d(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class o implements j0 {
        o() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.b(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class p implements j0 {
        p() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            x0.this.l(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f(h0 h0Var) {
        f1 a2 = h0Var.a();
        com.adcolony.sdk.d c2 = com.adcolony.sdk.a.b().c();
        String h2 = c0.h(a2, "ad_session_id");
        AdColonyInterstitial adColonyInterstitial = c2.f().get(h2);
        AdColonyAdView adColonyAdView = c2.d().get(h2);
        if ((adColonyInterstitial == null || adColonyInterstitial.getListener() == null || adColonyInterstitial.d() == null) && (adColonyAdView == null || adColonyAdView.getListener() == null)) {
            return false;
        }
        if (adColonyAdView == null) {
            new h0("AdUnit.make_in_app_purchase", adColonyInterstitial.d().k()).c();
        }
        a(h2);
        b(h2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i(h0 h0Var) {
        f1 a2 = h0Var.a();
        String h2 = c0.h(c0.f(a2, "clickOverride"), "url");
        String h3 = c0.h(a2, "ad_session_id");
        com.adcolony.sdk.d c2 = com.adcolony.sdk.a.b().c();
        AdColonyInterstitial adColonyInterstitial = c2.f().get(h3);
        AdColonyAdView adColonyAdView = c2.d().get(h3);
        if (adColonyInterstitial != null) {
            adColonyInterstitial.b(h2);
            return true;
        } else if (adColonyAdView != null) {
            adColonyAdView.setClickOverride(h2);
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(h0 h0Var) {
        int orientation;
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "ad_session_id");
        int d2 = c0.d(a2, AdUnitActivity.EXTRA_ORIENTATION);
        com.adcolony.sdk.d c2 = com.adcolony.sdk.a.b().c();
        AdColonyAdView adColonyAdView = c2.d().get(h2);
        AdColonyInterstitial adColonyInterstitial = c2.f().get(h2);
        Context a3 = com.adcolony.sdk.a.a();
        if (adColonyAdView != null) {
            adColonyAdView.setOrientation(d2);
        } else if (adColonyInterstitial != null) {
            adColonyInterstitial.a(d2);
        }
        if (adColonyInterstitial == null && adColonyAdView == null) {
            new e0.a().a("Invalid ad session id sent with set orientation properties message: ").a(h2).a(e0.i);
            return false;
        } else if (a3 instanceof com.adcolony.sdk.b) {
            com.adcolony.sdk.b bVar = (com.adcolony.sdk.b) a3;
            if (adColonyAdView == null) {
                orientation = adColonyInterstitial.f();
            } else {
                orientation = adColonyAdView.getOrientation();
            }
            bVar.a(orientation);
            return true;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n(h0 h0Var) {
        AdColonyAdView adColonyAdView = com.adcolony.sdk.a.b().c().d().get(c0.h(h0Var.a(), "ad_session_id"));
        if (adColonyAdView == null) {
            return false;
        }
        adColonyAdView.setNoCloseButton(c0.b(h0Var.a(), "use_custom_close"));
        return true;
    }

    boolean g(h0 h0Var) {
        f1 b2 = c0.b();
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "url");
        String h3 = c0.h(a2, "ad_session_id");
        AdColonyAdView adColonyAdView = com.adcolony.sdk.a.b().c().d().get(h3);
        if (adColonyAdView == null || adColonyAdView.getTrustedDemandSource() || adColonyAdView.c()) {
            if (h2.startsWith("browser")) {
                h2 = h2.replaceFirst("browser", "http");
            }
            if (h2.startsWith("safari")) {
                h2 = h2.replaceFirst("safari", "http");
            }
            d(h2);
            if (z0.a(new Intent("android.intent.action.VIEW", Uri.parse(h2)))) {
                c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
                h0Var.a(b2).c();
                c(h3);
                a(h3);
                b(h3);
                return true;
            }
            z0.a("Failed to launch browser.", 0);
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return false;
        }
        return false;
    }

    boolean h(h0 h0Var) {
        f1 b2 = c0.b();
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "product_id");
        String h3 = c0.h(a2, "ad_session_id");
        if (h2.equals("")) {
            h2 = c0.h(a2, "handle");
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(h2));
        d(h2);
        if (z0.a(intent)) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            c(h3);
            a(h3);
            b(h3);
            return true;
        }
        z0.a("Unable to open.", 0);
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
        h0Var.a(b2).c();
        return false;
    }

    boolean k(h0 h0Var) {
        f1 a2 = h0Var.a();
        f1 b2 = c0.b();
        String h2 = c0.h(a2, "ad_session_id");
        e1 a3 = c0.a(a2, "recipients");
        String str = "";
        for (int i2 = 0; i2 < a3.b(); i2++) {
            if (i2 != 0) {
                str = str + ";";
            }
            str = str + c0.b(a3, i2);
        }
        if (z0.a(new Intent("android.intent.action.VIEW", Uri.parse("smsto:" + str)).putExtra("sms_body", c0.h(a2, TtmlNode.TAG_BODY)))) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            c(h2);
            a(h2);
            b(h2);
            return true;
        }
        z0.a("Failed to create sms.", 0);
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
        h0Var.a(b2).c();
        return false;
    }

    boolean l(h0 h0Var) {
        f1 b2 = c0.b();
        f1 a2 = h0Var.a();
        Intent putExtra = new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", c0.h(a2, "text") + " " + c0.h(a2, "url"));
        String h2 = c0.h(a2, "ad_session_id");
        if (z0.a(putExtra, true)) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            c(h2);
            a(h2);
            b(h2);
            return true;
        }
        z0.a("Unable to create social post.", 0);
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
        h0Var.a(b2).c();
        return false;
    }

    boolean m(h0 h0Var) {
        f1 b2 = c0.b();
        f1 a2 = h0Var.a();
        Intent data = new Intent("android.intent.action.DIAL").setData(Uri.parse("tel:" + c0.h(a2, "phone_number")));
        String h2 = c0.h(a2, "ad_session_id");
        if (z0.a(data)) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            c(h2);
            a(h2);
            b(h2);
            return true;
        }
        z0.a("Failed to dial number.", 0);
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
        h0Var.a(b2).c();
        return false;
    }

    boolean o(h0 h0Var) {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return false;
        }
        int a3 = c0.a(h0Var.a(), "length_ms", 500);
        f1 b2 = c0.b();
        e1 e2 = z0.e(a2);
        boolean z = false;
        for (int i2 = 0; i2 < e2.b(); i2++) {
            if (c0.b(e2, i2).equals("android.permission.VIBRATE")) {
                z = true;
            }
        }
        if (!z) {
            new e0.a().a("No vibrate permission detected.").a(e0.f295f);
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return false;
        } else if (z0.a(a2, a3)) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            return true;
        } else {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        com.adcolony.sdk.a.a("System.open_store", new h());
        com.adcolony.sdk.a.a("System.telephone", new i());
        com.adcolony.sdk.a.a("System.sms", new j());
        com.adcolony.sdk.a.a("System.vibrate", new k());
        com.adcolony.sdk.a.a("System.open_browser", new l());
        com.adcolony.sdk.a.a("System.mail", new m());
        com.adcolony.sdk.a.a("System.launch_app", new n());
        com.adcolony.sdk.a.a("System.create_calendar_event", new o());
        com.adcolony.sdk.a.a("System.social_post", new p());
        com.adcolony.sdk.a.a("System.make_in_app_purchase", new a());
        com.adcolony.sdk.a.a("System.close", new b());
        com.adcolony.sdk.a.a("System.expand", new c());
        com.adcolony.sdk.a.a("System.use_custom_close", new d());
        com.adcolony.sdk.a.a("System.set_orientation_properties", new e());
        com.adcolony.sdk.a.a("System.click_override", new f());
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean b(com.adcolony.sdk.h0 r25) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adcolony.sdk.x0.b(com.adcolony.sdk.h0):boolean");
    }

    boolean c(h0 h0Var) {
        f1 a2 = h0Var.a();
        Context a3 = com.adcolony.sdk.a.a();
        if (a3 != null && com.adcolony.sdk.a.d()) {
            String h2 = c0.h(a2, "ad_session_id");
            com.adcolony.sdk.k b2 = com.adcolony.sdk.a.b();
            AdColonyAdView adColonyAdView = b2.c().d().get(h2);
            if (adColonyAdView != null && ((adColonyAdView.getTrustedDemandSource() || adColonyAdView.c()) && b2.k() != adColonyAdView)) {
                adColonyAdView.setExpandMessage(h0Var);
                adColonyAdView.setExpandedWidth(c0.d(a2, IabUtils.KEY_WIDTH));
                adColonyAdView.setExpandedHeight(c0.d(a2, IabUtils.KEY_HEIGHT));
                adColonyAdView.setOrientation(c0.a(a2, AdUnitActivity.EXTRA_ORIENTATION, -1));
                adColonyAdView.setNoCloseButton(c0.b(a2, "use_custom_close"));
                b2.a(adColonyAdView);
                b2.a(adColonyAdView.getContainer());
                Intent intent = new Intent(a3, AdColonyAdViewActivity.class);
                b(h2);
                a(h2);
                z0.a(intent);
                return true;
            }
        }
        return false;
    }

    boolean d(h0 h0Var) {
        f1 b2 = c0.b();
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "ad_session_id");
        if (c0.b(a2, "deep_link")) {
            return h(h0Var);
        }
        Context a3 = com.adcolony.sdk.a.a();
        if (a3 == null) {
            return false;
        }
        if (z0.a(a3.getPackageManager().getLaunchIntentForPackage(c0.h(a2, "handle")))) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            c(h2);
            a(h2);
            b(h2);
            return true;
        }
        z0.a("Failed to launch external application.", 0);
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
        h0Var.a(b2).c();
        return false;
    }

    boolean e(h0 h0Var) {
        f1 b2 = c0.b();
        f1 a2 = h0Var.a();
        e1 a3 = c0.a(a2, "recipients");
        boolean b3 = c0.b(a2, OSInAppMessageContentKt.HTML);
        String h2 = c0.h(a2, "subject");
        String h3 = c0.h(a2, TtmlNode.TAG_BODY);
        String h4 = c0.h(a2, "ad_session_id");
        String[] strArr = new String[a3.b()];
        for (int i2 = 0; i2 < a3.b(); i2++) {
            strArr[i2] = c0.b(a3, i2);
        }
        Intent intent = new Intent("android.intent.action.SEND");
        if (!b3) {
            intent.setType("plain/text");
        }
        intent.putExtra("android.intent.extra.SUBJECT", h2).putExtra("android.intent.extra.TEXT", h3).putExtra("android.intent.extra.EMAIL", strArr);
        if (z0.a(intent)) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            c(h4);
            a(h4);
            b(h4);
            return true;
        }
        z0.a("Failed to send email.", 0);
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
        h0Var.a(b2).c();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        com.adcolony.sdk.d c2 = com.adcolony.sdk.a.b().c();
        AdColonyInterstitial adColonyInterstitial = c2.f().get(str);
        if (adColonyInterstitial != null && adColonyInterstitial.getListener() != null) {
            adColonyInterstitial.getListener().onLeftApplication(adColonyInterstitial);
            return;
        }
        AdColonyAdView adColonyAdView = c2.d().get(str);
        AdColonyAdViewListener listener = adColonyAdView != null ? adColonyAdView.getListener() : null;
        if (adColonyAdView == null || listener == null) {
            return;
        }
        listener.onLeftApplication(adColonyAdView);
    }

    private void d(String str) {
        if (z0.a(new g(this, str))) {
            return;
        }
        new e0.a().a("Executing ADCSystem.sendOpenCustomMessage failed").a(e0.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "ad_session_id");
        Activity activity = com.adcolony.sdk.a.a() instanceof Activity ? (Activity) com.adcolony.sdk.a.a() : null;
        boolean z = activity instanceof AdColonyAdViewActivity;
        if (activity instanceof com.adcolony.sdk.b) {
            if (z) {
                ((AdColonyAdViewActivity) activity).b();
                return true;
            }
            f1 b2 = c0.b();
            c0.a(b2, "id", h2);
            new h0("AdSession.on_request_close", ((com.adcolony.sdk.b) activity).f161c, b2).c();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        com.adcolony.sdk.d c2 = com.adcolony.sdk.a.b().c();
        AdColonyInterstitial adColonyInterstitial = c2.f().get(str);
        if (adColonyInterstitial != null && adColonyInterstitial.getListener() != null && adColonyInterstitial.h()) {
            adColonyInterstitial.getListener().onClicked(adColonyInterstitial);
            return;
        }
        AdColonyAdView adColonyAdView = c2.d().get(str);
        AdColonyAdViewListener listener = adColonyAdView != null ? adColonyAdView.getListener() : null;
        if (adColonyAdView == null || listener == null || !adColonyAdView.c()) {
            return;
        }
        listener.onClicked(adColonyAdView);
    }

    private boolean b(String str) {
        if (com.adcolony.sdk.a.b().c().d().get(str) == null) {
            return false;
        }
        f1 b2 = c0.b();
        c0.a(b2, "ad_session_id", str);
        new h0("MRAID.on_event", 1, b2).c();
        return true;
    }
}
