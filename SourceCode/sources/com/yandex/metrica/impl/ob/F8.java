package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import java.sql.SQLException;
/* loaded from: classes5.dex */
public class F8 extends AbstractC1655k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC1655k8
    public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN environment TEXT ");
        sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN user_info TEXT ");
        StringBuilder sb = new StringBuilder("ALTER TABLE reports ADD COLUMN session_type INTEGER DEFAULT ");
        EnumC1529f6 enumC1529f6 = EnumC1529f6.FOREGROUND;
        sb.append(enumC1529f6.a());
        sQLiteDatabase.execSQL(sb.toString());
        StringBuilder sb2 = new StringBuilder("UPDATE reports SET session_type = ");
        EnumC1529f6 enumC1529f62 = EnumC1529f6.BACKGROUND;
        sb2.append(enumC1529f62.a());
        sb2.append(" WHERE session_id = -2");
        sQLiteDatabase.execSQL(sb2.toString());
        sQLiteDatabase.execSQL("ALTER TABLE sessions ADD COLUMN server_time_offset INTEGER ");
        sQLiteDatabase.execSQL("ALTER TABLE sessions ADD COLUMN type INTEGER DEFAULT " + enumC1529f6.a());
        sQLiteDatabase.execSQL("UPDATE sessions SET type = " + enumC1529f62.a() + " WHERE id = -2");
    }
}
