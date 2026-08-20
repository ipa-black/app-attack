package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.i;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.net.URL;
/* compiled from: NativeImage.java */
/* loaded from: classes2.dex */
public abstract class o {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract URL a();

    public static TypeAdapter<o> a(Gson gson) {
        return new i.a(gson);
    }
}
