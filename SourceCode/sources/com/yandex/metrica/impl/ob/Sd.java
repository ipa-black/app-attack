package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Cf;
import com.yandex.metrica.impl.ob.Ud;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Sd implements ProtobufConverter<Ud.a, Cf.b> {

    /* renamed from: a  reason: collision with root package name */
    private final C1487de f13869a;

    public Sd() {
        this(new C1487de());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Cf.b fromModel(Ud.a aVar) {
        Cf.b bVar = new Cf.b();
        if (!TextUtils.isEmpty(aVar.f14032a)) {
            bVar.f12761a = aVar.f14032a;
        }
        bVar.f12762b = aVar.f14033b.toString();
        bVar.f12763c = this.f13869a.fromModel(aVar.f14034c).intValue();
        return bVar;
    }

    Sd(C1487de c1487de) {
        this.f13869a = c1487de;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Ud.a toModel(Cf.b bVar) {
        JSONObject jSONObject;
        String str = bVar.f12761a;
        String str2 = bVar.f12762b;
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
            }
            return new Ud.a(str, jSONObject, this.f13869a.toModel(Integer.valueOf(bVar.f12763c)));
        }
        jSONObject = new JSONObject();
        return new Ud.a(str, jSONObject, this.f13869a.toModel(Integer.valueOf(bVar.f12763c)));
    }
}
