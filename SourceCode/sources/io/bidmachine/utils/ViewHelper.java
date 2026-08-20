package io.bidmachine.utils;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import io.bidmachine.core.Logger;
/* loaded from: classes5.dex */
public class ViewHelper {
    public static boolean belongTo(ViewGroup viewGroup, View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) parent;
            return viewGroup2.equals(viewGroup) || belongTo(viewGroup, viewGroup2);
        }
        return false;
    }

    public static void removeViewFromParent(View view) {
        if (view != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }

    public static <T extends View> T findViewByClassName(ViewGroup viewGroup, Class<T> cls) {
        try {
            if (viewGroup.getClass() == cls) {
                return viewGroup;
            }
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof ViewGroup) {
                    return (T) findViewByClassName((ViewGroup) childAt, cls);
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void safeAddSingleView(ViewGroup viewGroup, View view) {
        safeAddSingleView(viewGroup, view, null);
    }

    public static void safeAddSingleView(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        try {
            viewGroup.removeAllViews();
        } catch (Exception e2) {
            Logger.log(e2);
        }
        safeAddView(viewGroup, view, layoutParams);
    }

    public static void safeAddView(ViewGroup viewGroup, View view) {
        safeAddView(viewGroup, view, null);
    }

    public static void safeAddView(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        try {
            removeViewFromParent(view);
            if (layoutParams != null) {
                viewGroup.addView(view, layoutParams);
            } else {
                viewGroup.addView(view);
            }
        } catch (Exception e2) {
            Logger.log(e2);
        }
    }
}
