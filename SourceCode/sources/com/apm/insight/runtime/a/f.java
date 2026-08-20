package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.runtime.a.c;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f1087a;

    /* renamed from: b  reason: collision with root package name */
    private Context f1088b;

    /* renamed from: c  reason: collision with root package name */
    private Map<CrashType, c> f1089c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private b f1090d;

    /* renamed from: e  reason: collision with root package name */
    private d f1091e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apm.insight.runtime.a.f$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1092a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f1092a = iArr;
            try {
                iArr[CrashType.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1092a[CrashType.LAUNCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1092a[CrashType.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1092a[CrashType.ANR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1092a[CrashType.DART.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1092a[CrashType.CUSTOM_JAVA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1092a[CrashType.BLOCK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1092a[CrashType.ENSURE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private f(Context context) {
        this.f1088b = context;
        try {
            this.f1090d = b.d();
            this.f1091e = new d(this.f1088b);
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
        }
    }

    private c a(CrashType crashType) {
        c cVar = this.f1089c.get(crashType);
        if (cVar != null) {
            return cVar;
        }
        switch (AnonymousClass1.f1092a[crashType.ordinal()]) {
            case 1:
                cVar = new j(this.f1088b, this.f1090d, this.f1091e);
                break;
            case 2:
                cVar = new k(this.f1088b, this.f1090d, this.f1091e);
                break;
            case 3:
                cVar = new l(this.f1088b, this.f1090d, this.f1091e);
                break;
            case 4:
                cVar = new a(this.f1088b, this.f1090d, this.f1091e);
                break;
            case 5:
                cVar = new h(this.f1088b, this.f1090d, this.f1091e);
                break;
            case 6:
                cVar = new g(this.f1088b, this.f1090d, this.f1091e);
                break;
            case 7:
                cVar = new e(this.f1088b, this.f1090d, this.f1091e);
                break;
            case 8:
                cVar = new i(this.f1088b, this.f1090d, this.f1091e);
                break;
        }
        if (cVar != null) {
            this.f1089c.put(crashType, cVar);
        }
        return cVar;
    }

    public static f a() {
        if (f1087a == null) {
            Context g2 = com.apm.insight.i.g();
            if (g2 == null) {
                throw new IllegalArgumentException("NpthBus not init");
            }
            f1087a = new f(g2);
        }
        return f1087a;
    }

    public com.apm.insight.entity.a a(CrashType crashType, com.apm.insight.entity.a aVar) {
        c a2;
        return (crashType == null || (a2 = a(crashType)) == null) ? aVar : a2.a(aVar, null, false);
    }

    public com.apm.insight.entity.a a(CrashType crashType, com.apm.insight.entity.a aVar, c.a aVar2, boolean z) {
        c a2;
        return (crashType == null || (a2 = a(crashType)) == null) ? aVar : a2.a(aVar, aVar2, z);
    }

    public com.apm.insight.entity.a a(List<com.apm.insight.entity.a> list, JSONArray jSONArray) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
        JSONArray jSONArray2 = new JSONArray();
        for (com.apm.insight.entity.a aVar2 : list) {
            jSONArray2.put(aVar2.h());
        }
        aVar.a("data", (Object) jSONArray2);
        aVar.a("all_data", (Object) jSONArray);
        Header a2 = Header.a(this.f1088b);
        Header.a(a2);
        a2.c();
        a2.d();
        a2.e();
        Header.b(a2);
        aVar.a(a2);
        return aVar;
    }
}
