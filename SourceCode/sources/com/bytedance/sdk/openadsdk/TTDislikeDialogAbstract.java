package com.bytedance.sdk.openadsdk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class TTDislikeDialogAbstract extends Dialog {
    private String CJ;
    private View Qhi;
    private List<FilterWord> ac;
    private String cJ;

    public abstract ViewGroup.LayoutParams getLayoutParams();

    public abstract View getLayoutView();

    public abstract int[] getTTDislikeListViewIds();

    public TTDislikeDialogAbstract(Context context) {
        super(context);
    }

    public TTDislikeDialogAbstract(Context context, int i, String str) {
        super(context, i);
        this.CJ = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View layoutView = getLayoutView();
        this.Qhi = layoutView;
        if (layoutView == null) {
            throw new IllegalArgumentException("getLayoutView,layout  may be abnormal, please check");
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        View view = this.Qhi;
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        }
        setContentView(view, layoutParams);
        Qhi();
    }

    private void Qhi() {
        if (this.ac == null || this.Qhi == null) {
            return;
        }
        int[] tTDislikeListViewIds = getTTDislikeListViewIds();
        if (tTDislikeListViewIds == null || tTDislikeListViewIds.length <= 0) {
            throw new IllegalArgumentException("The options list of dislike is empty, please set TTDislikeListView");
        }
        for (int i : tTDislikeListViewIds) {
            View findViewById = this.Qhi.findViewById(i);
            if (findViewById == null) {
                throw new IllegalArgumentException("getTTDislikeListViewIds can not find view by Id,please check");
            }
            if (!(findViewById instanceof TTDislikeListView)) {
                throw new IllegalArgumentException("getTTDislikeListViewIds can not find view by Id , please check");
            }
            TTDislikeListView tTDislikeListView = (TTDislikeListView) findViewById;
            tTDislikeListView.setMaterialMeta(this.cJ);
            tTDislikeListView.setDislikeSource(this.CJ);
        }
    }

    public void setMaterialMeta(String str, List<FilterWord> list) {
        this.cJ = str;
        this.ac = list;
        Qhi();
    }
}
