package com.ironsource.sdk.controller;

import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.SDKUtils;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    long f11622a;

    /* renamed from: b  reason: collision with root package name */
    int f11623b;

    /* renamed from: c  reason: collision with root package name */
    int f11624c;

    /* renamed from: d  reason: collision with root package name */
    b f11625d = b.NONE;

    /* renamed from: e  reason: collision with root package name */
    private String f11626e;

    /* renamed from: f  reason: collision with root package name */
    private String f11627f;

    /* renamed from: g  reason: collision with root package name */
    private com.ironsource.sdk.k.b f11628g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.sdk.controller.f$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11630a;

        static {
            int[] iArr = new int[a.a().length];
            f11630a = iArr;
            try {
                int i = a.f11631a;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11630a;
                int i2 = a.f11632b;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f11630a;
                int i3 = a.f11633c;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f11631a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f11632b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f11633c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f11634d = {1, 2, 3};

        public static int[] a() {
            return (int[]) f11634d.clone();
        }
    }

    /* loaded from: classes3.dex */
    public enum b {
        NONE(0),
        PREPARED_CONTROLLER_LOADED(1),
        CONTROLLER_FROM_SERVER(2),
        MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER(3),
        FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER(4),
        FALLBACK_CONTROLLER_RECOVERY(5);
        

        /* renamed from: g  reason: collision with root package name */
        int f11642g;

        b(int i) {
            this.f11642g = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(JSONObject jSONObject, String str, String str2, com.ironsource.sdk.k.b bVar) {
        int optInt = jSONObject.optInt("controllerSourceStrategy", -1);
        this.f11623b = optInt;
        this.f11624c = optInt != 1 ? optInt != 2 ? a.f11631a : a.f11633c : a.f11632b;
        this.f11626e = str;
        this.f11627f = str2;
        this.f11628g = bVar;
    }

    private void a(com.ironsource.sdk.h.c cVar) {
        if (this.f11628g.b()) {
            return;
        }
        this.f11628g.a(cVar, this.f11627f);
    }

    private com.ironsource.sdk.h.c g() {
        return new com.ironsource.sdk.h.c(this.f11626e, "next_mobileController.html");
    }

    private com.ironsource.sdk.h.c h() {
        return new com.ironsource.sdk.h.c(this.f11626e, "fallback_mobileController.html");
    }

    private void i() {
        try {
            com.ironsource.sdk.h.c d2 = d();
            if (d2.exists()) {
                com.ironsource.sdk.h.c h2 = h();
                if (h2.exists()) {
                    h2.delete();
                }
                IronSourceStorageUtils.renameFile(d2.getPath(), h2.getPath());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar) {
        com.ironsource.sdk.a.a a2 = new com.ironsource.sdk.a.a().a("generalmessage", Integer.valueOf(this.f11623b)).a("controllersource", Integer.valueOf(bVar.f11642g));
        if (this.f11622a > 0) {
            a2.a("timingvalue", Long.valueOf(System.currentTimeMillis() - this.f11622a));
        }
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.s, a2.f11500a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.f11625d != b.NONE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        com.ironsource.sdk.h.c cVar;
        int i = AnonymousClass2.f11630a[this.f11624c - 1];
        if (i == 1) {
            IronSourceStorageUtils.deleteFile(d());
            cVar = new com.ironsource.sdk.h.c(this.f11626e, SDKUtils.getFileName(this.f11627f));
        } else if (i != 2) {
            if (i == 3) {
                try {
                    com.ironsource.sdk.h.c d2 = d();
                    com.ironsource.sdk.h.c g2 = g();
                    if (!g2.exists() && !d2.exists()) {
                        a(new com.ironsource.sdk.h.c(this.f11626e, SDKUtils.getFileName(this.f11627f)));
                        return false;
                    } else if (!g2.exists() && d2.exists()) {
                        b bVar = b.MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER;
                        this.f11625d = bVar;
                        a(bVar);
                        a(new com.ironsource.sdk.h.c(this.f11626e, g2.getName()));
                        return true;
                    } else {
                        i();
                        if (IronSourceStorageUtils.renameFile(g().getPath(), d().getPath())) {
                            b bVar2 = b.PREPARED_CONTROLLER_LOADED;
                            this.f11625d = bVar2;
                            a(bVar2);
                            c();
                            a(new com.ironsource.sdk.h.c(this.f11626e, g2.getName()));
                            return true;
                        } else if (e()) {
                            b bVar3 = b.FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER;
                            this.f11625d = bVar3;
                            a(bVar3);
                            a(new com.ironsource.sdk.h.c(this.f11626e, g2.getName()));
                            return true;
                        } else {
                            a(new com.ironsource.sdk.h.c(this.f11626e, SDKUtils.getFileName(this.f11627f)));
                        }
                    }
                } catch (Exception unused) {
                }
            }
            return false;
        } else {
            i();
            cVar = new com.ironsource.sdk.h.c(this.f11626e, SDKUtils.getFileName(this.f11627f));
        }
        a(cVar);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        IronSourceStorageUtils.deleteFile(h());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.ironsource.sdk.h.c d() {
        return new com.ironsource.sdk.h.c(this.f11626e, "mobileController.html");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        try {
            if (h().exists()) {
                return IronSourceStorageUtils.renameFile(h().getPath(), d().getPath());
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JSONObject f() {
        return new JSONObject() { // from class: com.ironsource.sdk.controller.f.1
            {
                putOpt("controllerSourceStrategy", Integer.valueOf(f.this.f11623b));
                putOpt("controllerSourceCode", Integer.valueOf(f.this.f11625d.f11642g));
            }
        };
    }
}
