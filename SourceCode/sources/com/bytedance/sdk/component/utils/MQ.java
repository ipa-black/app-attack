package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.reflect.Method;
/* compiled from: ResourceHelp.java */
/* loaded from: classes2.dex */
public final class MQ {
    private static String CJ = null;
    private static Context Qhi = null;
    private static boolean Tgh = false;
    private static Resources ac = null;
    private static String cJ = null;
    private static boolean fl = false;

    public static void Qhi(Context context) {
        Qhi = context;
    }

    public static void Qhi(String str) {
        CJ = str;
    }

    private static String CJ(Context context) {
        if (CJ == null) {
            CJ = context.getPackageName();
        }
        return CJ;
    }

    private static int Qhi(Context context, String str, String str2) {
        int identifier = cJ(context).getIdentifier(str, str2, CJ(context));
        if (identifier == 0) {
            if (!fl) {
                ac(context);
                return cJ(context).getIdentifier(str, str2, CJ(context));
            }
            return context.getResources().getIdentifier(str, str2, CJ(context));
        }
        return identifier;
    }

    public static String Qhi(Context context, String str) {
        return cJ(context).getString(cJ(context, str));
    }

    public static int cJ(Context context, String str) {
        return Qhi(context, str, TypedValues.Custom.S_STRING);
    }

    public static Drawable ac(Context context, String str) {
        return cJ(context).getDrawable(CJ(context, str));
    }

    public static int CJ(Context context, String str) {
        return Qhi(context, str, "drawable");
    }

    public static int fl(Context context, String str) {
        return Qhi(context, str, "id");
    }

    public static int Tgh(Context context, String str) {
        return Qhi(context, str, TtmlNode.TAG_STYLE);
    }

    public static int ROR(Context context, String str) {
        return cJ(context).getColor(Sf(context, str));
    }

    public static int Sf(Context context, String str) {
        return Qhi(context, str, "color");
    }

    public static int hm(Context context, String str) {
        return Qhi(context, str, "anim");
    }

    public static Resources cJ(Context context) {
        Resources resources = ac;
        if (resources == null) {
            resources = null;
        }
        Context context2 = Qhi;
        if (context2 != null) {
            resources = context2.getResources();
        }
        return resources == null ? context.getResources() : resources;
    }

    public static synchronized void ac(Context context) {
        synchronized (MQ.class) {
            try {
                if (TextUtils.isEmpty(cJ)) {
                    return;
                }
                Resources resources = context.getResources();
                ac = new Resources(cJ(resources.getAssets(), cJ + "/apk/base-1.apk"), resources.getDisplayMetrics(), resources.getConfiguration());
                CJ = context.getPackageName();
                fl = true;
            } catch (Throwable th) {
                Log.e("ResourceHelp", "makePluginResources failed", th);
            }
        }
    }

    private static AssetManager cJ(AssetManager assetManager, String str) {
        AssetManager assetManager2;
        try {
            if (assetManager.getClass().getName().equals("android.content.res.BaiduAssetManager")) {
                assetManager2 = (AssetManager) Class.forName("android.content.res.BaiduAssetManager").getConstructor(new Class[0]).newInstance(new Object[0]);
            } else {
                assetManager2 = (AssetManager) AssetManager.class.newInstance();
            }
            Qhi(assetManager2, str);
            assetManager = assetManager2;
        } catch (Exception unused) {
            Qhi(assetManager, str);
        }
        try {
            pM.Qhi(assetManager, "ensureStringBlocks", new Object[0]);
        } catch (Exception unused2) {
        }
        return assetManager;
    }

    public static boolean Qhi(AssetManager assetManager, String str) {
        Method Qhi2 = pM.Qhi((Class<?>) AssetManager.class, "addAssetPath", (Class<?>[]) new Class[]{String.class});
        if (Qhi2 == null) {
            Qhi2 = pM.Qhi((Class<?>) AssetManager.class, "addAssetPath", (Class<?>[]) new Class[]{String.class});
        }
        if (Qhi2 != null) {
            int i = 3;
            while (true) {
                int i2 = i - 1;
                if (i < 0) {
                    break;
                } else if (((Integer) Qhi2.invoke(assetManager, str)).intValue() != 0) {
                    return true;
                } else {
                    i = i2;
                }
            }
        }
        return false;
    }
}
