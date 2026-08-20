package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.impl.ob.C1630j8;
import java.sql.SQLException;
/* renamed from: com.yandex.metrica.impl.ob.u8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1899u8 extends AbstractC1655k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC1655k8
    public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS device_id_info");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS api_level_info");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS preferences");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS startup");
        sQLiteDatabase.execSQL(C1630j8.a.b.f14979b);
        sQLiteDatabase.execSQL(C1630j8.a.InterfaceC0355a.f14977b);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS permissions");
    }
}
