package com.applovin.impl.mediation.debugger.c;

import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.e.u;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.v;
/* loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f4990a;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0071a f4991e;

    /* renamed from: com.applovin.impl.mediation.debugger.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0071a {
        void b(String str);

        void c();
    }

    public a(n nVar, String str, InterfaceC0071a interfaceC0071a) {
        super("TaskFetchAppAdsContent", nVar);
        this.f4990a = str;
        this.f4991e = interfaceC0071a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5674b.V().a((com.applovin.impl.sdk.e.a) new u<String>(com.applovin.impl.sdk.network.c.a(this.f5674b).b(ShareTarget.METHOD_GET).a(Uri.parse(this.f4990a).buildUpon().scheme("https").appendPath("app-ads.txt").build().toString()).c(Uri.parse(this.f4990a).buildUpon().scheme("http").appendPath("app-ads.txt").build().toString()).a((c.a) "").c(false).a(), this.f5674b) { // from class: com.applovin.impl.mediation.debugger.c.a.1
            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, String str2) {
                this.f5674b.D();
                if (v.a()) {
                    this.f5674b.D().e("TaskFetchAppAdsContent", "Unable to fetch app-ads.txt due to: " + str + ", and received error code: " + i);
                }
                a.this.f4991e.c();
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(String str, int i) {
                if (TextUtils.isEmpty(str)) {
                    a.this.f4991e.c();
                } else {
                    a.this.f4991e.b(str);
                }
            }
        });
    }
}
