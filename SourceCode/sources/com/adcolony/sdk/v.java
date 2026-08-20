package com.adcolony.sdk;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.adcolony.sdk.e0;
import com.adcolony.sdk.n0;
import com.adcolony.sdk.o;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v {

    /* renamed from: f  reason: collision with root package name */
    private static v f585f;

    /* renamed from: b  reason: collision with root package name */
    private SQLiteDatabase f587b;

    /* renamed from: d  reason: collision with root package name */
    private c f589d;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f586a = Executors.newSingleThreadExecutor();

    /* renamed from: c  reason: collision with root package name */
    private boolean f588c = false;

    /* renamed from: e  reason: collision with root package name */
    private Set<String> f590e = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f1 f591a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ x f592b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f593c;

        a(f1 f1Var, x xVar, Context context) {
            this.f591a = f1Var;
            this.f592b = xVar;
            this.f593c = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            n0 a2 = n0.a(this.f591a);
            if (a2 != null) {
                v.this.a(a2, this.f592b, this.f593c);
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f595a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ContentValues f596b;

        b(String str, ContentValues contentValues) {
            this.f595a = str;
            this.f596b = contentValues;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.b(this.f595a, this.f596b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface c {
        void a();
    }

    v() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f590e.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(String str, ContentValues contentValues) {
        p.a(str, contentValues, this.f587b);
    }

    public static v a() {
        if (f585f == null) {
            synchronized (v.class) {
                if (f585f == null) {
                    f585f = new v();
                }
            }
        }
        return f585f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        this.f589d = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f1 f1Var, x<n0> xVar) {
        Context applicationContext = com.adcolony.sdk.a.c() ? com.adcolony.sdk.a.a().getApplicationContext() : null;
        if (applicationContext == null || f1Var == null) {
            return;
        }
        try {
            this.f586a.execute(new a(f1Var, xVar, applicationContext));
        } catch (RejectedExecutionException e2) {
            new e0.a().a("ADCEventsRepository.open failed with: " + e2.toString()).a(e0.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(n0 n0Var, x<n0> xVar, Context context) {
        try {
            SQLiteDatabase sQLiteDatabase = this.f587b;
            boolean z = false;
            if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                this.f587b = context.openOrCreateDatabase("adc_events_db", 0, null);
            }
            if (this.f587b.needUpgrade(n0Var.b())) {
                if (a(n0Var) && this.f589d != null) {
                    z = true;
                }
                this.f588c = z;
                if (z) {
                    this.f589d.a();
                }
            } else {
                this.f588c = true;
            }
            if (this.f588c) {
                xVar.a(n0Var);
            }
        } catch (SQLiteException e2) {
            new e0.a().a("Database cannot be opened").a(e2.toString()).a(e0.f296g);
        }
    }

    private boolean a(n0 n0Var) {
        return new n(this.f587b, n0Var).b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(n0.a aVar, ContentValues contentValues) {
        String str;
        long j;
        if (aVar == null || this.f590e.contains(aVar.f())) {
            return;
        }
        this.f590e.add(aVar.f());
        int c2 = aVar.c();
        n0.d g2 = aVar.g();
        if (g2 != null) {
            j = contentValues.getAsLong(g2.a()).longValue() - g2.b();
            str = g2.a();
        } else {
            str = null;
            j = -1;
        }
        p.a(c2, j, str, aVar.f(), this.f587b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, ContentValues contentValues) {
        if (this.f588c) {
            try {
                this.f586a.execute(new b(str, contentValues));
            } catch (RejectedExecutionException e2) {
                new e0.a().a("ADCEventsRepository.saveEvent failed with: " + e2.toString()).a(e0.i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o.b a(n0 n0Var, long j) {
        if (this.f588c) {
            return o.a(n0Var, this.f587b, this.f586a, j);
        }
        return null;
    }
}
