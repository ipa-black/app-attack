package com.criteo.publisher.j0;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.criteo.publisher.CriteoInterstitialActivity;
import com.criteo.publisher.m0.d;
import com.criteo.publisher.n0.i;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* compiled from: InterstitialActivityHelper.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8882a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.a0.b f8883b;

    public a(Context context, com.criteo.publisher.a0.b bVar) {
        this.f8882a = context;
        this.f8883b = bVar;
    }

    public boolean b() {
        return (this.f8882a.getPackageManager().resolveActivity(a(), 65536) == null || this.f8882a.getResources().getIdentifier("activity_criteo_interstitial", TtmlNode.TAG_LAYOUT, this.f8882a.getPackageName()) == 0) ? false : true;
    }

    public void a(String str, d dVar) {
        if (b()) {
            i a2 = a(dVar);
            ComponentName a3 = this.f8883b.a();
            Intent a4 = a();
            a4.setFlags(268435456);
            a4.putExtra("webviewdata", str);
            a4.putExtra("resultreceiver", a2);
            a4.putExtra("callingactivity", a3);
            this.f8882a.startActivity(a4);
        }
    }

    private Intent a() {
        return new Intent(this.f8882a, CriteoInterstitialActivity.class);
    }

    i a(d dVar) {
        return new i(new Handler(Looper.getMainLooper()), dVar);
    }
}
