package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.k;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import java.net.URI;
import java.net.URL;
/* compiled from: NativePrivacy.java */
/* loaded from: classes2.dex */
public abstract class q {
    /* JADX INFO: Access modifiers changed from: package-private */
    @SerializedName("optoutClickUrl")
    public abstract URI a();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SerializedName("optoutImageUrl")
    public abstract URL b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SerializedName("longLegalText")
    public abstract String c();

    public static TypeAdapter<q> a(Gson gson) {
        return new k.a(gson);
    }
}
