package com.bykv.vk.openvk.component.video.api.renderview;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.component.video.api.renderview.cJ;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class SSRenderSurfaceView extends SSSurfaceView implements SurfaceHolder.Callback, cJ {
    private static final ArrayList<ac> ac = new ArrayList<>();
    private cJ.Qhi CJ;
    private WeakReference<Qhi> Qhi;
    private ac cJ;

    @Override // com.bykv.vk.openvk.component.video.api.renderview.cJ
    public View getView() {
        return this;
    }

    public SSRenderSurfaceView(Context context) {
        super(context);
        Qhi();
    }

    private void Qhi() {
        ac acVar = new ac(this);
        this.cJ = acVar;
        ac.add(acVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.cJ
    public void Qhi(Qhi qhi) {
        this.Qhi = new WeakReference<>(qhi);
        SurfaceHolder holder = getHolder();
        holder.setFormat(-3);
        Iterator<ac> it = ac.iterator();
        while (it.hasNext()) {
            ac next = it.next();
            if (next != null && next.Qhi() == null) {
                holder.removeCallback(next);
                it.remove();
            }
        }
        holder.addCallback(this.cJ);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.cJ
    public void Qhi(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i2;
        layoutParams.width = i;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        WeakReference<Qhi> weakReference = this.Qhi;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Qhi.get().Qhi(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        WeakReference<Qhi> weakReference = this.Qhi;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Qhi.get().Qhi(surfaceHolder, i, i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        WeakReference<Qhi> weakReference = this.Qhi;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Qhi.get().cJ(surfaceHolder);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    public void setWindowVisibilityChangedListener(cJ.Qhi qhi) {
        this.CJ = qhi;
    }
}
