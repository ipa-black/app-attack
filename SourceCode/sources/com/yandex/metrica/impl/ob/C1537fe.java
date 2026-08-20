package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Cf;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.fe  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1537fe implements ProtobufConverter<C1512ee, Cf.a> {

    /* renamed from: a  reason: collision with root package name */
    private final C1487de f14746a = new C1487de();

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Cf.a fromModel(C1512ee c1512ee) {
        Cf.a aVar = new Cf.a();
        if (!TextUtils.isEmpty(c1512ee.f14676a)) {
            aVar.f12755a = c1512ee.f14676a;
        }
        aVar.f12756b = c1512ee.f14677b.toString();
        aVar.f12757c = c1512ee.f14678c;
        aVar.f12758d = c1512ee.f14679d;
        aVar.f12759e = this.f14746a.fromModel(c1512ee.f14680e).intValue();
        return aVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1512ee toModel(Cf.a aVar) {
        JSONObject jSONObject;
        String str = aVar.f12755a;
        String str2 = aVar.f12756b;
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
            }
            return new C1512ee(str, jSONObject, aVar.f12757c, aVar.f12758d, this.f14746a.toModel(Integer.valueOf(aVar.f12759e)));
        }
        jSONObject = new JSONObject();
        return new C1512ee(str, jSONObject, aVar.f12757c, aVar.f12758d, this.f14746a.toModel(Integer.valueOf(aVar.f12759e)));
    }
}
