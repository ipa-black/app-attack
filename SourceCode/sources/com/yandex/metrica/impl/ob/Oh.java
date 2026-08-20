package com.yandex.metrica.impl.ob;

import android.util.Pair;
import java.util.List;
/* loaded from: classes5.dex */
public class Oh {

    /* renamed from: a  reason: collision with root package name */
    public final List<Pair<String, a>> f13648a;

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f13649a;

        public a(String str) {
            this.f13649a = str;
        }

        public String toString() {
            return this.f13649a;
        }
    }

    public Oh(List<Pair<String, a>> list) {
        this.f13648a = list;
    }

    public String toString() {
        return "AttributionConfig{deeplinkConditions=" + this.f13648a + '}';
    }
}
