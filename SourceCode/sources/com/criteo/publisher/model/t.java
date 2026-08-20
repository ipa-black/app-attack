package com.criteo.publisher.model;

import android.content.SharedPreferences;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.criteo.publisher.logging.RemoteLogRecords;
import com.google.android.exoplayer2.C;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
/* compiled from: Config.java */
/* loaded from: classes2.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f9174a;

    /* renamed from: b  reason: collision with root package name */
    private volatile y f9175b;

    /* renamed from: c  reason: collision with root package name */
    private final SharedPreferences f9176c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.n0.l f9177d;

    /* compiled from: Config.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final RemoteLogRecords.RemoteLogLevel f9178a = RemoteLogRecords.RemoteLogLevel.WARNING;
    }

    public t() {
        this.f9174a = com.criteo.publisher.logging.h.b(getClass());
        this.f9176c = null;
        this.f9177d = null;
        this.f9175b = y.a();
    }

    public t(SharedPreferences sharedPreferences, com.criteo.publisher.n0.l lVar) {
        this.f9174a = com.criteo.publisher.logging.h.b(getClass());
        this.f9176c = sharedPreferences;
        this.f9177d = lVar;
        this.f9175b = k();
    }

    private y k() {
        y a2 = y.a();
        SharedPreferences sharedPreferences = this.f9176c;
        if (sharedPreferences != null && this.f9177d != null) {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(new com.criteo.publisher.n0.q(sharedPreferences).a("CriteoCachedConfig", JsonUtils.EMPTY_JSON).getBytes(Charset.forName(C.UTF8_NAME)));
                y yVar = (y) this.f9177d.a(y.class, byteArrayInputStream);
                byteArrayInputStream.close();
                return a(a2, yVar);
            } catch (IOException e2) {
                this.f9174a.a("Couldn't read cached values", e2);
            }
        }
        return a2;
    }

    private y a(y yVar, y yVar2) {
        return y.a((Boolean) com.criteo.publisher.n0.n.a(yVar2.g(), yVar.g()), (String) com.criteo.publisher.n0.n.a(yVar2.e(), yVar.e()), (String) com.criteo.publisher.n0.n.a(yVar2.d(), yVar.d()), (String) com.criteo.publisher.n0.n.a(yVar2.b(), yVar.b()), (String) com.criteo.publisher.n0.n.a(yVar2.c(), yVar.c()), (Boolean) com.criteo.publisher.n0.n.a(yVar2.f(), yVar.f()), (Boolean) com.criteo.publisher.n0.n.a(yVar2.h(), yVar.h()), (Integer) com.criteo.publisher.n0.n.a(yVar2.i(), yVar.i()), (Boolean) com.criteo.publisher.n0.n.a(yVar2.j(), yVar.j()), (RemoteLogRecords.RemoteLogLevel) com.criteo.publisher.n0.n.a(yVar2.k(), yVar.k()));
    }

    public void b(y yVar) {
        this.f9175b = a(this.f9175b, yVar);
        a(this.f9175b);
    }

    private void a(y yVar) {
        if (this.f9176c == null || this.f9177d == null) {
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f9177d.a(yVar, byteArrayOutputStream);
            String str = new String(byteArrayOutputStream.toByteArray(), Charset.forName(C.UTF8_NAME));
            byteArrayOutputStream.close();
            SharedPreferences.Editor edit = this.f9176c.edit();
            edit.putString("CriteoCachedConfig", str);
            edit.apply();
        } catch (Exception e2) {
            this.f9174a.a("Couldn't persist values", e2);
        }
    }

    public boolean h() {
        return ((Boolean) com.criteo.publisher.n0.n.a(this.f9175b.g(), false)).booleanValue();
    }

    public boolean g() {
        return ((Boolean) com.criteo.publisher.n0.n.a(this.f9175b.f(), true)).booleanValue();
    }

    public boolean i() {
        return ((Boolean) com.criteo.publisher.n0.n.a(this.f9175b.h(), false)).booleanValue();
    }

    public int e() {
        return ((Integer) com.criteo.publisher.n0.n.a(this.f9175b.i(), 8000)).intValue();
    }

    public boolean j() {
        return ((Boolean) com.criteo.publisher.n0.n.a(this.f9175b.j(), true)).booleanValue();
    }

    public String d() {
        return (String) com.criteo.publisher.n0.n.a(this.f9175b.e(), "%%displayUrl%%");
    }

    public String c() {
        return (String) com.criteo.publisher.n0.n.a(this.f9175b.d(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script src=\"%%displayUrl%%\"></script></body></html>");
    }

    public String a() {
        return (String) com.criteo.publisher.n0.n.a(this.f9175b.b(), "%%adTagData%%");
    }

    public String b() {
        return (String) com.criteo.publisher.n0.n.a(this.f9175b.c(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script>%%adTagData%%</script></body></html>");
    }

    public RemoteLogRecords.RemoteLogLevel f() {
        return (RemoteLogRecords.RemoteLogLevel) com.criteo.publisher.n0.n.a(this.f9175b.k(), a.f9178a);
    }
}
