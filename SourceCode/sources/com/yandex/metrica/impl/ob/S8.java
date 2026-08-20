package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.yandex.metrica.impl.ob.E;
import java.sql.SQLException;
import java.util.Locale;
import org.json.JSONException;
/* loaded from: classes5.dex */
public class S8 extends AbstractC1655k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC1655k8
    public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, JSONException {
        Locale locale = Locale.US;
        sQLiteDatabase.execSQL(String.format(locale, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "battery_charge_type", Integer.valueOf(E.b.a.UNKNOWN.a())));
        sQLiteDatabase.execSQL(String.format(locale, "ALTER TABLE %s ADD COLUMN %s TEXT", "reports", "collection_mode"));
        sQLiteDatabase.execSQL(String.format(locale, "UPDATE %s SET %s = \"\" WHERE %s == %d AND %2$s != \"\" AND %2$s IS NOT NULL", "reports", "value", SessionDescription.ATTR_TYPE, Integer.valueOf(EnumC1399a1.EVENT_TYPE_START.b())));
    }
}
