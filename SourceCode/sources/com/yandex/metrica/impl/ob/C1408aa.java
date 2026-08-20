package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1909ui;
import com.yandex.metrica.impl.ob.If;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.aa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1408aa implements ProtobufConverter<C1909ui, If.t> {

    /* renamed from: a  reason: collision with root package name */
    private static final EnumMap<C1909ui.b, String> f14403a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, C1909ui.b> f14404b;

    static {
        EnumMap<C1909ui.b, String> enumMap = new EnumMap<>(C1909ui.b.class);
        f14403a = enumMap;
        HashMap hashMap = new HashMap();
        f14404b = hashMap;
        C1909ui.b bVar = C1909ui.b.WIFI;
        enumMap.put((EnumMap<C1909ui.b, String>) bVar, (C1909ui.b) "wifi");
        C1909ui.b bVar2 = C1909ui.b.CELL;
        enumMap.put((EnumMap<C1909ui.b, String>) bVar2, (C1909ui.b) "cell");
        hashMap.put("wifi", bVar);
        hashMap.put("cell", bVar2);
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.t fromModel(C1909ui c1909ui) {
        If.t tVar = new If.t();
        if (c1909ui.f15857a != null) {
            If.u uVar = new If.u();
            tVar.f13169a = uVar;
            C1909ui.a aVar = c1909ui.f15857a;
            uVar.f13171a = aVar.f15859a;
            uVar.f13172b = aVar.f15860b;
        }
        if (c1909ui.f15858b != null) {
            If.u uVar2 = new If.u();
            tVar.f13170b = uVar2;
            C1909ui.a aVar2 = c1909ui.f15858b;
            uVar2.f13171a = aVar2.f15859a;
            uVar2.f13172b = aVar2.f15860b;
        }
        return tVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1909ui toModel(If.t tVar) {
        If.u uVar = tVar.f13169a;
        C1909ui.a aVar = uVar != null ? new C1909ui.a(uVar.f13171a, uVar.f13172b) : null;
        If.u uVar2 = tVar.f13170b;
        return new C1909ui(aVar, uVar2 != null ? new C1909ui.a(uVar2.f13171a, uVar2.f13172b) : null);
    }
}
