package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.g;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.net.URI;
/* compiled from: NativeAdvertiser.java */
/* loaded from: classes2.dex */
public abstract class m {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract o c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract URI d();

    public static TypeAdapter<m> a(Gson gson) {
        return new g.a(gson);
    }
}
