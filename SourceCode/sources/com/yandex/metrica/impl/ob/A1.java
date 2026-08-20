package com.yandex.metrica.impl.ob;

import android.content.Intent;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class A1 implements B1 {

    /* renamed from: a  reason: collision with root package name */
    private final C1841rm<String, Integer> f12610a = new C1841rm<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<e, d> f12611b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<e, d> f12612c = new LinkedHashMap();

    /* loaded from: classes5.dex */
    class a implements d {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.A1.d
        public boolean a(Intent intent, A1 a1) {
            return A1.a(A1.this, intent);
        }
    }

    /* loaded from: classes5.dex */
    class b implements d {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.A1.d
        public boolean a(Intent intent, A1 a1) {
            return A1.this.e(intent);
        }
    }

    /* loaded from: classes5.dex */
    class c implements d {
        c() {
        }

        @Override // com.yandex.metrica.impl.ob.A1.d
        public boolean a(Intent intent, A1 a1) {
            return A1.this.e(intent) && A1.a(A1.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface d {
        boolean a(Intent intent, A1 a1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface e {
        void a(Intent intent);
    }

    private int d(Intent intent) {
        Uri data = intent.getData();
        if (data != null && data.getPath().equals("/client")) {
            try {
                return Integer.parseInt(data.getQueryParameter("pid"));
            } catch (Throwable unused) {
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(Intent intent) {
        if ("com.yandex.metrica.IMetricaService".equals(intent.getAction())) {
            return !(d(intent) == Process.myPid());
        }
        return false;
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.f12610a.a(action, Integer.valueOf(d(intent)));
            }
            a(intent, this.f12611b);
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void c(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.f12610a.a(action, Integer.valueOf(d(intent)));
            }
            a(intent, this.f12611b);
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.f12610a.b(action, Integer.valueOf(d(intent)));
            }
            a(intent, this.f12612c);
        }
    }

    private void a(Intent intent, Map<e, d> map) {
        for (Map.Entry<e, d> entry : map.entrySet()) {
            if (entry.getValue().a(intent, this)) {
                entry.getKey().a(intent);
            }
        }
    }

    public void c(e eVar) {
        this.f12611b.put(eVar, new b());
    }

    private int c() {
        Collection<Integer> a2 = this.f12610a.a("com.yandex.metrica.IMetricaService");
        int i = 0;
        if (!A2.b(a2)) {
            for (Integer num : a2) {
                if (num.intValue() != Process.myPid()) {
                    i++;
                }
            }
        }
        return i;
    }

    public void b(e eVar) {
        this.f12611b.put(eVar, new a());
    }

    public void a(e eVar) {
        this.f12612c.put(eVar, new c());
    }

    static boolean a(A1 a1, Intent intent) {
        return a1.e(intent) && a1.c() == 1;
    }

    static boolean a(A1 a1) {
        return a1.c() == 0;
    }
}
