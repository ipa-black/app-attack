package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.b;
import com.criteo.publisher.model.b0.h;
import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* compiled from: NativeAssets.java */
/* loaded from: classes2.dex */
public abstract class n {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract m b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SerializedName("products")
    public abstract List<r> h();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SerializedName("impressionPixels")
    public abstract List<p> i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract q j();

    public static TypeAdapter<n> a(Gson gson) {
        return new h.a(gson);
    }

    public r n() {
        return h().iterator().next();
    }

    public String c() {
        return b().a();
    }

    public String d() {
        return b().b();
    }

    public URL f() {
        return b().c().a();
    }

    public URI e() {
        return b().d();
    }

    public URI l() {
        return j().a();
    }

    public URL m() {
        return j().b();
    }

    public String k() {
        return j().c();
    }

    public List<URL> g() {
        ArrayList arrayList = new ArrayList();
        for (p pVar : i()) {
            arrayList.add(pVar.a());
        }
        return arrayList;
    }

    public static a a() {
        return new b.a();
    }

    /* compiled from: NativeAssets.java */
    /* loaded from: classes2.dex */
    static abstract class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(m mVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(q qVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(List<r> list);

        abstract n a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(List<p> list);

        abstract List<r> c();

        abstract List<p> d();

        /* JADX INFO: Access modifiers changed from: package-private */
        public n b() {
            if (c().isEmpty()) {
                throw new JsonParseException("Expect that native payload has, at least, one product.");
            }
            if (d().isEmpty()) {
                throw new JsonParseException("Expect that native payload has, at least, one impression pixel.");
            }
            return a();
        }
    }
}
