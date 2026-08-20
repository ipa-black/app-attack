package com.appsgeyser.multiTabApp.ui.menu;

import android.content.Context;
import android.view.Menu;
/* loaded from: classes2.dex */
public class MenuGenerator {
    public static Menu newEmptyMenuInstance(Context context) {
        try {
            return (Menu) Class.forName("com.android.internal.view.menu.MenuBuilder").getDeclaredConstructor(Context.class).newInstance(context);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
