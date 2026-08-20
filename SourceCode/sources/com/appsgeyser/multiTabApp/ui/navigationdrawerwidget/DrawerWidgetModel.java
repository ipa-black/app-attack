package com.appsgeyser.multiTabApp.ui.navigationdrawerwidget;

import android.graphics.drawable.Drawable;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
/* loaded from: classes2.dex */
public class DrawerWidgetModel implements IOptionsMenuItemSelectedListener {
    private String description;
    private final Drawable imageDrawable;
    private boolean isDivider;
    private final int menuId;

    public DrawerWidgetModel(Drawable drawable, int i, String str) {
        this.imageDrawable = drawable;
        this.menuId = i;
        this.description = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable getImageDrawable() {
        return this.imageDrawable;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public boolean isDivider() {
        return this.isDivider;
    }

    public void setDivider(boolean z) {
        this.isDivider = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMenuId() {
        return this.menuId;
    }

    @Override // com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.IOptionsMenuItemSelectedListener
    public void select() {
        final MainNavigationActivity mainNavigationActivity = Factory.getInstance().getMainNavigationActivity();
        if (mainNavigationActivity != null) {
            mainNavigationActivity.runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.DrawerWidgetModel.1
                @Override // java.lang.Runnable
                public void run() {
                    mainNavigationActivity.onOptionsItemSelected(DrawerWidgetModel.this.menuId, null);
                }
            });
        }
    }
}
