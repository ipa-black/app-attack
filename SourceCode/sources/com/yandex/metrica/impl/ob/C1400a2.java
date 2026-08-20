package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C1918v3;
import java.util.HashMap;
/* renamed from: com.yandex.metrica.impl.ob.a2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1400a2 implements InterfaceC1425b2<C1918v3.a> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14388a;

    public C1400a2(Context context) {
        this.f14388a = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        Cursor cursor;
        C1918v3.a aVar = null;
        try {
            cursor = this.f14388a.getContentResolver().query(Uri.parse("content://com.yandex.preinstallsatellite.appmetrica.provider/clids"), null, null, null, null);
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            if (cursor != null) {
                HashMap hashMap = new HashMap();
                while (cursor.moveToNext()) {
                    try {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("clid_key"));
                        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("clid_value"));
                        if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                            hashMap.put(string, string2);
                        } else {
                            C1575h2.a("Invalid clid {%s : %s}", string, string2);
                        }
                    } catch (Throwable unused) {
                    }
                }
                C1575h2.a("Clids from satellite: %s", hashMap);
                C1918v3.a aVar2 = new C1918v3.a(hashMap, EnumC1891u0.SATELLITE);
                A2.a(cursor);
                aVar = aVar2;
            } else {
                C1575h2.a("No Satellite content provider found", new Object[0]);
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                C1575h2.a(th, "Error while getting satellite clids", new Object[0]);
                return aVar;
            } finally {
                A2.a(cursor);
            }
        }
        return aVar;
    }
}
