package com.yandex.metrica.impl.interact;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C1910uj;
import com.yandex.metrica.impl.ob.InterfaceC1418ak;
import com.yandex.metrica.impl.ob.P;
import com.yandex.metrica.impl.ob.Xj;
import com.yandex.metrica.impl.ob.Zj;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class CellularNetworkInfo {

    /* renamed from: a  reason: collision with root package name */
    private String f12604a = "";

    /* loaded from: classes5.dex */
    class a implements InterfaceC1418ak {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1418ak
        public void a(Zj zj) {
            C1910uj b2 = zj.b();
            if (b2 != null) {
                String m = b2.m();
                String n = b2.n();
                Integer l = b2.l();
                Integer k = b2.k();
                Integer b3 = b2.b();
                Integer e2 = b2.e();
                Integer p = b2.p();
                HashMap hashMap = new HashMap();
                hashMap.put("network_type", m);
                hashMap.put("operator_name", n);
                hashMap.put("country_code", k != null ? String.valueOf(k) : null);
                hashMap.put("operator_id", l != null ? String.valueOf(l) : null);
                hashMap.put("cell_id", b3 != null ? String.valueOf(b3) : null);
                hashMap.put("lac", e2 != null ? String.valueOf(e2) : null);
                hashMap.put("signal_strength", p != null ? String.valueOf(p) : null);
                StringBuilder sb = new StringBuilder();
                String str = "";
                for (Map.Entry entry : hashMap.entrySet()) {
                    String str2 = (String) entry.getValue();
                    if (!TextUtils.isEmpty(str2)) {
                        sb.append(str);
                        sb.append((String) entry.getKey());
                        sb.append("=");
                        sb.append(str2);
                        str = "&";
                    }
                }
                CellularNetworkInfo.this.f12604a = sb.toString();
            }
        }
    }

    public CellularNetworkInfo(Context context) {
        new Xj(context, P.g().d().b()).a(new a());
    }

    public String getCelluralInfo() {
        return this.f12604a;
    }
}
