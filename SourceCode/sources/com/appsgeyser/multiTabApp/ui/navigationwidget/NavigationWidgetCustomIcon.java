package com.appsgeyser.multiTabApp.ui.navigationwidget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import com.w_19998775.R;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class NavigationWidgetCustomIcon {
    private final int ICON_SIZE_IN_DP = 38;
    private TextView _badge;
    private ViewGroup _iconView;
    private ImageButton _imageButton;

    public NavigationWidgetCustomIcon(ViewGroup viewGroup) {
        this._iconView = viewGroup;
        this._badge = (TextView) viewGroup.findViewById(R.id.badge);
        this._imageButton = (ImageButton) this._iconView.findViewById(R.id.imageButton);
    }

    public void hideIcon() {
        this._iconView.setVisibility(8);
    }

    public void showIcon() {
        this._iconView.setVisibility(0);
    }

    public void showBadge() {
        this._badge.setVisibility(0);
    }

    public void hideBadge() {
        this._badge.setVisibility(8);
    }

    public void updateBadge(String str) {
        if (str.length() > 0) {
            showBadge();
            this._badge.setText(str);
            return;
        }
        hideBadge();
    }

    public void updateIcon(String str) {
        Context context = this._iconView.getContext();
        try {
            InputStream open = context.getAssets().open(str);
            int round = Math.round((context.getResources().getDisplayMetrics().xdpi / 160.0f) * 38.0f);
            this._imageButton.setImageBitmap(Bitmap.createScaledBitmap(BitmapFactory.decodeStream(open), round, round, false));
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this._imageButton.setOnClickListener(onClickListener);
    }
}
