package com.yandex.metrica.impl.ob;

import android.content.Intent;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class E {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f12825a;

    /* renamed from: b  reason: collision with root package name */
    private volatile b f12826b;

    /* renamed from: c  reason: collision with root package name */
    private final List<c> f12827c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1719mm<Intent> f12828d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements InterfaceC1719mm<Intent> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(Intent intent) {
            Intent intent2 = intent;
            b bVar = E.this.f12826b;
            b.a aVar = bVar == null ? null : bVar.f12831b;
            b a2 = E.this.a(intent2);
            E.this.f12826b = a2;
            if (aVar != a2.f12831b) {
                E.this.f12825a.execute(new D(this, a2));
            }
        }
    }

    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Integer f12830a;

        /* renamed from: b  reason: collision with root package name */
        public final a f12831b;

        /* loaded from: classes5.dex */
        public enum a {
            UNKNOWN(-1),
            NONE(0),
            USB(1),
            WIRELESS(2),
            AC(3);
            

            /* renamed from: a  reason: collision with root package name */
            private final int f12838a;

            a(int i) {
                this.f12838a = i;
            }

            public int a() {
                return this.f12838a;
            }

            public static a a(Integer num) {
                if (num != null) {
                    a[] values = values();
                    for (int i = 0; i < 5; i++) {
                        a aVar = values[i];
                        if (aVar.f12838a == num.intValue()) {
                            return aVar;
                        }
                    }
                }
                return UNKNOWN;
            }
        }

        public b(Integer num, a aVar) {
            this.f12830a = num;
            this.f12831b = aVar;
        }
    }

    /* loaded from: classes5.dex */
    public interface c {
        void a(b.a aVar);
    }

    public E(ICommonExecutor iCommonExecutor, C c2) {
        a aVar = new a();
        this.f12828d = aVar;
        this.f12825a = iCommonExecutor;
        this.f12826b = a(c2.c(aVar));
    }

    public b.a b() {
        b bVar = this.f12826b;
        return bVar == null ? b.a.UNKNOWN : bVar.f12831b;
    }

    public Integer a() {
        b bVar = this.f12826b;
        if (bVar == null) {
            return null;
        }
        return bVar.f12830a;
    }

    public synchronized void a(c cVar) {
        this.f12827c.add(cVar);
        ((C1808qc) cVar).a(b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(E e2, b.a aVar) {
        synchronized (e2) {
            for (c cVar : e2.f12827c) {
                cVar.a(aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b a(Intent intent) {
        b.a aVar = b.a.UNKNOWN;
        Integer num = null;
        if (intent != null) {
            int intExtra = intent.getIntExtra("level", -1);
            int intExtra2 = intent.getIntExtra("scale", -1);
            if (intExtra > 0 && intExtra2 > 0) {
                num = Integer.valueOf((intExtra * 100) / intExtra2);
            }
            int intExtra3 = intent.getIntExtra("plugged", -1);
            aVar = b.a.NONE;
            if (intExtra3 == 1) {
                aVar = b.a.AC;
            } else if (intExtra3 == 2) {
                aVar = b.a.USB;
            } else if (intExtra3 == 4) {
                aVar = b.a.WIRELESS;
            }
        }
        return new b(num, aVar);
    }
}
