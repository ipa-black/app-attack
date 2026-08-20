package com.yandex.metrica.identifiers;

import android.content.Context;
import android.os.Bundle;
import com.yandex.metrica.identifiers.impl.h;
/* loaded from: classes3.dex */
public class AdsIdentifiersProvider {
    private static final h retriever = new h(null, 1);

    public static Bundle requestIdentifiers(Context context, Bundle bundle) {
        return retriever.a(context, bundle.getString("com.yandex.metrica.identifiers.extra.PROVIDER"));
    }
}
