package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Tl;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Mi {

    /* renamed from: a  reason: collision with root package name */
    private final C1635jd f13507a;

    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function1<Map.Entry<? extends String, ? extends C1586hd>, Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Tl.a f13508a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Tl.a aVar) {
            super(1);
            this.f13508a = aVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Map.Entry<? extends String, ? extends C1586hd> entry) {
            return entry.getValue().parse((JSONObject) this.f13508a);
        }
    }

    public Mi() {
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        C1635jd j = g2.j();
        Intrinsics.checkNotNullExpressionValue(j, "GlobalServiceLocator.get…tance().modulesController");
        this.f13507a = j;
    }

    public final void a(Ui ui, Tl.a aVar) {
        Map<String, C1586hd> c2 = this.f13507a.c();
        a aVar2 = new a(aVar);
        Map<String, Object> linkedHashMap = new LinkedHashMap<>();
        for (Map.Entry<String, C1586hd> entry : c2.entrySet()) {
            Object invoke = aVar2.invoke(entry);
            if (invoke != null) {
                linkedHashMap.put(entry.getKey(), invoke);
            }
        }
        ui.b(linkedHashMap);
    }
}
