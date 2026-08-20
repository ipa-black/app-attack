package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.j;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.net.URL;
/* compiled from: NativeImpressionPixel.java */
/* loaded from: classes2.dex */
public abstract class p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract URL a();

    public static TypeAdapter<p> a(Gson gson) {
        return new j.a(gson);
    }
}
