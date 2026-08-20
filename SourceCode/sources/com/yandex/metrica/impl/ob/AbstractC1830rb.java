package com.yandex.metrica.impl.ob;

import android.content.pm.FeatureInfo;
/* renamed from: com.yandex.metrica.impl.ob.rb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1830rb {

    /* renamed from: com.yandex.metrica.impl.ob.rb$a */
    /* loaded from: classes5.dex */
    public static class a extends AbstractC1830rb {
        @Override // com.yandex.metrica.impl.ob.AbstractC1830rb
        public C1854sb b(FeatureInfo featureInfo) {
            return new C1854sb(featureInfo.name, featureInfo.version, c(featureInfo));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.rb$b */
    /* loaded from: classes5.dex */
    public static class b extends AbstractC1830rb {
        @Override // com.yandex.metrica.impl.ob.AbstractC1830rb
        public C1854sb b(FeatureInfo featureInfo) {
            return new C1854sb(featureInfo.name, -1, c(featureInfo));
        }
    }

    public C1854sb a(FeatureInfo featureInfo) {
        if (featureInfo.name == null) {
            int i = featureInfo.reqGlEsVersion;
            if (i == 0) {
                return b(featureInfo);
            }
            return new C1854sb("openGlFeature", i, c(featureInfo));
        }
        return b(featureInfo);
    }

    protected abstract C1854sb b(FeatureInfo featureInfo);

    boolean c(FeatureInfo featureInfo) {
        return (featureInfo.flags & 1) != 0;
    }
}
