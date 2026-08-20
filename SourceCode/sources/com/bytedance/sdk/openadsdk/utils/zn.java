package com.bytedance.sdk.openadsdk.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Picture;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar2;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UIUtils.java */
/* loaded from: classes2.dex */
public class zn {
    private static int CJ = -1;
    private static float Qhi = -1.0f;
    private static float ROR = -1.0f;
    private static Boolean Sf = null;
    private static WindowManager Tgh = null;
    private static float ac = -1.0f;
    private static int cJ = -1;
    private static int fl = -1;
    private static final Object hm = new Object();

    private static boolean Qhi(int i) {
        return i == 0 || i == 8 || i == 4;
    }

    private static boolean cJ() {
        return Qhi < 0.0f || cJ < 0 || ac < 0.0f || CJ < 0 || fl < 0;
    }

    public static void Qhi(Context context) {
        Qhi(context, false);
    }

    public static void Qhi(Context context, boolean z) {
        Context Qhi2 = context == null ? com.bytedance.sdk.openadsdk.core.HzH.Qhi() : context;
        if (Qhi2 == null) {
            return;
        }
        Tgh = (WindowManager) Qhi2.getSystemService("window");
        if (cJ() || z) {
            DisplayMetrics displayMetrics = Qhi2.getResources().getDisplayMetrics();
            Qhi = displayMetrics.density;
            cJ = displayMetrics.densityDpi;
            ac = displayMetrics.scaledDensity;
            CJ = displayMetrics.widthPixels;
            fl = displayMetrics.heightPixels;
        }
        if (context == null || context.getResources() == null || context.getResources().getConfiguration() == null) {
            return;
        }
        if (context.getResources().getConfiguration().orientation == 1) {
            int i = CJ;
            int i2 = fl;
            if (i > i2) {
                CJ = i2;
                fl = i;
                return;
            }
            return;
        }
        int i3 = CJ;
        int i4 = fl;
        if (i3 < i4) {
            CJ = i4;
            fl = i3;
        }
    }

    public static int Qhi(Context context, float f2) {
        Qhi(context);
        float Tgh2 = Tgh(context);
        if (Tgh2 <= 0.0f) {
            Tgh2 = 1.0f;
        }
        return (int) ((f2 / Tgh2) + 0.5f);
    }

    public static int cJ(Context context, float f2) {
        return Float.valueOf(Qhi(context, f2, true)).intValue();
    }

    public static float Qhi(Context context, float f2, boolean z) {
        Qhi(context);
        return (f2 * fl(context)) + (z ? 0.5f : 0.0f);
    }

    public static int ac(Context context, float f2) {
        Qhi(context, true);
        float fl2 = fl(context);
        if (fl2 <= 0.0f) {
            fl2 = 1.0f;
        }
        return (int) ((f2 / fl2) + 0.5f);
    }

    public static int[] cJ(Context context) {
        if (context == null) {
            return null;
        }
        if (Tgh == null) {
            Tgh = (WindowManager) com.bytedance.sdk.openadsdk.core.HzH.Qhi().getSystemService("window");
        }
        int[] iArr = new int[2];
        WindowManager windowManager = Tgh;
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            try {
                Point point = new Point();
                Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
                i = point.x;
                i2 = point.y;
            } catch (Exception unused) {
            }
            iArr[0] = i;
            iArr[1] = i2;
        }
        if (iArr[0] <= 0 || iArr[1] <= 0) {
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            iArr[0] = displayMetrics2.widthPixels;
            iArr[1] = displayMetrics2.heightPixels;
        }
        return iArr;
    }

    public static int ac(Context context) {
        Qhi(context);
        return CJ;
    }

    public static int CJ(Context context) {
        Qhi(context);
        return fl;
    }

    public static float fl(Context context) {
        Qhi(context, true);
        return Qhi;
    }

    public static float Tgh(Context context) {
        Qhi(context);
        return ac;
    }

    public static int ROR(Context context) {
        Qhi(context);
        return cJ;
    }

    public static int[] Qhi(View view) {
        if (view == null || view.getVisibility() != 0) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    public static int[] cJ(View view) {
        if (view != null) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return iArr;
        }
        return null;
    }

    public static int[] ac(View view) {
        if (view != null) {
            return new int[]{view.getWidth(), view.getHeight()};
        }
        return null;
    }

    public static void Qhi(View view, int i) {
        if (view == null || view.getVisibility() == i || !Qhi(i)) {
            return;
        }
        view.setVisibility(i);
    }

    public static boolean CJ(View view) {
        return view != null && view.getVisibility() == 0;
    }

    public static void Qhi(TextView textView, CharSequence charSequence) {
        if (textView == null || TextUtils.isEmpty(charSequence)) {
            return;
        }
        textView.setText(charSequence);
    }

    public static void Qhi(View view, int i, int i2, int i3, int i4) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || (layoutParams = view.getLayoutParams()) == null || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        Qhi(view, (ViewGroup.MarginLayoutParams) layoutParams, i, i2, i3, i4);
    }

    private static void Qhi(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4) {
        if (view == null || marginLayoutParams == null) {
            return;
        }
        if (marginLayoutParams.leftMargin == i && marginLayoutParams.topMargin == i2 && marginLayoutParams.rightMargin == i3 && marginLayoutParams.bottomMargin == i4) {
            return;
        }
        if (i != -3) {
            marginLayoutParams.leftMargin = i;
        }
        if (i2 != -3) {
            marginLayoutParams.topMargin = i2;
        }
        if (i3 != -3) {
            marginLayoutParams.rightMargin = i3;
        }
        if (i4 != -3) {
            marginLayoutParams.bottomMargin = i4;
        }
        view.setLayoutParams(marginLayoutParams);
    }

    private static Bitmap Qhi(WebView webView) {
        Bitmap bitmap = null;
        try {
            Picture capturePicture = webView.capturePicture();
            bitmap = Bitmap.createBitmap(capturePicture.getWidth(), capturePicture.getHeight(), Bitmap.Config.ARGB_8888);
            capturePicture.draw(new Canvas(bitmap));
            return bitmap;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("UIUtils", th.getMessage());
            return bitmap;
        }
    }

    public static void fl(View view) {
        if (view == null) {
            return;
        }
        final WeakReference weakReference = new WeakReference(view);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.utils.zn.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                View view2 = (View) weakReference.get();
                if (view2 != null) {
                    zn.Qhi(view2, 8);
                    view2.setAlpha(1.0f);
                }
            }
        });
        ofFloat.setDuration(800L);
        ofFloat.start();
    }

    public static void Tgh(View view) {
        if (view == null) {
            return;
        }
        Qhi(view, 0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.utils.zn.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationEnd(animator);
            }
        });
        ofFloat.setDuration(300L);
        ofFloat.start();
    }

    public static Pair<Integer, Integer> Sf(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.HzH.Qhi();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return new Pair<>(Integer.valueOf(point.x), Integer.valueOf(point.y));
    }

    public static int hm(Context context) {
        return ((Integer) Sf(context).second).intValue();
    }

    public static int WAv(Context context) {
        return ((Integer) Sf(context).first).intValue();
    }

    public static float Qhi() {
        float f2 = ROR;
        if (f2 > 0.0f) {
            return f2;
        }
        Resources resources = com.bytedance.sdk.openadsdk.core.HzH.Qhi().getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
        if (identifier > 0) {
            float dimensionPixelSize = resources.getDimensionPixelSize(identifier);
            ROR = dimensionPixelSize;
            return dimensionPixelSize;
        }
        return 0.0f;
    }

    public static void Qhi(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(3846);
            activity.getWindow().addFlags(1792);
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("UIUtils", e2.getMessage());
        }
    }

    public static void cJ(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(1792);
            activity.getWindow().clearFlags(1792);
        } catch (Exception unused) {
        }
    }

    public static boolean ac(Activity activity) {
        if (Sf == null) {
            synchronized (hm) {
                if (Sf == null) {
                    boolean z = true;
                    if (!CJ(activity) && Qhi("ro.miui.notch", activity) != 1 && !Gm(activity) && !pA(activity) && !zc(activity) && !ABk(activity) && !iMK(activity)) {
                        z = false;
                    }
                    Sf = Boolean.valueOf(z);
                }
            }
        }
        return Sf.booleanValue();
    }

    public static boolean CJ(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
                return (rootWindowInsets != null ? rootWindowInsets.getDisplayCutout() : null) != null;
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("UIUtils", e2.getMessage());
                return false;
            }
        }
        return false;
    }

    public static int Qhi(String str, Activity activity) {
        if (CQU.fl()) {
            try {
                Class<?> loadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
                return ((Integer) loadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(loadClass, new String(str), 0)).intValue();
            } catch (ClassNotFoundException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("UIUtils", e2.getMessage());
                return 0;
            } catch (IllegalAccessException e3) {
                com.bytedance.sdk.component.utils.ABk.Qhi("UIUtils", e3.getMessage());
                return 0;
            } catch (IllegalArgumentException e4) {
                com.bytedance.sdk.component.utils.ABk.Qhi("UIUtils", e4.getMessage());
                return 0;
            } catch (NoSuchMethodException e5) {
                com.bytedance.sdk.component.utils.ABk.Qhi("UIUtils", e5.getMessage());
                return 0;
            } catch (InvocationTargetException e6) {
                com.bytedance.sdk.component.utils.ABk.Qhi("UIUtils", e6.getMessage());
                return 0;
            }
        }
        return 0;
    }

    public static boolean Gm(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    public static boolean zc(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) loadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(loadClass, 32)).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    public static boolean ABk(Context context) {
        return Build.MODEL.equals("IN2010") || Build.MODEL.equals("IN2020") || Build.MODEL.equals("KB2000") || Build.MODEL.startsWith("ONEPLUS");
    }

    public static boolean iMK(Context context) {
        try {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("config_mainBuiltInDisplayCutout", TypedValues.Custom.S_STRING, MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
            String string = identifier > 0 ? resources.getString(identifier) : null;
            if (string != null) {
                if (!TextUtils.isEmpty(string)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean pA(Context context) {
        return context.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    public static void Qhi(View view, View.OnClickListener onClickListener, String str) {
        if (view == null) {
            com.bytedance.sdk.component.utils.ABk.Qhi("OnclickListener ", str + " is null , can not set OnClickListener !!!");
        } else {
            view.setOnClickListener(onClickListener);
        }
    }

    public static void Qhi(View view, View.OnTouchListener onTouchListener, String str) {
        if (view == null) {
            com.bytedance.sdk.component.utils.ABk.Qhi("OnTouchListener ", str + " is null , can not set OnTouchListener !!!");
        } else {
            view.setOnTouchListener(onTouchListener);
        }
    }

    public static void Qhi(View view, float f2) {
        if (view == null) {
            return;
        }
        view.setAlpha(f2);
    }

    public static void Qhi(TextView textView, TTRatingBar2 tTRatingBar2, com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        Qhi(textView, tTRatingBar2, tPVar, 14);
    }

    public static void Qhi(TextView textView, TTRatingBar2 tTRatingBar2, com.bytedance.sdk.openadsdk.core.model.tP tPVar, int i) {
        Qhi(textView, tTRatingBar2, (tPVar == null || tPVar.pv() == null) ? -1.0d : tPVar.pv().CJ(), i);
    }

    public static void Qhi(TextView textView, TTRatingBar2 tTRatingBar2, double d2, int i) {
        if (d2 == -1.0d) {
            if (textView != null) {
                textView.setVisibility(8);
            }
            tTRatingBar2.setVisibility(8);
            return;
        }
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f", Double.valueOf(d2)));
        }
        Qhi(tTRatingBar2, d2, i);
    }

    public static void Qhi(TTRatingBar2 tTRatingBar2, double d2, int i) {
        if (d2 < 0.0d) {
            tTRatingBar2.setVisibility(8);
            return;
        }
        tTRatingBar2.setVisibility(0);
        tTRatingBar2.Qhi(d2, i);
    }

    public static Bitmap Qhi(SSWebView sSWebView) {
        WebView webView = sSWebView.getWebView();
        int layerType = webView.getLayerType();
        webView.setLayerType(1, null);
        Bitmap cJ2 = cJ(sSWebView);
        if (cJ2 == null) {
            cJ2 = Qhi(webView);
        }
        webView.setLayerType(layerType, null);
        if (cJ2 == null) {
            return null;
        }
        return com.bytedance.sdk.component.utils.fl.Qhi(cJ2, cJ2.getWidth() / 6, cJ2.getHeight() / 6);
    }

    public static void Qhi(final com.bytedance.sdk.openadsdk.core.model.tP tPVar, final String str, final String str2, final Bitmap bitmap, final String str3, final long j) {
        lG.cJ(new com.bytedance.sdk.component.Sf.hm("startCheckPlayableStatusPercentage") { // from class: com.bytedance.sdk.openadsdk.utils.zn.3
            @Override // java.lang.Runnable
            public void run() {
                zn.ac(tPVar, str, str2, bitmap, str3, j);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ac(final com.bytedance.sdk.openadsdk.core.model.tP tPVar, String str, String str2, final Bitmap bitmap, final String str3, final long j) {
        if (bitmap != null) {
            try {
                if (bitmap.getWidth() > 0 && bitmap.getHeight() > 0 && !bitmap.isRecycled()) {
                    com.bytedance.sdk.openadsdk.cJ.ac.Qhi(System.currentTimeMillis(), tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.utils.zn.4
                        @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
                        public JSONObject Qhi() {
                            try {
                                int Qhi2 = zn.Qhi(bitmap);
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("url", str3);
                                long j2 = j;
                                if (j2 != -1) {
                                    jSONObject.put("page_id", j2);
                                }
                                jSONObject.put("render_type", "h5");
                                jSONObject.put("render_type_2", 0);
                                jSONObject.put("is_blank", Qhi2 == 100 ? 1 : 0);
                                jSONObject.put("is_playable", com.bytedance.sdk.openadsdk.core.model.bxS.cJ(tPVar) ? 1 : 0);
                                jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(tPVar) ? 1 : 0);
                                JSONObject jSONObject2 = new JSONObject();
                                try {
                                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                                    return jSONObject2;
                                } catch (JSONException unused) {
                                    return jSONObject2;
                                }
                            } catch (JSONException unused2) {
                                return null;
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("UIUtils", "(Developers can ignore this detection exception)checkWebViewIsTransparent->throwable ex>>>".concat(String.valueOf(th)));
            }
        }
    }

    private static Bitmap cJ(SSWebView sSWebView) {
        if (sSWebView == null) {
            return null;
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(sSWebView.getWidth(), sSWebView.getHeight(), Bitmap.Config.RGB_565);
            sSWebView.draw(new Canvas(createBitmap));
            return createBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int Qhi(Bitmap bitmap) {
        try {
            ArrayList<Integer> cJ2 = cJ(bitmap);
            if (cJ2 == null) {
                return -1;
            }
            HashMap hashMap = new HashMap();
            Iterator<Integer> it = cJ2.iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                if (hashMap.containsKey(next)) {
                    Integer valueOf = Integer.valueOf(((Integer) hashMap.get(next)).intValue() + 1);
                    hashMap.remove(next);
                    hashMap.put(next, valueOf);
                } else {
                    hashMap.put(next, 1);
                }
            }
            int i = 0;
            int i2 = 0;
            for (Map.Entry entry : hashMap.entrySet()) {
                int intValue = ((Integer) entry.getValue()).intValue();
                if (i2 < intValue) {
                    i = ((Integer) entry.getKey()).intValue();
                    i2 = intValue;
                }
            }
            if (i == 0) {
                return -1;
            }
            return (int) ((i2 / ((bitmap.getWidth() * bitmap.getHeight()) * 1.0f)) * 100.0f);
        } catch (Throwable unused) {
            return -1;
        }
    }

    private static ArrayList<Integer> cJ(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i = width * height;
            int[] iArr = new int[i];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = iArr[i2];
                arrayList.add(Integer.valueOf(Color.rgb((16711680 & i3) >> 16, (65280 & i3) >> 8, i3 & 255)));
            }
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void cJ(View view, final float f2) {
        if (view != null && f2 > 0.0f) {
            view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.utils.zn.5
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    if (outline == null) {
                        return;
                    }
                    outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f2);
                }
            });
            view.setClipToOutline(true);
        }
    }

    public static void ROR(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }
}
