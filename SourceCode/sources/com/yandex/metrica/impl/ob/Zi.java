package com.yandex.metrica.impl.ob;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
class Zi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public If.y[] a(JSONArray jSONArray) {
        int i;
        if (jSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    Integer num = null;
                    Integer a2 = Tl.a(jSONObject, SessionDescription.ATTR_TYPE, (Integer) null);
                    if (a2 != null) {
                        int intValue = a2.intValue();
                        if (intValue == 0) {
                            i = 0;
                        } else if (intValue == 1) {
                            i = 1;
                        } else if (intValue == 2) {
                            i = 2;
                        } else if (intValue == 3) {
                            i = 3;
                        }
                        num = i;
                    }
                    String b2 = Tl.b(jSONObject, "value");
                    if (num != null && b2 != null) {
                        If.y yVar = new If.y();
                        yVar.f13192a = num.intValue();
                        yVar.f13193b = b2;
                        arrayList.add(yVar);
                    }
                } catch (Throwable unused) {
                }
            }
            return (If.y[]) arrayList.toArray(new If.y[0]);
        }
        return new If.y[0];
    }
}
