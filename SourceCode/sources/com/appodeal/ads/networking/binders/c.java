package com.appodeal.ads.networking.binders;

import java.util.Set;
import kotlin.collections.SetsKt;
/* loaded from: classes2.dex */
public enum c {
    AdRequest,
    Services,
    Adapters,
    /* JADX INFO: Fake field, exist only in values array */
    Advertising,
    /* JADX INFO: Fake field, exist only in values array */
    Connection,
    /* JADX INFO: Fake field, exist only in values array */
    Location,
    /* JADX INFO: Fake field, exist only in values array */
    User,
    /* JADX INFO: Fake field, exist only in values array */
    Segment,
    ServicesData,
    /* JADX INFO: Fake field, exist only in values array */
    Session,
    Sessions,
    AdStat,
    Get,
    /* JADX INFO: Fake field, exist only in values array */
    Base;
    

    /* renamed from: a  reason: collision with root package name */
    public static final Set<c> f7212a;

    /* loaded from: classes2.dex */
    public static final class a {
        public static Set a() {
            return c.f7212a;
        }
    }

    static {
        c cVar;
        c cVar2;
        c cVar3;
        c cVar4;
        c cVar5;
        c cVar6;
        c cVar7;
        f7212a = SetsKt.setOf((Object[]) new c[]{cVar7, cVar, cVar2, cVar3, cVar4, cVar5, ServicesData, cVar6});
    }
}
