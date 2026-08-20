package com.yandex.metrica.impl.ob;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C1489dg;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.fg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class CallableC1539fg implements Callable<C1489dg> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1564gg f14750a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC1539fg(C1564gg c1564gg) {
        this.f14750a = c1564gg;
    }

    @Override // java.util.concurrent.Callable
    public C1489dg call() throws Exception {
        Context context;
        Context context2;
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3;
        Cursor cursor4;
        Cursor cursor5;
        Uri parse = Uri.parse("content://com.huawei.appmarket.commondata/item/5");
        context = this.f14750a.f14802a;
        ContentResolver contentResolver = context.getContentResolver();
        C1564gg c1564gg = this.f14750a;
        context2 = c1564gg.f14802a;
        c1564gg.f14803b = contentResolver.query(parse, null, null, new String[]{context2.getPackageName()}, null);
        cursor = this.f14750a.f14803b;
        if (cursor != null) {
            cursor2 = this.f14750a.f14803b;
            if (cursor2.moveToFirst()) {
                cursor3 = this.f14750a.f14803b;
                String string = cursor3.getString(0);
                if (!TextUtils.isEmpty(string)) {
                    cursor4 = this.f14750a.f14803b;
                    long j = cursor4.getLong(1);
                    cursor5 = this.f14750a.f14803b;
                    return new C1489dg(string, j, cursor5.getLong(2), C1489dg.a.HMS);
                }
            }
        }
        return null;
    }
}
