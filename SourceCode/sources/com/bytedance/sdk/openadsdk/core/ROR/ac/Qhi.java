package com.bytedance.sdk.openadsdk.core.ROR.ac;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.HashSet;
import java.util.Set;
/* compiled from: ResourceHelper.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static final Set<String> Qhi = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.1
        {
            add(MimeTypes.IMAGE_JPEG);
            add("image/png");
            add("image/bmp");
            add("image/gif");
            add("image/jpg");
        }
    };
    public static Set<String> cJ = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.2
        {
            add("application/x-javascript");
        }
    };

    /* compiled from: ResourceHelper.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0217Qhi {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    /* compiled from: ResourceHelper.java */
    /* loaded from: classes2.dex */
    public enum cJ {
        HTML_RESOURCE,
        STATIC_RESOURCE,
        IFRAME_RESOURCE
    }

    public static Point Qhi(Context context, int i, int i2, cJ cJVar) {
        if (context == null) {
            context = HzH.Qhi();
        }
        Point point = new Point(i, i2);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        int cJ2 = zn.cJ(context, i);
        int cJ3 = zn.cJ(context, i2);
        if (cJ2 > width || cJ3 > height) {
            Point point2 = new Point();
            if (cJ.HTML_RESOURCE == cJVar) {
                point2.x = Math.min(width, cJ2);
                point2.y = Math.min(height, cJ3);
            } else {
                float f2 = cJ2;
                float f3 = f2 / width;
                float f4 = cJ3;
                float f5 = f4 / height;
                if (f3 >= f5) {
                    point2.x = width;
                    point2.y = (int) (f4 / f3);
                } else {
                    point2.x = (int) (f2 / f5);
                    point2.y = height;
                }
            }
            if (point2.x < 0 || point2.y < 0) {
                return point;
            }
            point2.x = zn.ac(context, point2.x);
            point2.y = zn.ac(context, point2.y);
            return point2;
        }
        return point;
    }
}
