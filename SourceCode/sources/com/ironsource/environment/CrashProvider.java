package com.ironsource.environment;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
/* loaded from: classes3.dex */
public class CrashProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private Context f10524a;

    /* renamed from: b  reason: collision with root package name */
    private f f10525b;

    /* renamed from: c  reason: collision with root package name */
    private String f10526c;

    /* renamed from: e  reason: collision with root package name */
    private Uri f10528e;

    /* renamed from: h  reason: collision with root package name */
    private String f10531h;
    private String i;

    /* renamed from: d  reason: collision with root package name */
    private UriMatcher f10527d = new UriMatcher(-1);

    /* renamed from: f  reason: collision with root package name */
    private int f10529f = 1;

    /* renamed from: g  reason: collision with root package name */
    private int f10530g = 2;
    private String j = "REPORTS";

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        int match = this.f10527d.match(uri);
        if (match != 1) {
            if (match == 2) {
                return this.i;
            }
            throw new IllegalArgumentException("Invalid URI: " + uri);
        }
        return this.f10531h;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f10524a = getContext();
        this.f10525b = new f(this.f10524a);
        this.f10526c = this.f10524a.getPackageName();
        this.f10528e = Uri.parse("content://" + this.f10526c + "/REPORTS");
        this.f10531h = "vnd.android.cursor.dir/CrashReporter.Reports";
        this.i = "vnd.android.cursor.item/CrashReporter/Reports";
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int match = this.f10527d.match(uri);
        if (match != 1) {
            if (match == 2) {
                return f.a(Integer.parseInt(uri.getLastPathSegment()));
            }
            throw new IllegalArgumentException("Invalid URI: " + uri);
        }
        return f.b();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
