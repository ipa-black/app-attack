package com.criteo.publisher.advancednative;

import java.net.URL;
/* loaded from: classes2.dex */
public abstract class CriteoMedia {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract URL getImageUrl();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CriteoMedia create(URL url) {
        return new d(url);
    }
}
