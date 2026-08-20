package com.applovin.impl.mediation.debugger.c;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.e.u;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.v;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class b extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final a f4993a;

    /* loaded from: classes.dex */
    public interface a {
        void a(String str);

        void b();
    }

    public b(n nVar, a aVar) {
        super("TaskFetchDeveloperUri", nVar);
        this.f4993a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5674b.V().a((com.applovin.impl.sdk.e.a) new u<String>(com.applovin.impl.sdk.network.c.a(this.f5674b).b(ShareTarget.METHOD_GET).a("https://play.google.com/store/apps/details?id=" + String.valueOf(this.f5674b.Y().h().get("package_name"))).a((c.a) "").c(false).a(), this.f5674b) { // from class: com.applovin.impl.mediation.debugger.c.b.1
            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, String str2) {
                this.f5674b.D();
                if (v.a()) {
                    this.f5674b.D().e("TaskFetchDeveloperUri", "Unable to fetch developer url due to: " + str + ", and received error code: " + i);
                }
                b.this.f4993a.b();
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(String str, int i) {
                if (TextUtils.isEmpty(str)) {
                    b.this.f4993a.b();
                    return;
                }
                Matcher matcher = Pattern.compile("(?<=\"appstore:developer_url\" content=\").+?(?=\">)").matcher(str);
                if (!matcher.find()) {
                    b.this.f4993a.b();
                    return;
                }
                b.this.f4993a.a(matcher.group());
            }
        });
    }
}
