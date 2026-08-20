package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.impl.ob.C1811qf;
import java.sql.SQLException;
import java.util.Locale;
import org.json.JSONException;
/* loaded from: classes5.dex */
public class X8 extends AbstractC1655k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC1655k8
    public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, JSONException {
        sQLiteDatabase.execSQL(String.format(Locale.US, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "open_id", Long.valueOf(new C1811qf.d.a().w)));
    }
}
