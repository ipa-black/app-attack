package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.Closeable;
/* loaded from: classes5.dex */
public class O7 extends SQLiteOpenHelper implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final String f13573a;

    /* renamed from: b  reason: collision with root package name */
    private final C1470cm f13574b;

    /* renamed from: c  reason: collision with root package name */
    protected final X7 f13575c;

    public O7(Context context, String str, X7 x7) {
        this(context, str, x7, Ul.a());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getReadableDatabase() {
        try {
            return super.getReadableDatabase();
        } catch (Throwable th) {
            this.f13574b.forceE(th, "", new Object[0]);
            this.f13574b.forceW("Could not get readable database %s due to an exception. AppMetrica SDK may behave unexpectedly.", this.f13573a);
            ((C1739nh) C1764oh.a()).reportError("db_read_error", th);
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (Throwable th) {
            this.f13574b.forceE(th, "", new Object[0]);
            this.f13574b.forceW("Could not get writable database %s due to an exception. AppMetrica SDK may behave unexpectedly.", this.f13573a);
            ((C1739nh) C1764oh.a()).reportError("db_write_error", th);
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f13575c.a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f13575c.a(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        this.f13575c.b(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f13575c.b(sQLiteDatabase, i, i2);
    }

    O7(Context context, String str, X7 x7, C1470cm c1470cm) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, C1630j8.f14971a);
        this.f13575c = x7;
        this.f13573a = str;
        this.f13574b = c1470cm;
    }
}
