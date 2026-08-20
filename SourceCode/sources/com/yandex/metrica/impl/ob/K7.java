package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import com.yandex.metrica.CounterConfiguration;
import java.util.List;
/* loaded from: classes5.dex */
public class K7 {

    /* renamed from: a  reason: collision with root package name */
    private final CounterConfiguration.b f13352a;

    /* renamed from: b  reason: collision with root package name */
    private final C1624j2 f13353b;

    /* loaded from: classes5.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<ContentValues> f13354a;

        /* renamed from: b  reason: collision with root package name */
        public final int f13355b;

        a(List<ContentValues> list, int i) {
            this.f13354a = list;
            this.f13355b = i;
        }
    }

    /* loaded from: classes5.dex */
    public enum b {
        BAD_REQUEST("bad_request"),
        DB_OVERFLOW("db_overflow");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f13359a;

        b(String str) {
            this.f13359a = str;
        }
    }

    public K7(CounterConfiguration.b bVar) {
        this(bVar, F0.g().p());
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.yandex.metrica.impl.ob.K7.a a(android.database.sqlite.SQLiteDatabase r18, java.lang.String r19, java.lang.String r20, com.yandex.metrica.impl.ob.K7.b r21, java.lang.String r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.K7.a(android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, com.yandex.metrica.impl.ob.K7$b, java.lang.String, boolean):com.yandex.metrica.impl.ob.K7$a");
    }

    K7(CounterConfiguration.b bVar, C1624j2 c1624j2) {
        this.f13352a = bVar;
        this.f13353b = c1624j2;
    }
}
