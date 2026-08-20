package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.sql.SQLException;
import java.util.Locale;
import org.json.JSONException;
/* loaded from: classes5.dex */
public class M8 extends AbstractC1655k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC1655k8
    public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, JSONException {
        Locale locale = Locale.US;
        sQLiteDatabase.execSQL(String.format(locale, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "encrypting_mode", Integer.valueOf(Em.NONE.a())));
        sQLiteDatabase.execSQL(String.format(locale, "UPDATE %s SET %s = %d where %s=%d", "reports", "encrypting_mode", Integer.valueOf(Em.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER.a()), SessionDescription.ATTR_TYPE, Integer.valueOf(EnumC1399a1.EVENT_TYPE_IDENTITY.b())));
        sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN profile_id TEXT ");
    }
}
