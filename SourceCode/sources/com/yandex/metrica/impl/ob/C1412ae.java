package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ae  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1412ae implements InterfaceC1425b2<C1512ee> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14411a;

    public C1412ae(Context context) {
        this.f14411a = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: a */
    public C1512ee invoke() {
        Cursor cursor;
        JSONObject jSONObject;
        try {
            cursor = this.f14411a.getContentResolver().query(Uri.parse("content://com.yandex.preinstallsatellite.appmetrica.provider/preload_info"), null, null, null, null);
            try {
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("tracking_id"));
                        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("additional_parameters"));
                        JSONObject jSONObject2 = new JSONObject();
                        if (!TextUtils.isEmpty(string2)) {
                            jSONObject = new JSONObject(string2);
                            C1575h2.a("Preload info from Satellite: {tracking id = %s, additional parameters = %s}", string, jSONObject);
                            C1512ee c1512ee = new C1512ee(string, jSONObject, !TextUtils.isEmpty(string), false, EnumC1891u0.SATELLITE);
                            A2.a(cursor);
                            return c1512ee;
                        }
                        jSONObject = jSONObject2;
                        C1575h2.a("Preload info from Satellite: {tracking id = %s, additional parameters = %s}", string, jSONObject);
                        C1512ee c1512ee2 = new C1512ee(string, jSONObject, !TextUtils.isEmpty(string), false, EnumC1891u0.SATELLITE);
                        A2.a(cursor);
                        return c1512ee2;
                    }
                    C1575h2.a("No Preload Info data in Satellite content provider", new Object[0]);
                } else {
                    C1575h2.a("No Satellite content provider found", new Object[0]);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            cursor = null;
        }
        A2.a(cursor);
        return null;
    }
}
