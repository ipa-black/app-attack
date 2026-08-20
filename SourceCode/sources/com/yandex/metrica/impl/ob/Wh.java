package com.yandex.metrica.impl.ob;

import com.yandex.metrica.IParamsCallback;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
/* loaded from: classes5.dex */
public final class Wh {

    /* renamed from: a  reason: collision with root package name */
    private Xh f14198a = new Xh();

    public final synchronized Xh a() {
        return this.f14198a;
    }

    public final synchronized void a(Xh xh) {
        this.f14198a = xh;
    }

    public final W0 a(String str) {
        Boolean b2;
        String str2;
        Xh xh = this.f14198a;
        if (str.hashCode() == 949037879 && str.equals(IParamsCallback.YANDEX_MOBILE_METRICA_FEATURE_LIB_SSL_ENABLED) && (b2 = xh.b()) != null) {
            boolean booleanValue = b2.booleanValue();
            U0 c2 = xh.c();
            String a2 = xh.a();
            if (booleanValue) {
                str2 = "true";
            } else if (booleanValue) {
                throw new NoWhenBranchMatchedException();
            } else {
                str2 = "false";
            }
            return new W0(str2, c2, a2);
        }
        return null;
    }

    public final synchronized void a(List<String> list, Map<String, W0> map) {
        Boolean b2;
        String str;
        for (String str2 : list) {
            if (str2.hashCode() == 949037879 && str2.equals(IParamsCallback.YANDEX_MOBILE_METRICA_FEATURE_LIB_SSL_ENABLED) && (b2 = this.f14198a.b()) != null) {
                boolean booleanValue = b2.booleanValue();
                U0 c2 = this.f14198a.c();
                String a2 = this.f14198a.a();
                if (booleanValue) {
                    str = "true";
                } else if (booleanValue) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    str = "false";
                }
                map.put(IParamsCallback.YANDEX_MOBILE_METRICA_FEATURE_LIB_SSL_ENABLED, new W0(str, c2, a2));
            }
        }
    }
}
