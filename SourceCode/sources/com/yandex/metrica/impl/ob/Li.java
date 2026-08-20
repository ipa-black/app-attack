package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Li {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Integer> f13440a = Collections.unmodifiableMap(new a());

    /* loaded from: classes5.dex */
    class a extends HashMap<String, Integer> {
        a() {
            put("BACKGROUND", 0);
            put("FOREGROUND", 2);
            put("VISIBLE", 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.yandex.metrica.impl.ob.Ui r17, org.json.JSONObject r18) {
        /*
            Method dump skipped, instructions count: 884
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Li.a(com.yandex.metrica.impl.ob.Ui, org.json.JSONObject):void");
    }

    private static If.k.a.C0349a a(JSONObject jSONObject, boolean z) {
        If.k.a.C0349a c0349a = new If.k.a.C0349a();
        Boolean a2 = Tl.a(jSONObject, "last_known_enabled", (Boolean) null);
        Boolean valueOf = Boolean.valueOf(c0349a.f13124a);
        if (a2 == null) {
            a2 = valueOf;
        }
        c0349a.f13124a = a2.booleanValue();
        Boolean a3 = Tl.a(jSONObject, "scanning_enabled", (Boolean) null);
        Boolean valueOf2 = Boolean.valueOf(z);
        if (a3 == null) {
            a3 = valueOf2;
        }
        boolean booleanValue = a3.booleanValue();
        c0349a.f13125b = booleanValue;
        if (jSONObject != null && booleanValue) {
            If.k.a.C0349a.C0350a c0350a = new If.k.a.C0349a.C0350a();
            Long a4 = Tl.a(jSONObject, "duration_seconds", (Long) null);
            Long valueOf3 = Long.valueOf(c0350a.f13127a);
            if (a4 == null) {
                a4 = valueOf3;
            }
            c0350a.f13127a = a4.longValue();
            Long a5 = Tl.a(jSONObject, "interval_seconds", (Long) null);
            Long valueOf4 = Long.valueOf(c0350a.f13128b);
            if (a5 == null) {
                a5 = valueOf4;
            }
            c0350a.f13128b = a5.longValue();
            c0349a.f13126c = c0350a;
        }
        return c0349a;
    }
}
