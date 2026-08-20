package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ac.CrashpadHelper;
import java.util.Objects;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class A7 implements InterfaceC1654k7 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12620a;

    /* renamed from: b  reason: collision with root package name */
    private final A3 f12621b;

    /* renamed from: c  reason: collision with root package name */
    private C1994y7 f12622c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1719mm<Bundle> f12623d;

    /* renamed from: e  reason: collision with root package name */
    private final E7 f12624e;

    /* renamed from: f  reason: collision with root package name */
    private final I7 f12625f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC1744nm<Void, String> f12626g;

    /* loaded from: classes5.dex */
    class a implements InterfaceC1719mm<Bundle> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(Bundle bundle) {
            CrashpadHelper.setUpNativeUncaughtExceptionHandler(bundle);
        }
    }

    /* loaded from: classes5.dex */
    class b implements InterfaceC1744nm<Void, String> {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public String a(Void r1) {
            return CrashpadHelper.getLibraryVersion();
        }
    }

    public A7(Context context, A3 a3) {
        this(context, a3, new B0(), new a());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1654k7
    public String a() {
        return "appmetrica_native_crashes";
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1654k7
    public void a(String str, String str2, String str3) {
        C7 b2 = this.f12622c.b();
        if (b2 != null) {
            if (TextUtils.isEmpty(b2.f12742a) && b2.f12745d == null) {
                return;
            }
            this.f12625f.a(str3);
            String str4 = null;
            this.f12625f.b(this.f12626g.a(null));
            InterfaceC1719mm<Bundle> interfaceC1719mm = this.f12623d;
            String a2 = this.f12625f.a();
            Bundle bundle = new Bundle();
            E7 e7 = this.f12624e;
            A3 a3 = this.f12621b;
            e7.getClass();
            try {
                str4 = Base64.encodeToString(new JSONObject().put("arg_cd", new JSONObject().put("arg_ak", str).put("arg_pn", a3.f()).put("arg_pd", a3.g()).put("arg_ps", a3.h()).put("arg_rt", CounterConfiguration.b.MAIN.a())).toString().getBytes(), 0);
            } catch (Throwable unused) {
            }
            bundle.putString("arg_cd", str4);
            bundle.putString("arg_rc", a2);
            bundle.putString("arg_dd", str2);
            bundle.putString("arg_hp", b2.f12742a);
            bundle.putBoolean("arg_i64", b2.f12743b);
            bundle.putBoolean("arg_ul", b2.f12744c);
            bundle.putString("arg_sn", this.f12620a.getPackageName() + "-crashpad_new_crash_socket");
            if (b2.f12745d == null) {
                bundle.putBoolean("arg_ap", false);
            } else {
                bundle.putBoolean("arg_ap", true);
                Objects.requireNonNull(b2.f12745d);
                bundle.putString("arg_mc", "com.yandex.metrica.impl.ac.HandlerRunner");
                bundle.putString("arg_akp", b2.f12745d.f15369a);
                bundle.putString("arg_lp", b2.f12745d.f15370b);
                bundle.putString("arg_dp", b2.f12745d.f15371c);
            }
            interfaceC1719mm.b(bundle);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1654k7
    public void b() {
        CrashpadHelper.cancelSetUpNativeUncaughtExceptionHandler();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1654k7
    public String c() {
        return "appmetrica-native";
    }

    private A7(Context context, A3 a3, B0 b0, InterfaceC1719mm<Bundle> interfaceC1719mm) {
        this(context, a3, new C1994y7(context, b0, P.g().d().b()), interfaceC1719mm, new E7(), new I7(), new b());
    }

    A7(Context context, A3 a3, C1994y7 c1994y7, InterfaceC1719mm<Bundle> interfaceC1719mm, E7 e7, I7 i7, InterfaceC1744nm<Void, String> interfaceC1744nm) {
        this.f12620a = context;
        this.f12621b = a3;
        this.f12622c = c1994y7;
        this.f12623d = interfaceC1719mm;
        this.f12624e = e7;
        this.f12625f = i7;
        this.f12626g = interfaceC1744nm;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1654k7
    public void a(boolean z) {
        CrashpadHelper.logsEnabled(z);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1654k7
    public void a(String str) {
        this.f12625f.a(str);
        CrashpadHelper.updateRuntimeConfig(this.f12625f.a());
    }
}
