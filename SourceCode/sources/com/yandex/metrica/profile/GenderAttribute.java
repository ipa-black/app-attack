package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.Dn;
import com.yandex.metrica.impl.ob.InterfaceC1438bf;
import com.yandex.metrica.impl.ob.Me;
import com.yandex.metrica.impl.ob.Pe;
import com.yandex.metrica.impl.ob.Ve;
import com.yandex.metrica.impl.ob.We;
import com.yandex.metrica.impl.ob.Xe;
import com.yandex.metrica.impl.ob.Ye;
import com.yandex.metrica.impl.ob.Ym;
/* loaded from: classes5.dex */
public class GenderAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final Pe f16312a = new Pe("appmetrica_gender", new Dn(), new Xe());

    /* loaded from: classes5.dex */
    public enum Gender {
        MALE("M"),
        FEMALE("F"),
        OTHER("O");
        
        private final String mStringValue;

        Gender(String str) {
            this.mStringValue = str;
        }

        public String getStringValue() {
            return this.mStringValue;
        }
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValue(Gender gender) {
        return new UserProfileUpdate<>(new Ye(this.f16312a.a(), gender.getStringValue(), new Ym(), this.f16312a.b(), new Me(this.f16312a.c())));
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValueIfUndefined(Gender gender) {
        return new UserProfileUpdate<>(new Ye(this.f16312a.a(), gender.getStringValue(), new Ym(), this.f16312a.b(), new We(this.f16312a.c())));
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValueReset() {
        return new UserProfileUpdate<>(new Ve(0, this.f16312a.a(), this.f16312a.b(), this.f16312a.c()));
    }
}
