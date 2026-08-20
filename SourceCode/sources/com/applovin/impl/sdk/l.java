package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements AppLovinBroadcastManager.Receiver {

    /* renamed from: b  reason: collision with root package name */
    private static AlertDialog f5824b;

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicBoolean f5825c = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    private final m f5826a;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.sdk.utils.p f5827d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.impl.sdk.l$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f5828a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f5829b;

        AnonymousClass1(n nVar, a aVar) {
            this.f5828a = nVar;
            this.f5829b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            v D;
            String str;
            if (l.this.f5826a.d()) {
                this.f5828a.D();
                if (v.a()) {
                    this.f5828a.D().e("ConsentAlertManager", "Consent dialog already showing, skip showing of consent alert");
                    return;
                }
                return;
            }
            Activity a2 = this.f5828a.ai().a();
            if (a2 != null && com.applovin.impl.sdk.utils.i.a(this.f5828a.P())) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.l.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertDialog unused = l.f5824b = new AlertDialog.Builder(AnonymousClass1.this.f5828a.ai().a()).setTitle((CharSequence) AnonymousClass1.this.f5828a.a(com.applovin.impl.sdk.c.b.aP)).setMessage((CharSequence) AnonymousClass1.this.f5828a.a(com.applovin.impl.sdk.c.b.aQ)).setCancelable(false).setPositiveButton((CharSequence) AnonymousClass1.this.f5828a.a(com.applovin.impl.sdk.c.b.aR), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.l.1.1.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                AnonymousClass1.this.f5829b.a();
                                dialogInterface.dismiss();
                                l.f5825c.set(false);
                            }
                        }).setNegativeButton((CharSequence) AnonymousClass1.this.f5828a.a(com.applovin.impl.sdk.c.b.aS), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.l.1.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                AnonymousClass1.this.f5829b.b();
                                dialogInterface.dismiss();
                                l.f5825c.set(false);
                                l.this.a(((Long) AnonymousClass1.this.f5828a.a(com.applovin.impl.sdk.c.b.aN)).longValue(), AnonymousClass1.this.f5828a, AnonymousClass1.this.f5829b);
                            }
                        }).create();
                        l.f5824b.show();
                    }
                });
            } else if (a2 == null) {
                this.f5828a.D();
                if (v.a()) {
                    D = this.f5828a.D();
                    str = "No parent Activity found - rescheduling consent alert...";
                    D.e("ConsentAlertManager", str);
                }
                l.f5825c.set(false);
                l.this.a(((Long) this.f5828a.a(com.applovin.impl.sdk.c.b.aO)).longValue(), this.f5828a, this.f5829b);
            } else {
                this.f5828a.D();
                if (v.a()) {
                    D = this.f5828a.D();
                    str = "No internet available - rescheduling consent alert...";
                    D.e("ConsentAlertManager", str);
                }
                l.f5825c.set(false);
                l.this.a(((Long) this.f5828a.a(com.applovin.impl.sdk.c.b.aO)).longValue(), this.f5828a, this.f5829b);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(m mVar, n nVar) {
        this.f5826a = mVar;
        nVar.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        nVar.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    public void a(long j, n nVar, a aVar) {
        if (j <= 0) {
            return;
        }
        AlertDialog alertDialog = f5824b;
        if (alertDialog == null || !alertDialog.isShowing()) {
            if (f5825c.getAndSet(true)) {
                int i = (j > this.f5827d.a() ? 1 : (j == this.f5827d.a() ? 0 : -1));
                nVar.D();
                if (i >= 0) {
                    if (v.a()) {
                        nVar.D().d("ConsentAlertManager", "Skip scheduling consent alert - one scheduled already with remaining time of " + this.f5827d.a() + " milliseconds");
                        return;
                    }
                    return;
                }
                if (v.a()) {
                    nVar.D().b("ConsentAlertManager", "Scheduling consent alert earlier (" + j + "ms) than remaining scheduled time (" + this.f5827d.a() + "ms)");
                }
                this.f5827d.d();
            }
            nVar.D();
            if (v.a()) {
                nVar.D().b("ConsentAlertManager", "Scheduling consent alert for " + j + " milliseconds");
            }
            this.f5827d = com.applovin.impl.sdk.utils.p.a(j, nVar, new AnonymousClass1(nVar, aVar));
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        if (this.f5827d == null) {
            return;
        }
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.f5827d.b();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            this.f5827d.c();
        }
    }
}
