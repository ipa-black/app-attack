package com.criteo.publisher.advancednative;

import android.graphics.Rect;
import android.view.View;
/* compiled from: VisibilityChecker.java */
/* loaded from: classes2.dex */
public class o {
    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(View view) {
        if (!view.isShown() || view.getWidth() == 0 || view.getHeight() == 0) {
            return false;
        }
        return view.getGlobalVisibleRect(new Rect());
    }
}
