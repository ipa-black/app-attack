package com.appnext.base;

import android.content.Context;
import com.appnext.base.a.b.c;
import com.appnext.base.b.d;
import com.appnext.base.b.e;
import com.appnext.base.b.g;
import com.appnext.base.b.i;
import com.appnext.base.b.j;
import com.appnext.base.services.OperationService;
import com.appnext.core.f;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.List;
/* loaded from: classes.dex */
public class Appnext {
    private static final Appnext dp = new Appnext();

    /* renamed from: do  reason: not valid java name */
    private Context f1do = null;
    private boolean dq = false;

    static /* synthetic */ boolean a(Appnext appnext, boolean z) {
        appnext.dq = false;
        return false;
    }

    static /* synthetic */ void b(Appnext appnext) {
        try {
            String b2 = f.b(appnext.f1do, true);
            if (b2.equals(i.aR().getString(i.fB, ""))) {
                return;
            }
            i.aR().clear();
            i.aR().putString(i.fB, b2);
        } catch (Throwable unused) {
        }
    }

    private Appnext() {
    }

    protected static Appnext T() {
        return dp;
    }

    private void b(Context context) throws ExceptionInInitializerError {
        if (context == null) {
            throw new ExceptionInInitializerError("Cannot init Appnext with null context");
        }
        try {
            if (this.dq && this.f1do != null) {
                this.f1do = context.getApplicationContext();
                return;
            }
            this.dq = true;
            e.init(context);
            this.f1do = context.getApplicationContext();
            if (j.a(OperationService.class)) {
                g.aN().b(new AnonymousClass1());
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appnext.base.Appnext$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                j.a(d.fp, f.b(e.getContext(), true), d.a.String);
                i.aR().init(Appnext.this.f1do);
                if (!j.i(Appnext.this.f1do)) {
                    e.init(Appnext.this.f1do);
                    i.aR().init(Appnext.this.f1do);
                    Appnext.b(Appnext.this);
                    Context context = Appnext.this.f1do;
                    List<c> as = com.appnext.base.a.a.X().ab().as();
                    if (as == null || as.size() != 0) {
                        return;
                    }
                    c cVar = new c("on", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, d.fj, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, d.fn, "cdm", "cdm" + System.currentTimeMillis(), null);
                    com.appnext.base.a.a.X().ab().a(cVar);
                    com.appnext.base.services.b.a.d(context).a(cVar, true);
                    return;
                }
                Appnext.a(Appnext.this, false);
                i.aR().putBoolean(i.fC, true);
            } catch (Throwable unused) {
            }
        }
    }

    public static void setParam(String str, String str2) {
        try {
            if (e.getContext() != null && str.hashCode() == 951500826) {
                j.a(d.fo, str2, d.a.Boolean);
            }
        } catch (Throwable unused) {
        }
    }

    private void U() {
        try {
            String b2 = f.b(this.f1do, true);
            if (b2.equals(i.aR().getString(i.fB, ""))) {
                return;
            }
            i.aR().clear();
            i.aR().putString(i.fB, b2);
        } catch (Throwable unused) {
        }
    }

    public static void init(Context context) {
        Appnext appnext = dp;
        if (context == null) {
            throw new ExceptionInInitializerError("Cannot init Appnext with null context");
        }
        try {
            if (appnext.dq && appnext.f1do != null) {
                appnext.f1do = context.getApplicationContext();
                return;
            }
            appnext.dq = true;
            e.init(context);
            appnext.f1do = context.getApplicationContext();
            if (j.a(OperationService.class)) {
                g.aN().b(new AnonymousClass1());
            }
        } catch (Throwable unused) {
        }
    }
}
