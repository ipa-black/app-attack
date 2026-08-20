package com.bykv.vk.openvk.preload.geckox.c;

import com.bykv.vk.openvk.preload.a.b.a.n;
import com.bykv.vk.openvk.preload.a.f;
import com.bykv.vk.openvk.preload.a.g;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
/* compiled from: GsonUtil.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f8503b = new b();

    /* renamed from: a  reason: collision with root package name */
    public f f8504a;

    private b() {
        com.bykv.vk.openvk.preload.a.a aVar;
        com.bykv.vk.openvk.preload.a.a aVar2;
        com.bykv.vk.openvk.preload.a.a aVar3;
        g gVar = new g();
        gVar.a(Boolean.class, new a());
        gVar.a(Boolean.TYPE, new a());
        ArrayList arrayList = new ArrayList(gVar.f8388e.size() + gVar.f8389f.size() + 3);
        arrayList.addAll(gVar.f8388e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(gVar.f8389f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        String str = gVar.f8391h;
        int i = gVar.i;
        int i2 = gVar.j;
        if (str == null || "".equals(str.trim())) {
            if (i != 2 && i2 != 2) {
                com.bykv.vk.openvk.preload.a.a aVar4 = new com.bykv.vk.openvk.preload.a.a(Date.class, i, i2);
                com.bykv.vk.openvk.preload.a.a aVar5 = new com.bykv.vk.openvk.preload.a.a(Timestamp.class, i, i2);
                com.bykv.vk.openvk.preload.a.a aVar6 = new com.bykv.vk.openvk.preload.a.a(java.sql.Date.class, i, i2);
                aVar = aVar4;
                aVar2 = aVar5;
                aVar3 = aVar6;
            }
            this.f8504a = new f(gVar.f8384a, gVar.f8386c, gVar.f8387d, gVar.f8390g, gVar.k, gVar.o, gVar.m, gVar.n, gVar.p, gVar.l, gVar.f8385b, gVar.f8391h, gVar.i, gVar.j, gVar.f8388e, gVar.f8389f, arrayList);
        }
        aVar = new com.bykv.vk.openvk.preload.a.a(Date.class, str);
        aVar2 = new com.bykv.vk.openvk.preload.a.a(Timestamp.class, str);
        aVar3 = new com.bykv.vk.openvk.preload.a.a(java.sql.Date.class, str);
        arrayList.add(n.a(Date.class, aVar));
        arrayList.add(n.a(Timestamp.class, aVar2));
        arrayList.add(n.a(java.sql.Date.class, aVar3));
        this.f8504a = new f(gVar.f8384a, gVar.f8386c, gVar.f8387d, gVar.f8390g, gVar.k, gVar.o, gVar.m, gVar.n, gVar.p, gVar.l, gVar.f8385b, gVar.f8391h, gVar.i, gVar.j, gVar.f8388e, gVar.f8389f, arrayList);
    }

    public static b a() {
        return f8503b;
    }
}
