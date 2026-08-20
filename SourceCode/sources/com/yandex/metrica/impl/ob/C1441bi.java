package com.yandex.metrica.impl.ob;

import android.util.Pair;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.bi  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1441bi {

    /* renamed from: a  reason: collision with root package name */
    public final String f14483a;

    /* renamed from: b  reason: collision with root package name */
    public final String f14484b;

    /* renamed from: c  reason: collision with root package name */
    public final String f14485c;

    /* renamed from: d  reason: collision with root package name */
    public final List<Pair<String, String>> f14486d;

    /* renamed from: e  reason: collision with root package name */
    public final Long f14487e;

    /* renamed from: f  reason: collision with root package name */
    public final List<a> f14488f;

    /* renamed from: com.yandex.metrica.impl.ob.bi$a */
    /* loaded from: classes5.dex */
    public enum a {
        WIFI,
        CELL
    }

    public C1441bi(String str, String str2, String str3, List<Pair<String, String>> list, Long l, List<a> list2) {
        this.f14483a = str;
        this.f14484b = str2;
        this.f14485c = str3;
        this.f14486d = A2.c(list);
        this.f14487e = l;
        this.f14488f = list2;
    }
}
