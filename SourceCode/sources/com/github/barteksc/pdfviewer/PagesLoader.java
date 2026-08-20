package com.github.barteksc.pdfviewer;

import android.graphics.RectF;
import android.util.Pair;
import com.github.barteksc.pdfviewer.PDFView;
import com.github.barteksc.pdfviewer.util.Constants;
import com.github.barteksc.pdfviewer.util.MathUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class PagesLoader {
    private int cacheOrder;
    private float colWidth;
    private Pair<Integer, Integer> colsRows;
    private float pageRelativePartHeight;
    private float pageRelativePartWidth;
    private float partRenderHeight;
    private float partRenderWidth;
    private PDFView pdfView;
    private float rowHeight;
    private float scaledHeight;
    private float scaledWidth;
    private int thumbnailHeight;
    private final RectF thumbnailRect = new RectF(0.0f, 0.0f, 1.0f, 1.0f);
    private int thumbnailWidth;
    private float xOffset;
    private float yOffset;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class Holder {
        int col;
        int page;
        int row;

        private Holder() {
        }
    }

    public PagesLoader(PDFView pDFView) {
        this.pdfView = pDFView;
    }

    private Pair<Integer, Integer> getPageColsRows() {
        return new Pair<>(Integer.valueOf(MathUtils.ceil(1.0f / (((1.0f / this.pdfView.getOptimalPageWidth()) * 256.0f) / this.pdfView.getZoom()))), Integer.valueOf(MathUtils.ceil(1.0f / (((1.0f / this.pdfView.getOptimalPageHeight()) * 256.0f) / this.pdfView.getZoom()))));
    }

    private int documentPage(int i) {
        int i2;
        if (this.pdfView.getFilteredUserPages() == null) {
            i2 = i;
        } else if (i < 0 || i >= this.pdfView.getFilteredUserPages().length) {
            return -1;
        } else {
            i2 = this.pdfView.getFilteredUserPages()[i];
        }
        if (i2 < 0 || i >= this.pdfView.getDocumentPageCount()) {
            return -1;
        }
        return i2;
    }

    private Holder getPageAndCoordsByOffset(float f2) {
        Holder holder = new Holder();
        float f3 = -MathUtils.max(f2, 0.0f);
        if (this.pdfView.isSwipeVertical()) {
            holder.page = MathUtils.floor(f3 / this.scaledHeight);
            holder.row = MathUtils.floor(Math.abs(f3 - (this.scaledHeight * holder.page)) / this.rowHeight);
            holder.col = MathUtils.floor(this.xOffset / this.colWidth);
        } else {
            holder.page = MathUtils.floor(f3 / this.scaledWidth);
            holder.col = MathUtils.floor(Math.abs(f3 - (this.scaledWidth * holder.page)) / this.colWidth);
            holder.row = MathUtils.floor(this.yOffset / this.rowHeight);
        }
        return holder;
    }

    private void loadThumbnail(int i, int i2) {
        if (this.pdfView.cacheManager.containsThumbnail(i, i2, this.thumbnailWidth, this.thumbnailHeight, this.thumbnailRect)) {
            return;
        }
        this.pdfView.renderingAsyncTask.addRenderingTask(i, i2, this.thumbnailWidth, this.thumbnailHeight, this.thumbnailRect, true, 0, this.pdfView.isBestQuality(), this.pdfView.isAnnotationRendering());
    }

    private int loadRelative(int i, int i2, boolean z) {
        float f2;
        float currentXOffset;
        int width;
        int i3 = 0;
        if (this.pdfView.isSwipeVertical()) {
            f2 = (this.rowHeight * i) + 1.0f;
            currentXOffset = this.pdfView.getCurrentYOffset();
            if (z) {
                width = this.pdfView.getHeight();
            }
            width = 0;
        } else {
            f2 = this.colWidth * i;
            currentXOffset = this.pdfView.getCurrentXOffset();
            if (z) {
                width = this.pdfView.getWidth();
            }
            width = 0;
        }
        Holder pageAndCoordsByOffset = getPageAndCoordsByOffset((currentXOffset - width) - f2);
        int documentPage = documentPage(pageAndCoordsByOffset.page);
        if (documentPage < 0) {
            return 0;
        }
        loadThumbnail(pageAndCoordsByOffset.page, documentPage);
        if (this.pdfView.isSwipeVertical()) {
            int max = MathUtils.max(MathUtils.ceil((this.xOffset + this.pdfView.getWidth()) / this.colWidth) + 1, ((Integer) this.colsRows.first).intValue());
            for (int min = MathUtils.min(MathUtils.floor(this.xOffset / this.colWidth) - 1, 0); min <= max; min++) {
                if (loadCell(pageAndCoordsByOffset.page, documentPage, pageAndCoordsByOffset.row, min, this.pageRelativePartWidth, this.pageRelativePartHeight)) {
                    i3++;
                }
                if (i3 >= i2) {
                    return i3;
                }
            }
        } else {
            int max2 = MathUtils.max(MathUtils.ceil((this.yOffset + this.pdfView.getHeight()) / this.rowHeight) + 1, ((Integer) this.colsRows.second).intValue());
            for (int min2 = MathUtils.min(MathUtils.floor(this.yOffset / this.rowHeight) - 1, 0); min2 <= max2; min2++) {
                if (loadCell(pageAndCoordsByOffset.page, documentPage, min2, pageAndCoordsByOffset.col, this.pageRelativePartWidth, this.pageRelativePartHeight)) {
                    i3++;
                }
                if (i3 >= i2) {
                    return i3;
                }
            }
        }
        return i3;
    }

    public int loadVisible() {
        Holder pageAndCoordsByOffset;
        int i;
        int i2;
        int i3;
        if (this.pdfView.isSwipeVertical()) {
            pageAndCoordsByOffset = getPageAndCoordsByOffset(this.pdfView.getCurrentYOffset());
            Holder pageAndCoordsByOffset2 = getPageAndCoordsByOffset((this.pdfView.getCurrentYOffset() - this.pdfView.getHeight()) + 1.0f);
            if (pageAndCoordsByOffset.page == pageAndCoordsByOffset2.page) {
                i3 = (pageAndCoordsByOffset2.row - pageAndCoordsByOffset.row) + 1;
            } else {
                int intValue = ((Integer) this.colsRows.second).intValue() - pageAndCoordsByOffset.row;
                int i4 = pageAndCoordsByOffset.page;
                while (true) {
                    i4++;
                    if (i4 >= pageAndCoordsByOffset2.page) {
                        break;
                    }
                    intValue += ((Integer) this.colsRows.second).intValue();
                }
                i3 = pageAndCoordsByOffset2.row + 1 + intValue;
            }
            i2 = 0;
            for (int i5 = 0; i5 < i3 && i2 < Constants.Cache.CACHE_SIZE; i5++) {
                i2 += loadRelative(i5, Constants.Cache.CACHE_SIZE - i2, false);
            }
        } else {
            pageAndCoordsByOffset = getPageAndCoordsByOffset(this.pdfView.getCurrentXOffset());
            Holder pageAndCoordsByOffset3 = getPageAndCoordsByOffset((this.pdfView.getCurrentXOffset() - this.pdfView.getWidth()) + 1.0f);
            if (pageAndCoordsByOffset.page == pageAndCoordsByOffset3.page) {
                i = (pageAndCoordsByOffset3.col - pageAndCoordsByOffset.col) + 1;
            } else {
                int intValue2 = ((Integer) this.colsRows.first).intValue() - pageAndCoordsByOffset.col;
                int i6 = pageAndCoordsByOffset.page;
                while (true) {
                    i6++;
                    if (i6 >= pageAndCoordsByOffset3.page) {
                        break;
                    }
                    intValue2 += ((Integer) this.colsRows.first).intValue();
                }
                i = pageAndCoordsByOffset3.col + 1 + intValue2;
            }
            i2 = 0;
            for (int i7 = 0; i7 < i && i2 < Constants.Cache.CACHE_SIZE; i7++) {
                i2 += loadRelative(i7, Constants.Cache.CACHE_SIZE - i2, false);
            }
        }
        int documentPage = documentPage(pageAndCoordsByOffset.page - 1);
        if (documentPage >= 0) {
            loadThumbnail(pageAndCoordsByOffset.page - 1, documentPage);
        }
        int documentPage2 = documentPage(pageAndCoordsByOffset.page + 1);
        if (documentPage2 >= 0) {
            loadThumbnail(pageAndCoordsByOffset.page + 1, documentPage2);
        }
        return i2;
    }

    private boolean loadCell(int i, int i2, int i3, int i4, float f2, float f3) {
        float f4 = i4 * f2;
        float f5 = i3 * f3;
        float f6 = this.partRenderWidth;
        float f7 = this.partRenderHeight;
        float f8 = f4 + f2 > 1.0f ? 1.0f - f4 : f2;
        float f9 = f5 + f3 > 1.0f ? 1.0f - f5 : f3;
        float f10 = f6 * f8;
        float f11 = f7 * f9;
        RectF rectF = new RectF(f4, f5, f8 + f4, f9 + f5);
        if (f10 <= 0.0f || f11 <= 0.0f) {
            return false;
        }
        if (!this.pdfView.cacheManager.upPartIfContained(i, i2, f10, f11, rectF, this.cacheOrder)) {
            this.pdfView.renderingAsyncTask.addRenderingTask(i, i2, f10, f11, rectF, false, this.cacheOrder, this.pdfView.isBestQuality(), this.pdfView.isAnnotationRendering());
        }
        this.cacheOrder++;
        return true;
    }

    public void loadPages() {
        PDFView pDFView = this.pdfView;
        this.scaledHeight = pDFView.toCurrentScale(pDFView.getOptimalPageHeight());
        PDFView pDFView2 = this.pdfView;
        this.scaledWidth = pDFView2.toCurrentScale(pDFView2.getOptimalPageWidth());
        this.thumbnailWidth = (int) (this.pdfView.getOptimalPageWidth() * 0.3f);
        this.thumbnailHeight = (int) (this.pdfView.getOptimalPageHeight() * 0.3f);
        this.colsRows = getPageColsRows();
        this.xOffset = -MathUtils.max(this.pdfView.getCurrentXOffset(), 0.0f);
        this.yOffset = -MathUtils.max(this.pdfView.getCurrentYOffset(), 0.0f);
        this.rowHeight = this.scaledHeight / ((Integer) this.colsRows.second).intValue();
        this.colWidth = this.scaledWidth / ((Integer) this.colsRows.first).intValue();
        this.pageRelativePartWidth = 1.0f / ((Integer) this.colsRows.first).intValue();
        float intValue = 1.0f / ((Integer) this.colsRows.second).intValue();
        this.pageRelativePartHeight = intValue;
        this.partRenderWidth = 256.0f / this.pageRelativePartWidth;
        this.partRenderHeight = 256.0f / intValue;
        this.cacheOrder = 1;
        int loadVisible = loadVisible();
        if (this.pdfView.getScrollDir().equals(PDFView.ScrollDir.END)) {
            for (int i = 0; i < 7 && loadVisible < Constants.Cache.CACHE_SIZE; i++) {
                loadVisible += loadRelative(i, loadVisible, true);
            }
            return;
        }
        for (int i2 = 0; i2 > -7 && loadVisible < Constants.Cache.CACHE_SIZE; i2--) {
            loadVisible += loadRelative(i2, loadVisible, false);
        }
    }
}
