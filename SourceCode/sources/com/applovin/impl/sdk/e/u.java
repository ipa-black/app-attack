package com.applovin.impl.sdk.e;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public abstract class u<T> extends a implements b.c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.network.c<T> f5764a;

    /* renamed from: e  reason: collision with root package name */
    private final b.c<T> f5765e;

    /* renamed from: f  reason: collision with root package name */
    protected b.a f5766f;

    /* renamed from: g  reason: collision with root package name */
    private o.a f5767g;

    /* renamed from: h  reason: collision with root package name */
    private com.applovin.impl.sdk.c.b<String> f5768h;
    private com.applovin.impl.sdk.c.b<String> i;

    public u(com.applovin.impl.sdk.network.c<T> cVar, com.applovin.impl.sdk.n nVar) {
        this(cVar, nVar, false);
    }

    public u(com.applovin.impl.sdk.network.c<T> cVar, final com.applovin.impl.sdk.n nVar, boolean z) {
        super("TaskRepeatRequest", nVar, z);
        this.f5767g = o.a.BACKGROUND;
        this.f5768h = null;
        this.i = null;
        if (cVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        this.f5764a = cVar;
        this.f5766f = new b.a();
        this.f5765e = new b.c<T>() { // from class: com.applovin.impl.sdk.e.u.1
            @Override // com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, T t) {
                u uVar;
                com.applovin.impl.sdk.c.b bVar;
                boolean z2 = false;
                boolean z3 = i < 200 || i >= 500;
                boolean z4 = i == 429;
                if (i != -1009 && (z3 || z4 || u.this.f5764a.m())) {
                    String f2 = u.this.f5764a.f();
                    if (u.this.f5764a.h() > 0) {
                        com.applovin.impl.sdk.v vVar = u.this.f5676d;
                        if (com.applovin.impl.sdk.v.a()) {
                            u.this.f5676d.d(u.this.f5675c, "Unable to send request due to server failure (code " + i + "). " + u.this.f5764a.h() + " attempts left, retrying in " + TimeUnit.MILLISECONDS.toSeconds(u.this.f5764a.k()) + " seconds...");
                        }
                        int h2 = u.this.f5764a.h() - 1;
                        u.this.f5764a.a(h2);
                        if (h2 == 0) {
                            u uVar2 = u.this;
                            uVar2.c(uVar2.f5768h);
                            if (StringUtils.isValidString(f2) && f2.length() >= 4) {
                                com.applovin.impl.sdk.v vVar2 = u.this.f5676d;
                                if (com.applovin.impl.sdk.v.a()) {
                                    u.this.f5676d.c(u.this.f5675c, "Switching to backup endpoint " + f2);
                                }
                                u.this.f5764a.a(f2);
                                z2 = true;
                            }
                        }
                        long millis = (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.dk)).booleanValue() && z2) ? 0L : u.this.f5764a.l() ? TimeUnit.SECONDS.toMillis((long) Math.pow(2.0d, u.this.f5764a.i())) : u.this.f5764a.k();
                        o V = nVar.V();
                        u uVar3 = u.this;
                        V.a(uVar3, uVar3.f5767g, millis);
                        return;
                    }
                    if (f2 == null || !f2.equals(u.this.f5764a.a())) {
                        uVar = u.this;
                        bVar = uVar.f5768h;
                    } else {
                        uVar = u.this;
                        bVar = uVar.i;
                    }
                    uVar.c(bVar);
                }
                u.this.a(i, str, t);
            }

            @Override // com.applovin.impl.sdk.network.b.c
            public void a(T t, int i) {
                u.this.f5764a.a(0);
                u.this.a((u) t, i);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <ST> void c(com.applovin.impl.sdk.c.b<ST> bVar) {
        if (bVar != null) {
            d().O().a((com.applovin.impl.sdk.c.b<?>) bVar, (Object) bVar.b());
        }
    }

    public abstract void a(int i, String str, T t);

    public void a(com.applovin.impl.sdk.c.b<String> bVar) {
        this.f5768h = bVar;
    }

    public void a(o.a aVar) {
        this.f5767g = aVar;
    }

    public abstract void a(T t, int i);

    public void b(com.applovin.impl.sdk.c.b<String> bVar) {
        this.i = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        com.applovin.impl.sdk.network.b U = d().U();
        if (!d().c() && !d().d()) {
            com.applovin.impl.sdk.v.i("AppLovinSdk", "AppLovin SDK is disabled");
            i = -22;
        } else if (StringUtils.isValidString(this.f5764a.a()) && this.f5764a.a().length() >= 4) {
            if (TextUtils.isEmpty(this.f5764a.b())) {
                this.f5764a.b(this.f5764a.e() != null ? ShareTarget.METHOD_POST : ShareTarget.METHOD_GET);
            }
            U.a(this.f5764a, this.f5766f, this.f5765e);
            return;
        } else {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.e(this.f5675c, "Task has an invalid or null request endpoint.");
            }
            i = AppLovinErrorCodes.INVALID_URL;
        }
        a(i, null, null);
    }
}
