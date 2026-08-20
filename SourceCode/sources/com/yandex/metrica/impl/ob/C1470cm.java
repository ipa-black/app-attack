package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C1811qf;
/* renamed from: com.yandex.metrica.impl.ob.cm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1470cm extends Vl {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f14576c = {3, 6, 4};

    /* renamed from: d  reason: collision with root package name */
    private static final C1470cm f14577d = new C1470cm("");

    public C1470cm(String str) {
        super(str);
    }

    public static C1470cm a() {
        return f14577d;
    }

    @Override // com.yandex.metrica.coreutils.logger.BaseLogger
    public String getTag() {
        return "AppMetrica";
    }

    public C1470cm() {
        this("");
    }

    public void a(C1811qf.d dVar, String str) {
        C1811qf.d.a[] aVarArr;
        String str2;
        for (C1811qf.d.a aVar : dVar.f15540c) {
            if (aVar != null) {
                int[] iArr = f14576c;
                int length = iArr.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        if (aVar.f15543c == iArr[i]) {
                            StringBuilder append = new StringBuilder().append(str).append(": ");
                            if (aVar.f15543c == 3 && TextUtils.isEmpty(aVar.f15544d)) {
                                str2 = "Native crash of app";
                            } else if (aVar.f15543c == 4) {
                                StringBuilder sb = new StringBuilder(aVar.f15544d);
                                if (aVar.f15545e != null) {
                                    String str3 = new String(aVar.f15545e);
                                    if (!TextUtils.isEmpty(str3)) {
                                        sb.append(" with value ");
                                        sb.append(str3);
                                    }
                                }
                                str2 = sb.toString();
                            } else {
                                str2 = aVar.f15544d;
                            }
                            i(append.append(str2).toString());
                        } else {
                            i++;
                        }
                    }
                }
            }
        }
    }
}
