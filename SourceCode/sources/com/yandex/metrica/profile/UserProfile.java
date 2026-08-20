package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.A2;
import com.yandex.metrica.impl.ob.InterfaceC1438bf;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes5.dex */
public class UserProfile {

    /* renamed from: a  reason: collision with root package name */
    private final List<UserProfileUpdate<? extends InterfaceC1438bf>> f16316a;

    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final LinkedList<UserProfileUpdate<? extends InterfaceC1438bf>> f16317a = new LinkedList<>();

        Builder() {
        }

        public Builder apply(UserProfileUpdate<? extends InterfaceC1438bf> userProfileUpdate) {
            this.f16317a.add(userProfileUpdate);
            return this;
        }

        public UserProfile build() {
            return new UserProfile(this.f16317a);
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public List<UserProfileUpdate<? extends InterfaceC1438bf>> getUserProfileUpdates() {
        return this.f16316a;
    }

    private UserProfile(List<UserProfileUpdate<? extends InterfaceC1438bf>> list) {
        this.f16316a = A2.c(list);
    }
}
