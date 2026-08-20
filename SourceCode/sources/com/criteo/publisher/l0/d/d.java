package com.criteo.publisher.l0.d;

import android.content.Context;
import android.preference.PreferenceManager;
import com.criteo.publisher.n0.q;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
/* compiled from: GdprDataFetcher.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final h f8940a;

    public d(Context context) {
        this(new h(new q(PreferenceManager.getDefaultSharedPreferences(context))));
    }

    d(h hVar) {
        this.f8940a = hVar;
    }

    public c a() {
        g a2 = this.f8940a.a();
        if (a2 == null) {
            return null;
        }
        String b2 = a2.b();
        return c.a(a2.c(), b2.isEmpty() ? null : Boolean.valueOf(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(b2)), a2.a());
    }
}
