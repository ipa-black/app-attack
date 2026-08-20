package com.appsgeyser.multiTabApp.ui.navigationdrawerwidget;

import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.w_19998775.R;
/* loaded from: classes2.dex */
class SelectItemController {
    SelectItemController() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void selectItem(ListView listView, int i, MainNavigationActivity mainNavigationActivity) {
        for (int i2 = 1; i2 < listView.getCount(); i2++) {
            View childAt = listView.getChildAt(i2);
            if (childAt != null) {
                setColorInItem(childAt, i2, i, mainNavigationActivity);
            } else {
                setColorInItem(listView.getAdapter().getView(i2, null, (ListView) mainNavigationActivity.findViewById(R.id.left_drawer_widget)), i2, i, mainNavigationActivity);
            }
        }
    }

    private static void setColorInItem(View view, int i, int i2, MainNavigationActivity mainNavigationActivity) {
        TextView textView = (TextView) view.findViewById(R.id.drawer_element_textView_description);
        if (textView != null) {
            if (i == i2) {
                view.setBackgroundColor(ContextCompat.getColor(mainNavigationActivity, R.color.selected));
                textView.setTextColor(ContextCompat.getColor(mainNavigationActivity, R.color.colorPrimary));
                return;
            }
            view.setBackgroundColor(ContextCompat.getColor(mainNavigationActivity, R.color.transparent));
            textView.setTextColor(ContextCompat.getColor(mainNavigationActivity, R.color.deactiveDrawerText));
        }
    }
}
