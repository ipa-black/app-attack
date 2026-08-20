package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Ud;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Td implements InterfaceC2013z2<Ud.a, C1512ee> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13952a;

    public Td(Ud ud) {
        boolean z;
        List<Ud.a> list = ud.f14031b;
        Intrinsics.checkNotNullExpressionValue(list, "stateFromDisk.candidates");
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (Ud.a aVar : list) {
                if (aVar.f14034c == EnumC1891u0.APP) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        this.f13952a = z;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: a */
    public List<Ud.a> invoke(List<? extends Ud.a> list, C1512ee c1512ee) {
        Ud.a aVar = new Ud.a(c1512ee.f14676a, c1512ee.f14677b, c1512ee.f14680e);
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (Ud.a aVar2 : list) {
                if (aVar2.f14034c == c1512ee.f14680e) {
                    if (aVar.f14034c == EnumC1891u0.APP && this.f13952a) {
                        return CollectionsKt.plus((Collection<? extends Ud.a>) list, aVar);
                    }
                    return null;
                }
            }
        }
        return CollectionsKt.plus((Collection<? extends Ud.a>) list, aVar);
    }
}
