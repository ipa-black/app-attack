package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.CQU;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public abstract class BackupView extends PAGFrameLayout {
    protected com.bytedance.sdk.openadsdk.dislike.cJ CJ;
    protected boolean Gm;
    private com.bytedance.sdk.openadsdk.cJ.Sf Qhi;
    protected int ROR;
    protected int Sf;
    protected String Tgh;
    protected boolean WAv;
    protected tP ac;
    protected Context cJ;
    protected TTDislikeDialogAbstract fl;
    protected int hm;
    protected String zc;

    protected abstract void Qhi(View view, int i, com.bytedance.sdk.openadsdk.core.model.pA pAVar);

    public BackupView(Context context) {
        super(context);
        this.Tgh = "embeded_ad";
        this.WAv = true;
        this.Gm = true;
        setTag("tt_express_backup_fl_tag_26");
    }

    public BackupView(Context context, String str) {
        super(context);
        this.Tgh = "embeded_ad";
        this.WAv = true;
        this.Gm = true;
        this.zc = str;
        setTag("tt_express_backup_fl_tag_26");
    }

    @Override // android.view.View
    public Object getTag() {
        return "tt_express_backup_fl_tag_26";
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag("tt_express_backup_fl_tag_26");
    }

    public void setDislikeInner(CQU cqu) {
        if (cqu instanceof com.bytedance.sdk.openadsdk.dislike.cJ) {
            this.CJ = (com.bytedance.sdk.openadsdk.dislike.cJ) cqu;
        }
    }

    public void setDislikeOuter(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        tP tPVar;
        if (tTDislikeDialogAbstract != null && (tPVar = this.ac) != null) {
            tTDislikeDialogAbstract.setMaterialMeta(tPVar.EGK(), this.ac.VnT());
        }
        this.fl = tTDislikeDialogAbstract;
    }

    public void Qhi() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.fl;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        com.bytedance.sdk.openadsdk.dislike.cJ cJVar = this.CJ;
        if (cJVar != null) {
            cJVar.Qhi();
        } else {
            TTDelegateActivity.Qhi(this.ac, (String) null);
        }
    }

    protected String getNameOrSource() {
        tP tPVar = this.ac;
        if (tPVar == null) {
            return "";
        }
        if (tPVar.pv() == null || TextUtils.isEmpty(this.ac.pv().cJ())) {
            return !TextUtils.isEmpty(this.ac.PAe()) ? this.ac.PAe() : "";
        }
        return this.ac.pv().cJ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getTitle() {
        if (this.ac.pv() != null && !TextUtils.isEmpty(this.ac.pv().cJ())) {
            return this.ac.pv().cJ();
        }
        if (!TextUtils.isEmpty(this.ac.PAe())) {
            return this.ac.PAe();
        }
        if (!TextUtils.isEmpty(this.ac.dVA())) {
            return this.ac.dVA();
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getDescription() {
        if (!TextUtils.isEmpty(this.ac.dVA())) {
            return this.ac.dVA();
        }
        if (!TextUtils.isEmpty(this.ac.zjb())) {
            return this.ac.zjb();
        }
        return "";
    }

    public float getRealWidth() {
        return zn.ac(this.cJ, this.ROR);
    }

    public float getRealHeight() {
        return zn.ac(this.cJ, this.Sf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(View view, boolean z) {
        com.bytedance.sdk.openadsdk.core.cJ.cJ cJVar;
        if (view == null) {
            return;
        }
        if (z) {
            Context context = this.cJ;
            tP tPVar = this.ac;
            String str = this.Tgh;
            cJVar = new com.bytedance.sdk.openadsdk.core.cJ.Qhi(context, tPVar, str, js.Qhi(str));
        } else {
            Context context2 = this.cJ;
            tP tPVar2 = this.ac;
            String str2 = this.Tgh;
            cJVar = new com.bytedance.sdk.openadsdk.core.cJ.cJ(context2, tPVar2, str2, js.Qhi(str2));
        }
        view.setOnTouchListener(cJVar);
        view.setOnClickListener(cJVar);
        cJVar.Qhi(new Qhi() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.Qhi
            public void Qhi(View view2, int i, com.bytedance.sdk.openadsdk.core.model.pA pAVar) {
                BackupView.this.Qhi(view2, i, pAVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NativeVideoTsView getVideoView() {
        NativeVideoTsView nativeVideoTsView;
        tP tPVar = this.ac;
        if (tPVar != null && this.cJ != null) {
            if (tP.fl(tPVar)) {
                try {
                    nativeVideoTsView = new NativeVideoTsView(this.cJ, this.ac, this.Tgh, true, false, this.Qhi);
                    nativeVideoTsView.setVideoCacheUrl(this.zc);
                    nativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.cJ() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.2
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.cJ
                        public void Qhi(boolean z, long j, long j2, long j3, boolean z2) {
                        }
                    });
                    nativeVideoTsView.setIsAutoPlay(this.WAv);
                    nativeVideoTsView.setIsQuiet(this.Gm);
                } catch (Throwable unused) {
                }
                if (!tP.fl(this.ac) && nativeVideoTsView != null && nativeVideoTsView.Qhi(0L, true, false)) {
                    return nativeVideoTsView;
                }
            }
            nativeVideoTsView = null;
            if (!tP.fl(this.ac)) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(int i) {
        this.Gm = com.bytedance.sdk.openadsdk.core.HzH.CJ().ac(String.valueOf(this.hm));
        int cJ = com.bytedance.sdk.openadsdk.core.HzH.CJ().cJ(i);
        if (3 == cJ) {
            this.WAv = false;
            return;
        }
        int ac = com.bytedance.sdk.component.utils.hpZ.ac(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
        if (1 != cJ || !js.CJ(ac)) {
            if (2 == cJ) {
                if (js.fl(ac) || js.CJ(ac) || js.Tgh(ac)) {
                    this.WAv = true;
                    return;
                }
                return;
            } else if (5 != cJ) {
                return;
            } else {
                if (!js.CJ(ac) && !js.Tgh(ac)) {
                    return;
                }
            }
        }
        this.WAv = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(View view) {
        tP tPVar = this.ac;
        if (tPVar == null || tPVar.FQ() == null || view == null) {
            return;
        }
        boolean z = true;
        Qhi(view, (this.ac.Dww() == 1 && this.WAv) ? false : false);
    }
}
