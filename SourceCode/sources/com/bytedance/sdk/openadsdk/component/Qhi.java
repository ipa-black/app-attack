package com.bytedance.sdk.openadsdk.component;

import android.view.View;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
/* compiled from: AppOpenAdCallbackCollection.java */
/* loaded from: classes2.dex */
public class Qhi implements fl.Qhi, com.bytedance.sdk.openadsdk.component.Tgh.Qhi {
    public void CJ() {
    }

    public void ac() {
    }

    public void fl() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
    public void Qhi(long j, int i) {
        new Object[]{"open_ad", "onComplete"};
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
    public void cJ(long j, int i) {
        new Object[]{"open_ad", "onError"};
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
    public void Qhi() {
        new Object[]{"open_ad", "onTimeOut"};
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
    public void Qhi(long j, long j2) {
        new Object[]{"open_ad", "onProgressUpdate"};
    }

    public void Qhi(View view) {
        new Object[]{"open_ad", "onClickSkip"};
    }

    public void cJ(View view) {
        new Object[]{"open_ad", "onClickDislike"};
    }

    public void cJ() {
        new Object[]{"open_ad", "onCountDownFinish"};
    }

    public void Qhi(int i, int i2, boolean z) {
        new Object[]{"open_ad", "onTimeChanged"};
    }
}
