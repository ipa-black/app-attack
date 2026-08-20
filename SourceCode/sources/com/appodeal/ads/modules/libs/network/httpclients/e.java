package com.appodeal.ads.modules.libs.network.httpclients;

import com.appodeal.ads.modules.libs.network.HttpError;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public interface e {

    /* loaded from: classes2.dex */
    public static final class a implements e {

        /* renamed from: a  reason: collision with root package name */
        public final HttpError f7044a;

        public a(Map headers, HttpError httpError) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            Intrinsics.checkNotNullParameter(httpError, "httpError");
            this.f7044a = httpError;
        }

        public final HttpError a() {
            return this.f7044a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements e {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f7045a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7046b;

        /* renamed from: c  reason: collision with root package name */
        public final Map<String, List<String>> f7047c;

        public b(byte[] bArr, String str, Map headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.f7045a = bArr;
            this.f7046b = str;
            this.f7047c = headers;
        }

        public final String a() {
            return this.f7046b;
        }

        public final byte[] b() {
            return this.f7045a;
        }

        public final Map<String, List<String>> c() {
            return this.f7047c;
        }
    }
}
