package com.bytedance.sdk.openadsdk.dislike;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.core.bannerexpress.Qhi;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class TTDislikeListView extends ListView {
    private String CJ;
    protected IListenerManager Qhi;
    private final AdapterView.OnItemClickListener Tgh;
    private String ac;
    private AdapterView.OnItemClickListener cJ;
    private String fl;

    public TTDislikeListView(Context context) {
        super(context);
        this.Tgh = new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (TTDislikeListView.this.getAdapter() != null && TTDislikeListView.this.getAdapter().getItem(i) != null && (TTDislikeListView.this.getAdapter().getItem(i) instanceof FilterWord)) {
                    FilterWord filterWord = (FilterWord) TTDislikeListView.this.getAdapter().getItem(i);
                    if (!filterWord.hasSecondOptions()) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(filterWord);
                        if (!TextUtils.isEmpty(TTDislikeListView.this.ac)) {
                            Qhi.Qhi().Qhi(TTDislikeListView.this.ac, arrayList, TTDislikeListView.this.CJ);
                        }
                        if (!TextUtils.isEmpty(TTDislikeListView.this.fl)) {
                            if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                                TTDislikeListView.this.Qhi("onItemClickClosed");
                            } else {
                                Qhi.InterfaceC0223Qhi fl = hm.cJ().fl(TTDislikeListView.this.fl);
                                if (fl != null) {
                                    fl.Qhi();
                                    hm.cJ().Tgh(TTDislikeListView.this.fl);
                                }
                            }
                        }
                    }
                    try {
                        if (TTDislikeListView.this.cJ != null) {
                            TTDislikeListView.this.cJ.onItemClick(adapterView, view, i, j);
                            return;
                        }
                        return;
                    } catch (Throwable unused) {
                        return;
                    }
                }
                throw new IllegalArgumentException("Adapter data is abnormal, it must be FilterWord");
            }
        };
        Qhi();
    }

    public void setMaterialMeta(String str) {
        this.ac = str;
    }

    public void setDislikeSource(String str) {
        this.CJ = str;
    }

    private void Qhi() {
        super.setOnItemClickListener(this.Tgh);
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.cJ = onItemClickListener;
    }

    public void setClosedListenerKey(String str) {
        this.fl = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final String str) {
        lG.ac(new com.bytedance.sdk.component.Sf.hm("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (TextUtils.isEmpty(TTDislikeListView.this.fl)) {
                        return;
                    }
                    TTDislikeListView.this.Qhi(6).executeDisLikeClosedCallback(TTDislikeListView.this.fl, str);
                } catch (Throwable th) {
                    ABk.Qhi("TTDislikeListView", "executeRewardVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    protected IListenerManager Qhi(int i) {
        if (this.Qhi == null) {
            this.Qhi = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi().Qhi(i));
        }
        return this.Qhi;
    }

    public static void Qhi(final int i, final String str, final Qhi.InterfaceC0223Qhi interfaceC0223Qhi) {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            lG.ac(new com.bytedance.sdk.component.Sf.hm("DislikeClosed_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.Qhi Qhi = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi();
                    if (i != 6 || interfaceC0223Qhi == null) {
                        return;
                    }
                    try {
                        com.bytedance.sdk.openadsdk.multipro.aidl.cJ.cJ cJVar = new com.bytedance.sdk.openadsdk.multipro.aidl.cJ.cJ(str, interfaceC0223Qhi);
                        IListenerManager asInterface = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.fl.asInterface(Qhi.Qhi(6));
                        if (asInterface != null) {
                            asInterface.registerDisLikeClosedListener(str, cJVar);
                        }
                    } catch (RemoteException e2) {
                        ABk.Qhi("TTDislikeListView", e2.getMessage());
                    }
                }
            }, 5);
        }
    }

    public static void Qhi(final int i, final String str) {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            lG.ac(new com.bytedance.sdk.component.Sf.hm("DislikeClosed_unregisterMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.4
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.Qhi Qhi = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi();
                    if (i == 6) {
                        try {
                            IListenerManager asInterface = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.fl.asInterface(Qhi.Qhi(6));
                            if (asInterface != null) {
                                asInterface.unregisterDisLikeClosedListener(str);
                            }
                        } catch (RemoteException unused) {
                        }
                    }
                }
            }, 5);
        }
    }
}
