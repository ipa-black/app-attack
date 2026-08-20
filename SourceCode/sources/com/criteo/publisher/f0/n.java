package com.criteo.publisher.f0;

import com.criteo.publisher.f0.a;
import com.criteo.publisher.f0.e;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
/* compiled from: Metric.java */
/* loaded from: classes2.dex */
public abstract class n {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Metric.java */
    /* loaded from: classes2.dex */
    public static abstract class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(Integer num);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(Long l);

        /* JADX INFO: Access modifiers changed from: package-private */
        @Deprecated
        public abstract a a(String str);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(boolean z);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract n a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(Integer num);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(Long l);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(String str);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(boolean z);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a c(Long l);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a c(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Long b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Long c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Long d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Integer f();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String g();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Integer h();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean j();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean k();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract a l();

    public static a a(String str) {
        return a().a(str);
    }

    public static TypeAdapter<n> a(Gson gson) {
        return new e.a(gson);
    }

    @Deprecated
    public static a a() {
        return new a.b().c(false).b(false).a(false);
    }
}
