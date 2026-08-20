package com.appsgeyser.multiTabApp.ui.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.appsgeyser.multiTabApp.controllers.ITabContentController;
/* loaded from: classes2.dex */
public class TabContent extends RelativeLayout {

    /* loaded from: classes2.dex */
    public enum TabType {
        WEB,
        PDF
    }

    protected void init(ITabContentController iTabContentController) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TabContent(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TabContent(Context context) {
        super(context);
    }
}
