package com.appsgeyser.multiTabApp.ui.navigationdrawerwidget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.w_19998775.R;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class NavigationDrawerWidgetAdapter extends ArrayAdapter<DrawerWidgetModel> {
    private final ArrayList<DrawerWidgetModel> objects;

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.objects.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public DrawerWidgetModel getItem(int i) {
        return this.objects.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NavigationDrawerWidgetAdapter(Context context, ArrayList<DrawerWidgetModel> arrayList) {
        super(context, 0, arrayList);
        this.objects = arrayList;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        DrawerWidgetModel drawerWidgetModel = this.objects.get(i);
        if (view == null) {
            LayoutInflater layoutInflater = ((MainNavigationActivity) getContext()).getLayoutInflater();
            if (!drawerWidgetModel.isDivider() && drawerWidgetModel.getImageDrawable() != null) {
                view = layoutInflater.inflate(R.layout.navigation_drawer_widget_list_item_with_icon, viewGroup, false);
            } else if (!drawerWidgetModel.isDivider() && drawerWidgetModel.getImageDrawable() == null) {
                view = layoutInflater.inflate(R.layout.navigation_drawer_widget_list_item, viewGroup, false);
            } else {
                view = layoutInflater.inflate(R.layout.list_view_divider, viewGroup, false);
                view.setOnClickListener(null);
                view.setOnLongClickListener(null);
                view.setLongClickable(false);
            }
        }
        DrawerWidgetModel item = getItem(i);
        if (item != null) {
            ImageView imageView = (ImageView) view.findViewById(R.id.navigation_drawer_widget_list_item_with_icon_icon);
            TextView textView = (TextView) view.findViewById(R.id.drawer_element_textView_description);
            if (imageView != null) {
                imageView.setImageDrawable(item.getImageDrawable());
            }
            if (textView != null) {
                textView.setText(item.getDescription());
            }
        }
        return view;
    }
}
