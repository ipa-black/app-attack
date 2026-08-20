package com.github.barteksc.pdfviewer;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.AsyncTask;
import com.github.barteksc.pdfviewer.model.PagePart;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class RenderingAsyncTask extends AsyncTask<Void, PagePart, Void> {
    private PdfDocument pdfDocument;
    private PDFView pdfView;
    private PdfiumCore pdfiumCore;
    private RectF renderBounds = new RectF();
    private Rect roundedRenderBounds = new Rect();
    private Matrix renderMatrix = new Matrix();
    private final Set<Integer> openedPages = new HashSet();
    private final List<RenderingTask> renderingTasks = Collections.synchronizedList(new ArrayList());

    public RenderingAsyncTask(PDFView pDFView, PdfiumCore pdfiumCore, PdfDocument pdfDocument) {
        this.pdfView = pDFView;
        this.pdfiumCore = pdfiumCore;
        this.pdfDocument = pdfDocument;
    }

    public void addRenderingTask(int i, int i2, float f2, float f3, RectF rectF, boolean z, int i3, boolean z2, boolean z3) {
        this.renderingTasks.add(new RenderingTask(f2, f3, rectF, i, i2, z, i3, z2, z3));
        wakeUp();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0007 A[LOOP:1: B:4:0x0007->B:38:0x0007, LOOP_START] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Void doInBackground(java.lang.Void... r5) {
        /*
            r4 = this;
        L0:
            boolean r5 = r4.isCancelled()
            r0 = 0
            if (r5 != 0) goto L4f
        L7:
            java.util.List<com.github.barteksc.pdfviewer.RenderingAsyncTask$RenderingTask> r5 = r4.renderingTasks
            monitor-enter(r5)
            java.util.List<com.github.barteksc.pdfviewer.RenderingAsyncTask$RenderingTask> r1 = r4.renderingTasks     // Catch: java.lang.Throwable -> L4c
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L4c
            if (r1 != 0) goto L3e
            java.util.List<com.github.barteksc.pdfviewer.RenderingAsyncTask$RenderingTask> r1 = r4.renderingTasks     // Catch: java.lang.Throwable -> L4c
            r2 = 0
            java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Throwable -> L4c
            com.github.barteksc.pdfviewer.RenderingAsyncTask$RenderingTask r1 = (com.github.barteksc.pdfviewer.RenderingAsyncTask.RenderingTask) r1     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L7
            com.github.barteksc.pdfviewer.model.PagePart r5 = r4.proceed(r1)
            if (r5 != 0) goto L25
            goto L3f
        L25:
            java.util.List<com.github.barteksc.pdfviewer.RenderingAsyncTask$RenderingTask> r3 = r4.renderingTasks
            boolean r1 = r3.remove(r1)
            if (r1 == 0) goto L36
            r1 = 1
            com.github.barteksc.pdfviewer.model.PagePart[] r1 = new com.github.barteksc.pdfviewer.model.PagePart[r1]
            r1[r2] = r5
            r4.publishProgress(r1)
            goto L7
        L36:
            android.graphics.Bitmap r5 = r5.getRenderedBitmap()
            r5.recycle()
            goto L7
        L3e:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L4c
        L3f:
            boolean r5 = r4.waitForRenderingTasks()
            if (r5 == 0) goto L4b
            boolean r5 = r4.isCancelled()
            if (r5 == 0) goto L0
        L4b:
            return r0
        L4c:
            r0 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L4c
            throw r0
        L4f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.barteksc.pdfviewer.RenderingAsyncTask.doInBackground(java.lang.Void[]):java.lang.Void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onProgressUpdate(PagePart... pagePartArr) {
        this.pdfView.onBitmapRendered(pagePartArr[0]);
    }

    private boolean waitForRenderingTasks() {
        try {
            synchronized (this.renderingTasks) {
                this.renderingTasks.wait();
            }
            return true;
        } catch (InterruptedException unused) {
            return false;
        }
    }

    private PagePart proceed(RenderingTask renderingTask) {
        Bitmap bitmap;
        if (!this.openedPages.contains(Integer.valueOf(renderingTask.page))) {
            this.openedPages.add(Integer.valueOf(renderingTask.page));
            this.pdfiumCore.openPage(this.pdfDocument, renderingTask.page);
        }
        int round = Math.round(renderingTask.width);
        int round2 = Math.round(renderingTask.height);
        Bitmap createBitmap = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
        calculateBounds(round, round2, renderingTask.bounds);
        if (!isCancelled()) {
            this.pdfiumCore.renderPageBitmap(this.pdfDocument, createBitmap, renderingTask.page, this.roundedRenderBounds.left, this.roundedRenderBounds.top, this.roundedRenderBounds.width(), this.roundedRenderBounds.height(), renderingTask.annotationRendering);
            if (renderingTask.bestQuality) {
                bitmap = createBitmap;
            } else {
                Bitmap copy = createBitmap.copy(Bitmap.Config.RGB_565, false);
                createBitmap.recycle();
                bitmap = copy;
            }
            return new PagePart(renderingTask.userPage, renderingTask.page, bitmap, renderingTask.width, renderingTask.height, renderingTask.bounds, renderingTask.thumbnail, renderingTask.cacheOrder);
        }
        createBitmap.recycle();
        return null;
    }

    private void calculateBounds(int i, int i2, RectF rectF) {
        this.renderMatrix.reset();
        float f2 = i;
        float f3 = i2;
        this.renderMatrix.postTranslate((-rectF.left) * f2, (-rectF.top) * f3);
        this.renderMatrix.postScale(1.0f / rectF.width(), 1.0f / rectF.height());
        this.renderBounds.set(0.0f, 0.0f, f2, f3);
        this.renderMatrix.mapRect(this.renderBounds);
        this.renderBounds.round(this.roundedRenderBounds);
    }

    public void removeAllTasks() {
        synchronized (this.renderingTasks) {
            this.renderingTasks.clear();
        }
    }

    public void wakeUp() {
        synchronized (this.renderingTasks) {
            this.renderingTasks.notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class RenderingTask {
        boolean annotationRendering;
        boolean bestQuality;
        RectF bounds;
        int cacheOrder;
        float height;
        int page;
        boolean thumbnail;
        int userPage;
        float width;

        public RenderingTask(float f2, float f3, RectF rectF, int i, int i2, boolean z, int i3, boolean z2, boolean z3) {
            this.page = i2;
            this.width = f2;
            this.height = f3;
            this.bounds = rectF;
            this.userPage = i;
            this.thumbnail = z;
            this.cacheOrder = i3;
            this.bestQuality = z2;
            this.annotationRendering = z3;
        }
    }
}
