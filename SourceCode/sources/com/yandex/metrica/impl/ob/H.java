package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
/* loaded from: classes5.dex */
public class H {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12994a;

    /* renamed from: b  reason: collision with root package name */
    private final C1457c9 f12995b;

    /* renamed from: c  reason: collision with root package name */
    private final String f12996c;

    /* renamed from: d  reason: collision with root package name */
    private final C1720mn f12997d;

    public H(Context context, C1457c9 c1457c9) {
        this(context, c1457c9, context.getPackageName(), new C1720mn());
    }

    public List<String> a() {
        Signature[] signatureArr;
        String str;
        List<String> h2 = this.f12995b.h();
        boolean isEmpty = h2.isEmpty();
        ArrayList arrayList = h2;
        if (isEmpty) {
            ArrayList arrayList2 = new ArrayList();
            try {
                if (A2.a(28)) {
                    SigningInfo signingInfo = this.f12997d.b(this.f12994a, this.f12996c, 134217728).signingInfo;
                    if (signingInfo.hasMultipleSigners()) {
                        signatureArr = signingInfo.getApkContentsSigners();
                    } else {
                        signatureArr = signingInfo.getSigningCertificateHistory();
                    }
                } else {
                    signatureArr = this.f12997d.b(this.f12994a, this.f12996c, 64).signatures;
                }
                if (signatureArr != null) {
                    for (Signature signature : signatureArr) {
                        try {
                            str = C1422b.a(MessageDigest.getInstance("SHA1").digest(signature.toByteArray())).toUpperCase(Locale.US).replaceAll("(.{2})(?=.+)", "$1:");
                        } catch (Throwable unused) {
                            str = null;
                        }
                        if (str != null) {
                            arrayList2.add(str);
                        }
                    }
                }
            } catch (Throwable unused2) {
            }
            Collections.sort(arrayList2);
            boolean isEmpty2 = arrayList2.isEmpty();
            arrayList = arrayList2;
            if (!isEmpty2) {
                this.f12995b.a(arrayList2).d();
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }

    H(Context context, C1457c9 c1457c9, String str, C1720mn c1720mn) {
        this.f12994a = context;
        this.f12995b = c1457c9;
        this.f12996c = str;
        this.f12997d = c1720mn;
    }
}
