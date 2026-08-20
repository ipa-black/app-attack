package com.yandex.metrica;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.yandex.metrica.impl.ob.C1575h2;
import com.yandex.metrica.impl.ob.C1870t3;
import com.yandex.metrica.impl.ob.C1894u3;
import com.yandex.metrica.impl.ob.E0;
import com.yandex.metrica.impl.ob.Xd;
import com.yandex.metrica.impl.ob.Y;
import com.yandex.metrica.impl.ob.Yd;
import com.yandex.metrica.impl.ob.Z;
/* loaded from: classes3.dex */
public class PreloadInfoContentProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private boolean f12316a = false;

    /* renamed from: b  reason: collision with root package name */
    private final UriMatcher f12317b = new UriMatcher(-1);

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        C1575h2.b("Deleting is not supported", new Object[0]);
        return -1;
    }

    public synchronized void disable() {
        this.f12316a = true;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        synchronized (this) {
            if (this.f12316a) {
                return null;
            }
            if (contentValues != null) {
                int match = this.f12317b.match(uri);
                if (match == 1) {
                    Z z = new Z(new Xd(), new Yd(), new E0(), "preload info");
                    Context context = getContext();
                    Context applicationContext = context == null ? null : context.getApplicationContext();
                    if (applicationContext != null) {
                        z.a(applicationContext, contentValues);
                    }
                } else if (match != 2) {
                    C1575h2.b("Bad content provider uri: %s", uri);
                } else {
                    Z z2 = new Z(new C1870t3(), new C1894u3(), new E0(), "clids");
                    Context context2 = getContext();
                    Context applicationContext2 = context2 == null ? null : context2.getApplicationContext();
                    if (applicationContext2 != null) {
                        z2.a(applicationContext2, contentValues);
                    }
                }
            }
            Y.a();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context applicationContext;
        Context context = getContext();
        String str = ((context == null ? null : context.getApplicationContext()) != null ? applicationContext.getPackageName() : "") + ".appmetrica.preloadinfo.retail";
        this.f12317b.addURI(str, "preloadinfo", 1);
        this.f12317b.addURI(str, "clids", 2);
        Y.a(this);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        C1575h2.b("Query is not supported", new Object[0]);
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        C1575h2.b("Updating is not supported", new Object[0]);
        return -1;
    }
}
