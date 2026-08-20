package com.apm.insight.e;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.apm.insight.i;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f802a;

    /* renamed from: b  reason: collision with root package name */
    private com.apm.insight.e.b.b f803b;

    /* renamed from: c  reason: collision with root package name */
    private SQLiteDatabase f804c;

    private a() {
    }

    public static a a() {
        if (f802a == null) {
            synchronized (a.class) {
                if (f802a == null) {
                    f802a = new a();
                }
            }
        }
        return f802a;
    }

    private void b() {
        if (this.f803b == null) {
            a(i.g());
        }
    }

    public synchronized void a(Context context) {
        try {
            this.f804c = new b(context).getWritableDatabase();
            this.f803b = new com.apm.insight.e.b.b();
        }
    }

    public synchronized void a(com.apm.insight.e.a.a aVar) {
        b();
        com.apm.insight.e.b.b bVar = this.f803b;
        if (bVar != null) {
            bVar.a(this.f804c, aVar);
        }
    }

    public synchronized boolean a(String str) {
        b();
        com.apm.insight.e.b.b bVar = this.f803b;
        if (bVar != null) {
            return bVar.a(this.f804c, str);
        }
        return false;
    }
}
