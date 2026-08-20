package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;
/* renamed from: com.facebook.ads.redexgen.X.Li  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0902Li extends LinearLayout {
    public static int A00 = (int) (Kk.A02 * 56.0f);

    public abstract void A04(C1L c1l, boolean z);

    public abstract boolean A05();

    public abstract View getDetailsContainer();

    @ToolbarActionView$ToolbarActionMode
    public abstract int getToolbarActionMode();

    public abstract int getToolbarHeight();

    @Nullable
    public abstract InterfaceC0901Lh getToolbarListener();

    public abstract void setAdReportingVisible(boolean z);

    public abstract void setCTAClickListener(View.OnClickListener onClickListener);

    public abstract void setCTAClickListener(View$OnClickListenerC1075Sa view$OnClickListenerC1075Sa);

    public abstract void setFullscreen(boolean z);

    public abstract void setPageDetails(C1V c1v, String str, int i, C04181b c04181b);

    public abstract void setPageDetailsVisible(boolean z);

    public abstract void setProgress(float f2);

    public abstract void setProgressClickListener(@Nullable View.OnClickListener onClickListener);

    public abstract void setProgressImage(@Nullable LT lt);

    public abstract void setProgressImmediate(float f2);

    public abstract void setProgressSpinnerInvisible(boolean z);

    public abstract void setToolbarActionMessage(String str);

    public abstract void setToolbarActionMode(@ToolbarActionView$ToolbarActionMode int i);

    public abstract void setToolbarListener(@Nullable InterfaceC0901Lh interfaceC0901Lh);

    public AbstractC0902Li(Context context) {
        super(context);
    }
}
