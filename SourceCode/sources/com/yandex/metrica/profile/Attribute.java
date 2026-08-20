package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.C1470cm;
import com.yandex.metrica.impl.ob.C1496dn;
import com.yandex.metrica.impl.ob.Qe;
import com.yandex.metrica.impl.ob.Re;
import com.yandex.metrica.impl.ob.Wm;
/* loaded from: classes5.dex */
public class Attribute {
    public static BirthDateAttribute birthDate() {
        return new BirthDateAttribute();
    }

    public static BooleanAttribute customBoolean(String str) {
        return new BooleanAttribute(str, new Qe(), new Re(new Wm(100)));
    }

    public static CounterAttribute customCounter(String str) {
        return new CounterAttribute(str, new Qe(), new Re(new Wm(100)));
    }

    public static NumberAttribute customNumber(String str) {
        return new NumberAttribute(str, new Qe(), new Re(new Wm(100)));
    }

    public static StringAttribute customString(String str) {
        return new StringAttribute(str, new C1496dn(200, "String attribute \"" + str + "\"", C1470cm.a()), new Qe(), new Re(new Wm(100)));
    }

    public static GenderAttribute gender() {
        return new GenderAttribute();
    }

    public static NameAttribute name() {
        return new NameAttribute();
    }

    public static NotificationsEnabledAttribute notificationsEnabled() {
        return new NotificationsEnabledAttribute();
    }
}
