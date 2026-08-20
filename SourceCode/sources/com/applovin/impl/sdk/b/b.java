package com.applovin.impl.sdk.b;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.n;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final n f5572a;

    /* renamed from: b  reason: collision with root package name */
    private final Activity f5573b;

    /* renamed from: c  reason: collision with root package name */
    private AlertDialog f5574c;

    /* renamed from: d  reason: collision with root package name */
    private a f5575d;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void b();
    }

    public b(Activity activity, n nVar) {
        this.f5572a = nVar;
        this.f5573b = activity;
    }

    public void a() {
        this.f5573b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f5574c != null) {
                    b.this.f5574c.dismiss();
                }
            }
        });
    }

    public void a(final e eVar, final Runnable runnable) {
        this.f5573b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.b.3
            @Override // java.lang.Runnable
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder(b.this.f5573b);
                builder.setTitle(eVar.an());
                String ao = eVar.ao();
                if (AppLovinSdkUtils.isValidString(ao)) {
                    builder.setMessage(ao);
                }
                builder.setPositiveButton(eVar.ap(), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.b.b.3.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (runnable != null) {
                            runnable.run();
                        }
                    }
                });
                builder.setCancelable(false);
                b.this.f5574c = builder.show();
            }
        });
    }

    public void a(a aVar) {
        this.f5575d = aVar;
    }

    public void b() {
        this.f5573b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                b.this.f5574c = new AlertDialog.Builder(b.this.f5573b).setTitle((CharSequence) b.this.f5572a.a(com.applovin.impl.sdk.c.b.bE)).setMessage((CharSequence) b.this.f5572a.a(com.applovin.impl.sdk.c.b.bF)).setCancelable(false).setPositiveButton((CharSequence) b.this.f5572a.a(com.applovin.impl.sdk.c.b.bH), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.b.b.2.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        b.this.f5575d.a();
                    }
                }).setNegativeButton((CharSequence) b.this.f5572a.a(com.applovin.impl.sdk.c.b.bG), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.b.b.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        b.this.f5575d.b();
                    }
                }).show();
            }
        });
    }

    public boolean c() {
        AlertDialog alertDialog = this.f5574c;
        if (alertDialog != null) {
            return alertDialog.isShowing();
        }
        return false;
    }
}
