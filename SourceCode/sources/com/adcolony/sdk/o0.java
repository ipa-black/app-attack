package com.adcolony.sdk;

import android.content.ContentValues;
import com.adcolony.sdk.e0;
import com.adcolony.sdk.n0;
import com.adcolony.sdk.o;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o0 {

    /* renamed from: e  reason: collision with root package name */
    private static o0 f461e;

    /* renamed from: a  reason: collision with root package name */
    private n0 f462a;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f463b = z0.h();

    /* renamed from: c  reason: collision with root package name */
    private o.b f464c = null;

    /* renamed from: d  reason: collision with root package name */
    private boolean f465d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements x<o.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ o.b[] f466a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CountDownLatch f467b;

        a(o0 o0Var, o.b[] bVarArr, CountDownLatch countDownLatch) {
            this.f466a = bVarArr;
            this.f467b = countDownLatch;
        }

        @Override // com.adcolony.sdk.x
        public void a(o.b bVar) {
            this.f466a[0] = bVar;
            this.f467b.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements x<o.b> {
        b(o0 o0Var) {
        }

        @Override // com.adcolony.sdk.x
        public void a(o.b bVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ x f468a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f469b;

        c(x xVar, long j) {
            this.f468a = xVar;
            this.f469b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f468a.a(o0.this.f465d ? o0.this.f464c : v.a().a(o0.this.f462a, this.f469b));
        }
    }

    o0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f465d = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o0 c() {
        if (f461e == null) {
            synchronized (o0.class) {
                if (f461e == null) {
                    f461e = new o0();
                }
            }
        }
        return f461e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(n0 n0Var) {
        this.f462a = n0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o.b b() {
        return this.f464c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(h0 h0Var) {
        f1 a2;
        f1 n;
        String p;
        n0.a a3;
        if (this.f462a == null || (a2 = h0Var.a()) == null || (n = a2.n("payload")) == null || (a3 = this.f462a.a((p = n.p("request_type")))) == null) {
            return;
        }
        a(p, n, a3);
    }

    private void a(String str, f1 f1Var, n0.a aVar) {
        try {
            ContentValues a2 = a(f1Var, aVar);
            v.a().a(aVar.f(), a2);
            v.a().a(aVar, a2);
            d();
        } catch (NullPointerException | NumberFormatException e2) {
            e2.printStackTrace();
            new e0.a().a("Error parsing event:" + str + " ").a(f1Var.toString()).a("Schema version: " + this.f462a.b() + " ").a(" e: ").a(e2.toString()).a(e0.f296g);
        }
    }

    static ContentValues a(f1 f1Var, n0.a aVar) throws NumberFormatException, NullPointerException {
        ContentValues contentValues = new ContentValues();
        for (n0.b bVar : aVar.a()) {
            Object o = f1Var.o(bVar.b());
            if (o != null) {
                if (o instanceof Boolean) {
                    contentValues.put(bVar.b(), (Boolean) o);
                } else if (o instanceof Long) {
                    contentValues.put(bVar.b(), (Long) o);
                } else if (o instanceof Double) {
                    contentValues.put(bVar.b(), (Double) o);
                } else if (o instanceof Number) {
                    Number number = (Number) o;
                    if (number.doubleValue() == number.longValue() && "INTEGER".equalsIgnoreCase(bVar.c())) {
                        contentValues.put(bVar.b(), Long.valueOf(number.longValue()));
                    } else {
                        contentValues.put(bVar.b(), Double.valueOf(number.doubleValue()));
                    }
                } else if (o instanceof String) {
                    contentValues.put(bVar.b(), (String) o);
                }
            }
        }
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o.b a(long j) {
        o.b[] bVarArr = new o.b[1];
        CountDownLatch countDownLatch = new CountDownLatch(1);
        a(new a(this, bVarArr, countDownLatch), j);
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
        }
        return bVarArr[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        a(new b(this));
    }

    void a(x<o.b> xVar) {
        a(xVar, -1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(x<o.b> xVar, long j) {
        if (this.f462a == null) {
            xVar.a(null);
        } else if (this.f465d) {
            xVar.a(this.f464c);
        } else if (z0.a(this.f463b, new c(xVar, j))) {
        } else {
            new e0.a().a("Execute ADCOdtEventsListener.calculateFeatureVectors failed").a(e0.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(o.b bVar) {
        this.f464c = bVar;
        this.f465d = true;
    }
}
