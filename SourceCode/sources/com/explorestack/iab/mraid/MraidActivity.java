package com.explorestack.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.Window;
import androidx.core.view.ViewCompat;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2.dex */
public class MraidActivity extends Activity {

    /* renamed from: d  reason: collision with root package name */
    public static final SparseArray<MraidInterstitial> f9269d = new SparseArray<>();

    /* renamed from: a  reason: collision with root package name */
    public Integer f9270a;

    /* renamed from: b  reason: collision with root package name */
    public MraidInterstitial f9271b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9272c = false;

    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f9273a;

        static {
            int[] iArr = new int[MraidType.values().length];
            f9273a = iArr;
            try {
                iArr[MraidType.Static.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9273a[MraidType.Video.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9273a[MraidType.Rewarded.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static Intent a(Context context, MraidType mraidType, int i) {
        Intent a2 = a(context, MraidActivity.class, mraidType, i);
        a2.addFlags(268435456);
        a2.addFlags(8388608);
        return a2;
    }

    public static Intent a(Context context, Class<?> cls, MraidType mraidType, int i) {
        Intent intent = new Intent(context, cls);
        intent.putExtra("InterstitialId", i);
        intent.putExtra("InterstitialType", mraidType);
        return intent;
    }

    public static void a(MraidInterstitial mraidInterstitial) {
        f9269d.put(mraidInterstitial.id, mraidInterstitial);
    }

    public static void a(Integer num) {
        if (num != null) {
            f9269d.remove(num.intValue());
        }
    }

    public static void show(Context context, MraidInterstitial mraidInterstitial, MraidType mraidType) {
        if (mraidInterstitial == null) {
            MraidLog.a("Mraid interstitial object not provided for display");
        } else if (context == null) {
            MraidLog.a("Context not provided for display mraid interstitial");
            mraidInterstitial.d();
        } else if (mraidType == null) {
            MraidLog.a("Mraid type not provided for display");
            mraidInterstitial.d();
        } else {
            try {
                a(mraidInterstitial);
                context.startActivity(a(context, mraidType, mraidInterstitial.id));
            } catch (Throwable th) {
                th.printStackTrace();
                mraidInterstitial.d();
                a(Integer.valueOf(mraidInterstitial.id));
            }
        }
    }

    public final void a() {
        MraidInterstitial mraidInterstitial = this.f9271b;
        if (mraidInterstitial != null) {
            mraidInterstitial.destroy();
            this.f9271b = null;
        }
        a(this.f9270a);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f9272c) {
            MraidInterstitial mraidInterstitial = this.f9271b;
            if (mraidInterstitial != null) {
                mraidInterstitial.dispatchClose();
            } else {
                Utils.finishActivityWithoutAnimation(this);
            }
        }
    }

    public void onBeforeCreate(Window window) {
        if (window == null) {
            return;
        }
        window.setBackgroundDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
    }

    public void onBeforeShowContent() {
        Utils.applyFullscreenActivityFlags(this);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        onBeforeCreate(getWindow());
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        if (!getIntent().hasExtra("InterstitialId")) {
            MraidLog.a("Mraid display cache id not provided");
            Utils.finishActivityWithoutAnimation(this);
            return;
        }
        Integer valueOf = Integer.valueOf(getIntent().getIntExtra("InterstitialId", 0));
        this.f9270a = valueOf;
        MraidInterstitial mraidInterstitial = f9269d.get(valueOf.intValue());
        this.f9271b = mraidInterstitial;
        if (mraidInterstitial == null) {
            MraidLog.a("Mraid interstitial not found in display cache, id=" + this.f9270a);
            Utils.finishActivityWithoutAnimation(this);
            return;
        }
        MraidType mraidType = (MraidType) getIntent().getSerializableExtra("InterstitialType");
        if (mraidType == null) {
            MraidLog.a("Mraid type not provided");
            Utils.finishActivityWithoutAnimation(this);
            this.f9271b.d();
            return;
        }
        onBeforeShowContent();
        int i = a.f9273a[mraidType.ordinal()];
        if (i == 1 || i == 2) {
            this.f9272c = true;
        } else if (i == 3) {
            this.f9272c = false;
        }
        try {
            this.f9271b.a((Activity) this, false);
        } catch (Exception e2) {
            MraidLog.a("Error showing Mraid interstitial", e2);
            Utils.finishActivityWithoutAnimation(this);
            this.f9271b.d();
            a();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f9271b == null || isChangingConfigurations()) {
            return;
        }
        this.f9271b.c();
        a();
    }
}
