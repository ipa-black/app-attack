package com.applovin.exoplayer2.e;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f2683a = new l() { // from class: com.applovin.exoplayer2.e.l$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            h[] a2;
            a2 = l.a();
            return a2;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ h[] a() {
        return new h[0];
    }

    default h[] a(Uri uri, Map<String, List<String>> map) {
        return createExtractors();
    }

    h[] createExtractors();
}
