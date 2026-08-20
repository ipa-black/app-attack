package com.appsgeyser.multiTabApp.ui.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.appsgeyser.multiTabApp.utils.ThemePreset;
import com.appsgeyser.multiTabApp.utils.ThemeUtils;
import com.w_19998775.R;
/* loaded from: classes2.dex */
public class ThemingAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private ViewHolder.ViewHolderRadioButtonClicks onClickListener;
    private ThemePreset[] presets;
    private ThemePreset selectedPreset;

    /* loaded from: classes2.dex */
    public class ViewHolder_ViewBinding implements Unbinder {
        private ViewHolder target;
        private View view7f0a00f8;

        public ViewHolder_ViewBinding(final ViewHolder viewHolder, View view) {
            this.target = viewHolder;
            viewHolder.presetSelectedRadioButton = (RadioButton) Utils.findRequiredViewAsType(view, R.id.color_preset_card_radiobutton, "field 'presetSelectedRadioButton'", RadioButton.class);
            viewHolder.colorAccentImageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.color_preset_card_color_accent, "field 'colorAccentImageView'", ImageView.class);
            viewHolder.colorPrimaryImageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.color_preset_card_color_primary, "field 'colorPrimaryImageView'", ImageView.class);
            viewHolder.colorPrimaryDarkImageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.color_preset_card_color_primary_dark, "field 'colorPrimaryDarkImageView'", ImageView.class);
            View findRequiredView = Utils.findRequiredView(view, R.id.color_preset_card, "method 'themeSelected'");
            this.view7f0a00f8 = findRequiredView;
            findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.appsgeyser.multiTabApp.ui.adapters.ThemingAdapter.ViewHolder_ViewBinding.1
                @Override // butterknife.internal.DebouncingOnClickListener
                public void doClick(View view2) {
                    viewHolder.themeSelected();
                }
            });
        }

        @Override // butterknife.Unbinder
        public void unbind() {
            ViewHolder viewHolder = this.target;
            if (viewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.target = null;
            viewHolder.presetSelectedRadioButton = null;
            viewHolder.colorAccentImageView = null;
            viewHolder.colorPrimaryImageView = null;
            viewHolder.colorPrimaryDarkImageView = null;
            this.view7f0a00f8.setOnClickListener(null);
            this.view7f0a00f8 = null;
        }
    }

    public ThemingAdapter(ThemePreset[] themePresetArr, Context context, ViewHolder.ViewHolderRadioButtonClicks viewHolderRadioButtonClicks) {
        this.presets = themePresetArr;
        this.context = context;
        this.onClickListener = viewHolderRadioButtonClicks;
        this.selectedPreset = ThemePreset.findByNoActionBarName(ThemeUtils.getActivityThemeName(context));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.color_preset_card, viewGroup, false), this.onClickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        viewHolder.presetSelectedRadioButton.setText(this.presets[i].themeTitleId);
        viewHolder.colorAccentImageView.setBackgroundColor(this.context.getResources().getColor(this.presets[i].themeColorAccentId));
        viewHolder.colorPrimaryImageView.setBackgroundColor(this.context.getResources().getColor(this.presets[i].themeColorPrimaryId));
        viewHolder.colorPrimaryDarkImageView.setBackgroundColor(this.context.getResources().getColor(this.presets[i].themeColorPrimaryDarkId));
        checkSelectedPreset(viewHolder, i);
    }

    private void checkSelectedPreset(ViewHolder viewHolder, int i) {
        if (this.presets[i].equals(this.selectedPreset)) {
            viewHolder.presetSelectedRadioButton.setChecked(true);
        } else {
            viewHolder.presetSelectedRadioButton.setChecked(false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.presets.length;
    }

    /* loaded from: classes2.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(R.id.color_preset_card_color_accent)
        ImageView colorAccentImageView;
        @BindView(R.id.color_preset_card_color_primary_dark)
        ImageView colorPrimaryDarkImageView;
        @BindView(R.id.color_preset_card_color_primary)
        ImageView colorPrimaryImageView;
        ViewHolderRadioButtonClicks onClickListener;
        @BindView(R.id.color_preset_card_radiobutton)
        RadioButton presetSelectedRadioButton;

        /* loaded from: classes2.dex */
        public interface ViewHolderRadioButtonClicks {
            void onRadioButtonClicked(int i);
        }

        public ViewHolder(View view, ViewHolderRadioButtonClicks viewHolderRadioButtonClicks) {
            super(view);
            ButterKnife.bind(this, view);
            this.onClickListener = viewHolderRadioButtonClicks;
        }

        @OnClick({R.id.color_preset_card})
        void themeSelected() {
            this.onClickListener.onRadioButtonClicked(getAdapterPosition());
        }
    }
}
