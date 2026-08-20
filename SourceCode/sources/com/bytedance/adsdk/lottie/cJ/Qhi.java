package com.bytedance.adsdk.lottie.cJ;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bytedance.adsdk.lottie.ac;
import com.bytedance.adsdk.lottie.ac.Sf;
import java.util.HashMap;
import java.util.Map;
/* compiled from: FontAssetManager.java */
/* loaded from: classes2.dex */
public class Qhi {
    private final AssetManager CJ;
    private ac fl;
    private final Sf<String> Qhi = new Sf<>();
    private final Map<Sf<String>, Typeface> cJ = new HashMap();
    private final Map<String, Typeface> ac = new HashMap();
    private String Tgh = ".ttf";

    public Qhi(Drawable.Callback callback, ac acVar) {
        this.fl = acVar;
        if (!(callback instanceof View)) {
            this.CJ = null;
        } else {
            this.CJ = ((View) callback).getContext().getAssets();
        }
    }

    public void Qhi(ac acVar) {
        this.fl = acVar;
    }

    public void Qhi(String str) {
        this.Tgh = str;
    }

    public Typeface Qhi(com.bytedance.adsdk.lottie.ac.ac acVar) {
        this.Qhi.Qhi(acVar.Qhi(), acVar.ac());
        Typeface typeface = this.cJ.get(this.Qhi);
        if (typeface != null) {
            return typeface;
        }
        Typeface Qhi = Qhi(cJ(acVar), acVar.ac());
        this.cJ.put(this.Qhi, Qhi);
        return Qhi;
    }

    private Typeface cJ(com.bytedance.adsdk.lottie.ac.ac acVar) {
        Typeface typeface;
        String Qhi = acVar.Qhi();
        Typeface typeface2 = this.ac.get(Qhi);
        if (typeface2 != null) {
            return typeface2;
        }
        String ac = acVar.ac();
        String cJ = acVar.cJ();
        ac acVar2 = this.fl;
        if (acVar2 != null) {
            typeface = acVar2.Qhi(Qhi, ac, cJ);
            if (typeface == null) {
                typeface = this.fl.Qhi(Qhi);
            }
        } else {
            typeface = null;
        }
        ac acVar3 = this.fl;
        if (acVar3 != null && typeface == null) {
            String cJ2 = acVar3.cJ(Qhi, ac, cJ);
            if (cJ2 == null) {
                cJ2 = this.fl.cJ(Qhi);
            }
            if (cJ2 != null) {
                try {
                    typeface = Typeface.createFromAsset(this.CJ, cJ2);
                } catch (Throwable unused) {
                    typeface = Typeface.DEFAULT;
                }
            }
        }
        if (acVar.CJ() != null) {
            return acVar.CJ();
        }
        if (typeface == null) {
            try {
                typeface = Typeface.createFromAsset(this.CJ, "fonts/" + Qhi + this.Tgh);
            } catch (Throwable unused2) {
                typeface = Typeface.DEFAULT;
            }
        }
        this.ac.put(Qhi, typeface);
        return typeface;
    }

    private Typeface Qhi(Typeface typeface, String str) {
        boolean contains = str.contains("Italic");
        boolean contains2 = str.contains("Bold");
        int i = (contains && contains2) ? 3 : contains ? 2 : contains2 ? 1 : 0;
        return typeface.getStyle() == i ? typeface : Typeface.create(typeface, i);
    }
}
