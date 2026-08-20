package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.yandex.metrica.impl.ob.C1759oc;
import com.yandex.metrica.impl.ob.E;
/* renamed from: com.yandex.metrica.impl.ob.qe  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1810qe {
    public final byte[] A;

    /* renamed from: a  reason: collision with root package name */
    public final String f15502a;

    /* renamed from: b  reason: collision with root package name */
    public String f15503b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f15504c;

    /* renamed from: d  reason: collision with root package name */
    public final Integer f15505d;

    /* renamed from: e  reason: collision with root package name */
    public final Integer f15506e;

    /* renamed from: f  reason: collision with root package name */
    public final Long f15507f;

    /* renamed from: g  reason: collision with root package name */
    public final String f15508g;

    /* renamed from: h  reason: collision with root package name */
    public final String f15509h;
    public final String i;
    public final EnumC1399a1 j;
    public final Integer k;
    public final String l;
    public final String m;
    public final Integer n;
    public final Integer o;
    public final String p;
    public final String q;
    public final Em r;
    public final D0 s;
    public final E.b.a t;
    public final C1759oc.a u;
    public final Integer v;
    public final Integer w;
    public final EnumC1987y0 x;
    public final Boolean y;
    public final Integer z;

    public C1810qe(ContentValues contentValues) {
        Integer asInteger = contentValues.getAsInteger(SessionDescription.ATTR_TYPE);
        this.j = asInteger == null ? null : EnumC1399a1.a(asInteger.intValue());
        this.k = contentValues.getAsInteger("custom_type");
        this.f15502a = contentValues.getAsString("name");
        this.f15503b = contentValues.getAsString("value");
        this.f15507f = contentValues.getAsLong("time");
        this.f15504c = contentValues.getAsInteger("number");
        this.f15505d = contentValues.getAsInteger("global_number");
        this.f15506e = contentValues.getAsInteger("number_of_type");
        this.f15509h = contentValues.getAsString("cell_info");
        this.f15508g = contentValues.getAsString("location_info");
        this.i = contentValues.getAsString("wifi_network_info");
        this.l = contentValues.getAsString("error_environment");
        this.m = contentValues.getAsString("user_info");
        this.n = contentValues.getAsInteger("truncated");
        this.o = contentValues.getAsInteger("connection_type");
        this.p = contentValues.getAsString("cellular_connection_type");
        this.q = contentValues.getAsString("profile_id");
        this.r = Em.a(contentValues.getAsInteger("encrypting_mode"));
        this.s = D0.a(contentValues.getAsInteger("first_occurrence_status"));
        this.t = E.b.a.a(contentValues.getAsInteger("battery_charge_type"));
        this.u = C1759oc.a.a(contentValues.getAsString("collection_mode"));
        this.v = contentValues.getAsInteger("has_omitted_data");
        this.w = contentValues.getAsInteger("call_state");
        Integer asInteger2 = contentValues.getAsInteger("source");
        this.x = asInteger2 != null ? EnumC1987y0.a(asInteger2.intValue()) : null;
        this.y = contentValues.getAsBoolean("attribution_id_changed");
        this.z = contentValues.getAsInteger("open_id");
        this.A = contentValues.getAsByteArray("extras");
    }
}
