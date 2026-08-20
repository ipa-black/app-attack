package com.adcolony.sdk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.adcolony.sdk.e0;
import com.appsgeyser.sdk.configuration.Constants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private h0 f507a;

    /* renamed from: b  reason: collision with root package name */
    private AlertDialog f508b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f509c;

    /* loaded from: classes.dex */
    class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (com.adcolony.sdk.a.c() && (com.adcolony.sdk.a.a() instanceof Activity)) {
                if (c0.b(h0Var.a(), Constants.BannerLoadTags.ON_RESUME)) {
                    r.this.f507a = h0Var;
                    return;
                } else {
                    r.this.a(h0Var);
                    return;
                }
            }
            new e0.a().a("Missing Activity reference, can't build AlertDialog.").a(e0.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h0 f511a;

        b(h0 h0Var) {
            this.f511a = h0Var;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            r.this.f508b = null;
            dialogInterface.dismiss();
            f1 b2 = c0.b();
            c0.b(b2, "positive", true);
            r.this.f509c = false;
            this.f511a.a(b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h0 f513a;

        c(h0 h0Var) {
            this.f513a = h0Var;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            r.this.f508b = null;
            dialogInterface.dismiss();
            f1 b2 = c0.b();
            c0.b(b2, "positive", false);
            r.this.f509c = false;
            this.f513a.a(b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements DialogInterface.OnCancelListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h0 f515a;

        d(h0 h0Var) {
            this.f515a = h0Var;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            r.this.f508b = null;
            r.this.f509c = false;
            f1 b2 = c0.b();
            c0.b(b2, "positive", false);
            this.f515a.a(b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AlertDialog.Builder f517a;

        e(AlertDialog.Builder builder) {
            this.f517a = builder;
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.f509c = true;
            r.this.f508b = this.f517a.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r() {
        com.adcolony.sdk.a.a("Alert.show", new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        h0 h0Var = this.f507a;
        if (h0Var != null) {
            a(h0Var);
            this.f507a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f509c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(h0 h0Var) {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(a2, 16974374);
        f1 a3 = h0Var.a();
        String h2 = c0.h(a3, "message");
        String h3 = c0.h(a3, "title");
        String h4 = c0.h(a3, "positive");
        String h5 = c0.h(a3, "negative");
        builder.setMessage(h2);
        builder.setTitle(h3);
        builder.setPositiveButton(h4, new b(h0Var));
        if (!h5.equals("")) {
            builder.setNegativeButton(h5, new c(h0Var));
        }
        builder.setOnCancelListener(new d(h0Var));
        z0.b(new e(builder));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AlertDialog a() {
        return this.f508b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AlertDialog alertDialog) {
        this.f508b = alertDialog;
    }
}
