package com.applovin.impl.a.a;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.core.net.MailTo;
import com.amazon.aps.shared.APSAnalytics;
import com.applovin.creative.MaxCreativeDebuggerActivity;
import com.applovin.impl.a.a.b.a.b;
import com.applovin.impl.mediation.c.c;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.h;
import com.applovin.impl.sdk.utils.j;
import com.applovin.impl.sdk.utils.l;
import com.applovin.impl.sdk.utils.p;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.appodeal.ads.modules.common.internal.LogConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a implements j.a {

    /* renamed from: f  reason: collision with root package name */
    private static WeakReference<MaxCreativeDebuggerActivity> f4202f;
    private static final AtomicBoolean l = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    private final n f4203a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f4204b;

    /* renamed from: e  reason: collision with root package name */
    private final b f4207e;

    /* renamed from: h  reason: collision with root package name */
    private j f4209h;
    private p i;
    private int j;
    private boolean k;

    /* renamed from: c  reason: collision with root package name */
    private final List<com.applovin.impl.a.a.a.a> f4205c = new ArrayList(10);

    /* renamed from: d  reason: collision with root package name */
    private final Object f4206d = new Object();

    /* renamed from: g  reason: collision with root package name */
    private WeakReference<View> f4208g = new WeakReference<>(null);

    public a(n nVar) {
        this.f4203a = nVar;
        Context P = nVar.P();
        this.f4204b = P;
        this.f4207e = new b(P);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View a(Activity activity) {
        Button button;
        int dpToPx = AppLovinSdkUtils.dpToPx(activity, 40);
        int i = dpToPx / 10;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPx, dpToPx, 8388629);
        layoutParams.setMargins(i, i, i, i);
        try {
            ImageButton imageButton = new ImageButton(activity);
            imageButton.setImageDrawable(activity.getResources().getDrawable(R.drawable.applovin_ic_white_small));
            imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageButton.setPadding(i, i, i, i * 2);
            button = imageButton;
        } catch (Throwable unused) {
            Button button2 = new Button(activity);
            button2.setText("ⓘ");
            button2.setTextColor(-1);
            button2.setAllCaps(false);
            button2.setTextSize(2, 20.0f);
            button2.setPadding(0, 0, 0, 0);
            button = button2;
        }
        button.setLayoutParams(layoutParams);
        button.setBackground(k());
        button.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.a.a.a.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.b();
            }
        });
        if (h.d()) {
            button.setElevation(AppLovinSdkUtils.dpToPx(activity, 5));
        }
        return button;
    }

    private boolean c(Object obj) {
        MaxAdFormat b2 = obj instanceof e ? ((e) obj).getAdZone().b() : obj instanceof com.applovin.impl.mediation.a.a ? ((com.applovin.impl.mediation.a.a) obj).getFormat() : null;
        return b2 != null && b2.isFullscreenAd();
    }

    private Bundle d(Object obj) {
        Bundle a2 = this.f4203a.E().a(Utils.getAdServeId(obj));
        if (a2 != null) {
            for (String str : a2.keySet()) {
                Object obj2 = a2.get(str);
                a2.remove(str);
                BundleUtils.put(StringUtils.toHumanReadableString(str), obj2, a2);
            }
            return a2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        WeakReference<MaxCreativeDebuggerActivity> weakReference = f4202f;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    private void i() {
        this.f4203a.ai().a(new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.a.a.a.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (activity instanceof MaxCreativeDebuggerActivity) {
                    v.f("AppLovinSdk", "Started Creative Debugger");
                    if (!a.this.h() || a.f4202f.get() != activity) {
                        MaxCreativeDebuggerActivity maxCreativeDebuggerActivity = (MaxCreativeDebuggerActivity) activity;
                        WeakReference unused = a.f4202f = new WeakReference(maxCreativeDebuggerActivity);
                        maxCreativeDebuggerActivity.a(a.this.f4207e, a.this.f4203a.ai());
                    }
                    a.l.set(false);
                }
            }

            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (activity instanceof MaxCreativeDebuggerActivity) {
                    v.f("AppLovinSdk", "Creative Debugger destroyed");
                    WeakReference unused = a.f4202f = null;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f4208g.get() != null || h()) {
            return;
        }
        Activity a2 = this.f4203a.ai().a();
        if (a2 == null) {
            this.f4203a.D();
            if (v.a()) {
                this.f4203a.D().e("AppLovinSdk", "Failed to display Creative Debugger button");
                return;
            }
            return;
        }
        View findViewById = a2.findViewById(16908290);
        if (findViewById instanceof FrameLayout) {
            final FrameLayout frameLayout = (FrameLayout) findViewById;
            final View a3 = a(a2);
            frameLayout.addView(a3);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(150L);
            a3.startAnimation(alphaAnimation);
            final ViewTreeObserver viewTreeObserver = findViewById.getViewTreeObserver();
            final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.applovin.impl.a.a.a.4
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (a3.getParent() != null || a.this.f4208g.get() == null) {
                        return;
                    }
                    frameLayout.addView(a3);
                }
            };
            viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.a.a.a.5
                @Override // java.lang.Runnable
                public void run() {
                    frameLayout.removeView(a3);
                    a.this.f4208g = new WeakReference(null);
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
                    }
                }
            }, TimeUnit.SECONDS.toMillis(5L));
            this.f4208g = new WeakReference<>(a3);
        }
    }

    private Drawable k() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.rgb(5, 131, 170));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(Color.rgb(2, 98, 127));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }

    public String a(com.applovin.impl.a.a.a.a aVar) {
        Object c2 = aVar.c();
        l lVar = new l();
        lVar.b("Ad Info:\n");
        if (c2 instanceof e) {
            e eVar = (e) c2;
            lVar.a(LogConstants.KEY_NETWORK, "APPLOVIN").a(eVar).b(eVar);
        } else if (c2 instanceof com.applovin.impl.mediation.a.a) {
            lVar.a((com.applovin.impl.mediation.a.a) c2);
        }
        lVar.a(this.f4203a);
        lVar.a("Epoch Timestamp (ms)", Long.valueOf(aVar.d()));
        lVar.a("\nDebug Info:\n").a("Platform", "fireos".equals(this.f4203a.Y().f()) ? "Fire OS" : APSAnalytics.OS_NAME).a("AppLovin SDK Version", AppLovinSdk.VERSION).a("Plugin Version", this.f4203a.a(com.applovin.impl.sdk.c.b.dI)).a("App Package Name", this.f4204b.getPackageName()).a("Device", String.format("%s %s (%s)", Build.BRAND, Build.MODEL, Build.DEVICE)).a("OS Version", Build.VERSION.RELEASE).a("AppLovin Random Token", this.f4203a.p()).a("Ad Review Version", com.applovin.impl.sdk.e.a()).a(d(c2));
        return lVar.toString();
    }

    public void a() {
        if (c() && this.f4209h == null) {
            j jVar = new j(this.f4203a, this);
            this.f4209h = jVar;
            jVar.a();
        }
    }

    public void a(com.applovin.impl.a.a.a.a aVar, Context context, boolean z) {
        Object c2 = aVar.c();
        String a2 = a(aVar);
        l lVar = new l();
        if (z) {
            lVar.b("Please describe the issue you had with this ad:\n\n\n\n");
        }
        lVar.b(a2);
        String b2 = this.f4203a.an().b(c2);
        if (b2 != null) {
            lVar.a("\nBid Response:\n");
            lVar.a(b2);
        }
        String str = "AppLovin Ad Report";
        Intent createChooser = Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.SUBJECT", c2 instanceof e ? "AppLovin Ad Report" : "MAX Ad Report").putExtra("android.intent.extra.TEXT", lVar.toString()).setPackage(null), "Share Ad Report");
        if (z) {
            try {
                Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse(MailTo.MAILTO_SCHEME));
                if (!(c2 instanceof e)) {
                    str = "MAX Ad Report";
                }
                context.startActivity(intent.putExtra("android.intent.extra.SUBJECT", str).putExtra("android.intent.extra.TEXT", lVar.toString()).setPackage("com.google.android.gm"));
                return;
            } catch (ActivityNotFoundException unused) {
            }
        }
        context.startActivity(createChooser);
    }

    public void a(Object obj) {
        if (c() && obj != null) {
            if (!c.a(obj) || c(obj)) {
                if (c.b(obj) && c(obj)) {
                    return;
                }
                synchronized (this.f4206d) {
                    this.f4205c.add(0, new com.applovin.impl.a.a.a.a(obj, System.currentTimeMillis()));
                    if (this.f4205c.size() > 10) {
                        List<com.applovin.impl.a.a.a.a> list = this.f4205c;
                        list.remove(list.size() - 1);
                    }
                }
            }
        }
    }

    public String b(Object obj) {
        JSONObject d2;
        if (obj instanceof e) {
            return ((e) obj).getOriginalFullResponse().toString();
        }
        if (obj instanceof com.applovin.impl.mediation.a.a) {
            String j = ((com.applovin.impl.mediation.a.a) obj).j();
            return (!c.b(obj) || (d2 = new com.applovin.impl.sdk.ad.c(j, this.f4203a).d()) == null) ? j : d2.toString();
        }
        return null;
    }

    public void b() {
        ArrayList arrayList;
        if (h() || !l.compareAndSet(false, true)) {
            v.i("AppLovinSdk", "Creative Debugger is already showing");
            return;
        }
        synchronized (this.f4206d) {
            arrayList = new ArrayList(this.f4205c);
        }
        this.f4207e.a(arrayList, this.f4203a);
        if (!this.k) {
            i();
            this.k = true;
        }
        Intent intent = new Intent(this.f4204b, MaxCreativeDebuggerActivity.class);
        intent.setFlags(268435456);
        v.f("AppLovinSdk", "Starting Creative Debugger...");
        this.f4204b.startActivity(intent);
    }

    public boolean c() {
        return ((Boolean) this.f4203a.a(com.applovin.impl.sdk.c.b.bP)).booleanValue() && this.f4203a.q().isCreativeDebuggerEnabled();
    }

    @Override // com.applovin.impl.sdk.utils.j.a
    public void d() {
        if (this.j == 0) {
            this.i = p.a(TimeUnit.SECONDS.toMillis(3L), this.f4203a, new Runnable() { // from class: com.applovin.impl.a.a.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.j = 0;
                }
            });
        }
        int i = this.j;
        if (i % 2 == 0) {
            this.j = i + 1;
        }
    }

    @Override // com.applovin.impl.sdk.utils.j.a
    public void e() {
        int i = this.j;
        if (i % 2 == 1) {
            this.j = i + 1;
        }
        if (this.j / 2 == 2) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.a.a.a.3
                @Override // java.lang.Runnable
                public void run() {
                    a.this.j();
                }
            });
            this.j = 0;
            this.i.d();
        }
    }
}
