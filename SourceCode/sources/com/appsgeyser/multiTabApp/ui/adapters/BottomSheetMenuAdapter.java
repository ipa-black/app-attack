package com.appsgeyser.multiTabApp.ui.adapters;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.appsgeyser.multiTabApp.controllers.BottomMenuController;
import com.appsgeyser.multiTabApp.model.WidgetEntity;
import com.w_19998775.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
public class BottomSheetMenuAdapter extends RecyclerView.Adapter<BottomSheetMenuViewHolder> {
    private View lastCheckedView;
    private OnItemClickListener onItemClickListener;
    private List<WidgetEntity> widgetEntities;
    private HashMap<String, Drawable> iconsMap = new HashMap<>();
    private int selectedPosition = -1;

    /* loaded from: classes2.dex */
    public interface OnItemClickListener {
        void onItemClick(View view, int i, String str);
    }

    public BottomSheetMenuAdapter(List<WidgetEntity> list, OnItemClickListener onItemClickListener) {
        this.widgetEntities = new ArrayList();
        this.widgetEntities = list;
        this.onItemClickListener = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public BottomSheetMenuViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new BottomSheetMenuViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.bottom_additional_menu_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final BottomSheetMenuViewHolder bottomSheetMenuViewHolder, int i) {
        boolean z = i == this.selectedPosition;
        bottomSheetMenuViewHolder.bind(this.widgetEntities.get(i), z);
        if (z) {
            this.lastCheckedView = bottomSheetMenuViewHolder.itemView;
        }
        bottomSheetMenuViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.multiTabApp.ui.adapters.BottomSheetMenuAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BottomSheetMenuAdapter.this.selectedPosition = bottomSheetMenuViewHolder.getAdapterPosition();
                BottomSheetMenuAdapter.this.onItemClickListener.onItemClick(view, BottomSheetMenuAdapter.this.selectedPosition, ((WidgetEntity) BottomSheetMenuAdapter.this.widgetEntities.get(BottomSheetMenuAdapter.this.selectedPosition)).getTabId());
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.widgetEntities.size();
    }

    public void setItemChecked(WidgetEntity widgetEntity) {
        for (int i = 0; i < this.widgetEntities.size(); i++) {
            if (this.widgetEntities.get(i).getTabId().equals(widgetEntity.getTabId())) {
                this.selectedPosition = i;
                uncheckLastView();
                notifyItemChanged(i);
                return;
            }
        }
    }

    public void uncheckLastView() {
        View view = this.lastCheckedView;
        if (view != null) {
            TextView textView = (TextView) view.findViewById(R.id.bottom_sheet_menu_item_tab_name);
            textView.setTextColor(textView.getContext().getResources().getColor(R.color.materialTransparentWhite500));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class BottomSheetMenuViewHolder extends RecyclerView.ViewHolder {
        private ImageView icon;
        private TextView tabName;

        BottomSheetMenuViewHolder(View view) {
            super(view);
            this.icon = (ImageView) view.findViewById(R.id.bottom_sheet_menu_item_tab_icon);
            TextView textView = (TextView) view.findViewById(R.id.bottom_sheet_menu_item_tab_name);
            this.tabName = textView;
            textView.setTextColor(view.getContext().getResources().getColorStateList(R.color.bottom_navigation_item_background_colors));
        }

        void bind(WidgetEntity widgetEntity, boolean z) {
            Drawable drawableIconFromAssets;
            if (!widgetEntity.getTabIcon().equals("")) {
                if (BottomSheetMenuAdapter.this.iconsMap.containsKey(widgetEntity.getTabId())) {
                    drawableIconFromAssets = (Drawable) BottomSheetMenuAdapter.this.iconsMap.get(widgetEntity.getTabId());
                } else {
                    drawableIconFromAssets = BottomMenuController.getDrawableIconFromAssets(this.icon.getContext(), "tabIcons/" + widgetEntity.getTabIcon());
                    BottomSheetMenuAdapter.this.iconsMap.put(widgetEntity.getTabId(), drawableIconFromAssets);
                }
                if (drawableIconFromAssets != null) {
                    this.icon.setImageDrawable(drawableIconFromAssets);
                    this.icon.setVisibility(0);
                } else {
                    this.icon.setVisibility(8);
                }
            } else {
                this.icon.setVisibility(8);
            }
            this.tabName.setText(widgetEntity.getTabName());
            if (z) {
                this.tabName.setTextColor(this.icon.getContext().getResources().getColor(R.color.white));
            } else {
                this.tabName.setTextColor(this.icon.getContext().getResources().getColor(R.color.materialTransparentWhite500));
            }
        }
    }
}
