package com.github.barteksc.pdfviewer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.RelativeLayout;
import com.github.barteksc.pdfviewer.listener.OnDrawListener;
import com.github.barteksc.pdfviewer.listener.OnErrorListener;
import com.github.barteksc.pdfviewer.listener.OnLoadCompleteListener;
import com.github.barteksc.pdfviewer.listener.OnPageChangeListener;
import com.github.barteksc.pdfviewer.listener.OnPageScrollListener;
import com.github.barteksc.pdfviewer.model.PagePart;
import com.github.barteksc.pdfviewer.scroll.ScrollHandle;
import com.github.barteksc.pdfviewer.source.AssetSource;
import com.github.barteksc.pdfviewer.source.ByteArraySource;
import com.github.barteksc.pdfviewer.source.DocumentSource;
import com.github.barteksc.pdfviewer.source.FileSource;
import com.github.barteksc.pdfviewer.source.InputStreamSource;
import com.github.barteksc.pdfviewer.source.UriSource;
import com.github.barteksc.pdfviewer.util.ArrayUtils;
import com.github.barteksc.pdfviewer.util.MathUtils;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class PDFView extends RelativeLayout {
    public static final float DEFAULT_MAX_SCALE = 3.0f;
    public static final float DEFAULT_MID_SCALE = 1.75f;
    public static final float DEFAULT_MIN_SCALE = 1.0f;
    private static final String TAG = "PDFView";
    private AnimationManager animationManager;
    private boolean annotationRendering;
    private boolean bestQuality;
    CacheManager cacheManager;
    private int currentFilteredPage;
    private int currentPage;
    private float currentXOffset;
    private float currentYOffset;
    private Paint debugPaint;
    private DecodingAsyncTask decodingAsyncTask;
    private int defaultPage;
    private int documentPageCount;
    private DragPinchManager dragPinchManager;
    private int[] filteredUserPageIndexes;
    private int[] filteredUserPages;
    private boolean isScrollHandleInit;
    private float maxZoom;
    private float midZoom;
    private float minZoom;
    private OnDrawListener onDrawListener;
    private OnErrorListener onErrorListener;
    private OnLoadCompleteListener onLoadCompleteListener;
    private OnPageChangeListener onPageChangeListener;
    private OnPageScrollListener onPageScrollListener;
    private float optimalPageHeight;
    private float optimalPageWidth;
    private int[] originalUserPages;
    private int pageHeight;
    private int pageWidth;
    private PagesLoader pagesLoader;
    private Paint paint;
    private PdfDocument pdfDocument;
    private PdfiumCore pdfiumCore;
    private boolean recycled;
    RenderingAsyncTask renderingAsyncTask;
    private ScrollDir scrollDir;
    private ScrollHandle scrollHandle;
    private State state;
    private boolean swipeVertical;
    private float zoom;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum ScrollDir {
        NONE,
        START,
        END
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum State {
        DEFAULT,
        LOADED,
        SHOWN,
        ERROR
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScrollHandle getScrollHandle() {
        return this.scrollHandle;
    }

    public PDFView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.minZoom = 1.0f;
        this.midZoom = 1.75f;
        this.maxZoom = 3.0f;
        this.scrollDir = ScrollDir.NONE;
        this.currentXOffset = 0.0f;
        this.currentYOffset = 0.0f;
        this.zoom = 1.0f;
        this.recycled = true;
        this.state = State.DEFAULT;
        this.defaultPage = 0;
        this.swipeVertical = true;
        this.isScrollHandleInit = false;
        this.bestQuality = false;
        this.annotationRendering = false;
        if (isInEditMode()) {
            return;
        }
        this.cacheManager = new CacheManager();
        this.animationManager = new AnimationManager(this);
        this.dragPinchManager = new DragPinchManager(this, this.animationManager);
        this.paint = new Paint();
        Paint paint = new Paint();
        this.debugPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.pdfiumCore = new PdfiumCore(context);
        setWillNotDraw(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load(DocumentSource documentSource, String str, OnLoadCompleteListener onLoadCompleteListener, OnErrorListener onErrorListener) {
        load(documentSource, str, onLoadCompleteListener, onErrorListener, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load(DocumentSource documentSource, String str, OnLoadCompleteListener onLoadCompleteListener, OnErrorListener onErrorListener, int[] iArr) {
        if (!this.recycled) {
            throw new IllegalStateException("Don't call load on a PDF View without recycling it first.");
        }
        if (iArr != null) {
            this.originalUserPages = iArr;
            this.filteredUserPages = ArrayUtils.deleteDuplicatedPages(iArr);
            this.filteredUserPageIndexes = ArrayUtils.calculateIndexesInDuplicateArray(this.originalUserPages);
        }
        this.onLoadCompleteListener = onLoadCompleteListener;
        this.onErrorListener = onErrorListener;
        this.recycled = false;
        DecodingAsyncTask decodingAsyncTask = new DecodingAsyncTask(documentSource, str, this, this.pdfiumCore);
        this.decodingAsyncTask = decodingAsyncTask;
        decodingAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void jumpTo(int i, boolean z) {
        if (this.swipeVertical) {
            float currentScale = (-i) * toCurrentScale(this.optimalPageHeight);
            if (z) {
                this.animationManager.startYAnimation(this.currentYOffset, currentScale);
            } else {
                moveTo(this.currentXOffset, currentScale);
            }
        } else {
            float currentScale2 = (-i) * toCurrentScale(this.optimalPageWidth);
            if (z) {
                this.animationManager.startXAnimation(this.currentXOffset, currentScale2);
            } else {
                moveTo(currentScale2, this.currentYOffset);
            }
        }
        showPage(i);
    }

    public void jumpTo(int i) {
        jumpTo(i, false);
    }

    void showPage(int i) {
        if (this.recycled) {
            return;
        }
        this.state = State.SHOWN;
        int determineValidPageNumberFrom = determineValidPageNumberFrom(i);
        this.currentPage = determineValidPageNumberFrom;
        this.currentFilteredPage = determineValidPageNumberFrom;
        int[] iArr = this.filteredUserPageIndexes;
        if (iArr != null && determineValidPageNumberFrom >= 0 && determineValidPageNumberFrom < iArr.length) {
            this.currentFilteredPage = iArr[determineValidPageNumberFrom];
        }
        loadPages();
        if (this.scrollHandle != null && !documentFitsView()) {
            this.scrollHandle.setPageNum(this.currentPage + 1);
        }
        OnPageChangeListener onPageChangeListener = this.onPageChangeListener;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageChanged(this.currentPage, getPageCount());
        }
    }

    public float getPositionOffset() {
        float f2;
        float pageCount;
        int width;
        if (this.swipeVertical) {
            f2 = -this.currentYOffset;
            pageCount = getPageCount() * toCurrentScale(this.optimalPageHeight);
            width = getHeight();
        } else {
            f2 = -this.currentXOffset;
            pageCount = getPageCount() * toCurrentScale(this.optimalPageWidth);
            width = getWidth();
        }
        return MathUtils.limit(f2 / (pageCount - width), 0.0f, 1.0f);
    }

    public void setPositionOffset(float f2, boolean z) {
        if (this.swipeVertical) {
            moveTo(this.currentXOffset, (((-getPageCount()) * toCurrentScale(this.optimalPageHeight)) + getHeight()) * f2, z);
        } else {
            moveTo((((-getPageCount()) * toCurrentScale(this.optimalPageWidth)) + getWidth()) * f2, this.currentYOffset, z);
        }
        loadPageByOffset();
    }

    public void setPositionOffset(float f2) {
        setPositionOffset(f2, true);
    }

    public void stopFling() {
        this.animationManager.stopFling();
    }

    public int getPageCount() {
        int[] iArr = this.originalUserPages;
        if (iArr != null) {
            return iArr.length;
        }
        return this.documentPageCount;
    }

    public void enableSwipe(boolean z) {
        this.dragPinchManager.setSwipeEnabled(z);
    }

    public void enableDoubletap(boolean z) {
        this.dragPinchManager.enableDoubletap(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.onPageChangeListener = onPageChangeListener;
    }

    OnPageChangeListener getOnPageChangeListener() {
        return this.onPageChangeListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnPageScrollListener(OnPageScrollListener onPageScrollListener) {
        this.onPageScrollListener = onPageScrollListener;
    }

    OnPageScrollListener getOnPageScrollListener() {
        return this.onPageScrollListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnDrawListener(OnDrawListener onDrawListener) {
        this.onDrawListener = onDrawListener;
    }

    public void recycle() {
        PdfDocument pdfDocument;
        this.animationManager.stopAll();
        RenderingAsyncTask renderingAsyncTask = this.renderingAsyncTask;
        if (renderingAsyncTask != null) {
            renderingAsyncTask.cancel(true);
        }
        DecodingAsyncTask decodingAsyncTask = this.decodingAsyncTask;
        if (decodingAsyncTask != null) {
            decodingAsyncTask.cancel(true);
        }
        this.cacheManager.recycle();
        ScrollHandle scrollHandle = this.scrollHandle;
        if (scrollHandle != null && this.isScrollHandleInit) {
            scrollHandle.destroyLayout();
        }
        PdfiumCore pdfiumCore = this.pdfiumCore;
        if (pdfiumCore != null && (pdfDocument = this.pdfDocument) != null) {
            pdfiumCore.closeDocument(pdfDocument);
        }
        this.originalUserPages = null;
        this.filteredUserPages = null;
        this.filteredUserPageIndexes = null;
        this.pdfDocument = null;
        this.scrollHandle = null;
        this.isScrollHandleInit = false;
        this.currentYOffset = 0.0f;
        this.currentXOffset = 0.0f;
        this.zoom = 1.0f;
        this.recycled = true;
        this.state = State.DEFAULT;
    }

    public boolean isRecycled() {
        return this.recycled;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        recycle();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (isInEditMode()) {
            return;
        }
        this.animationManager.stopAll();
        calculateOptimalWidthAndHeight();
        loadPages();
        if (this.swipeVertical) {
            moveTo(this.currentXOffset, calculateCenterOffsetForPage(this.currentFilteredPage));
        } else {
            moveTo(calculateCenterOffsetForPage(this.currentFilteredPage), this.currentYOffset);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            return;
        }
        Drawable background = getBackground();
        if (background == null) {
            canvas.drawColor(-1);
        } else {
            background.draw(canvas);
        }
        if (!this.recycled && this.state == State.SHOWN) {
            float f2 = this.currentXOffset;
            float f3 = this.currentYOffset;
            canvas.translate(f2, f3);
            for (PagePart pagePart : this.cacheManager.getThumbnails()) {
                drawPart(canvas, pagePart);
            }
            for (PagePart pagePart2 : this.cacheManager.getPageParts()) {
                drawPart(canvas, pagePart2);
            }
            if (this.onDrawListener != null) {
                canvas.translate(toCurrentScale(this.currentFilteredPage * this.optimalPageWidth), 0.0f);
                this.onDrawListener.onLayerDrawn(canvas, toCurrentScale(this.optimalPageWidth), toCurrentScale(this.optimalPageHeight), this.currentPage);
                canvas.translate(-toCurrentScale(this.currentFilteredPage * this.optimalPageWidth), 0.0f);
            }
            canvas.translate(-f2, -f3);
        }
    }

    private void drawPart(Canvas canvas, PagePart pagePart) {
        float currentScale;
        float f2;
        RectF pageRelativeBounds = pagePart.getPageRelativeBounds();
        Bitmap renderedBitmap = pagePart.getRenderedBitmap();
        if (renderedBitmap.isRecycled()) {
            return;
        }
        if (this.swipeVertical) {
            f2 = toCurrentScale(pagePart.getUserPage() * this.optimalPageHeight);
            currentScale = 0.0f;
        } else {
            currentScale = toCurrentScale(pagePart.getUserPage() * this.optimalPageWidth);
            f2 = 0.0f;
        }
        canvas.translate(currentScale, f2);
        Rect rect = new Rect(0, 0, renderedBitmap.getWidth(), renderedBitmap.getHeight());
        float currentScale2 = toCurrentScale(pageRelativeBounds.left * this.optimalPageWidth);
        float currentScale3 = toCurrentScale(pageRelativeBounds.top * this.optimalPageHeight);
        RectF rectF = new RectF((int) currentScale2, (int) currentScale3, (int) (currentScale2 + toCurrentScale(pageRelativeBounds.width() * this.optimalPageWidth)), (int) (currentScale3 + toCurrentScale(pageRelativeBounds.height() * this.optimalPageHeight)));
        float f3 = this.currentXOffset + currentScale;
        float f4 = this.currentYOffset + f2;
        if (rectF.left + f3 >= getWidth() || f3 + rectF.right <= 0.0f || rectF.top + f4 >= getHeight() || f4 + rectF.bottom <= 0.0f) {
            canvas.translate(-currentScale, -f2);
            return;
        }
        canvas.drawBitmap(renderedBitmap, rect, rectF, this.paint);
        canvas.translate(-currentScale, -f2);
    }

    public void loadPages() {
        if (this.optimalPageWidth == 0.0f || this.optimalPageHeight == 0.0f) {
            return;
        }
        this.renderingAsyncTask.removeAllTasks();
        this.cacheManager.makeANewSet();
        this.pagesLoader.loadPages();
        redraw();
    }

    public void loadComplete(PdfDocument pdfDocument) {
        this.state = State.LOADED;
        this.documentPageCount = this.pdfiumCore.getPageCount(pdfDocument);
        int[] iArr = this.originalUserPages;
        int i = iArr != null ? iArr[0] : 0;
        this.pdfDocument = pdfDocument;
        this.pdfiumCore.openPage(pdfDocument, i);
        this.pageWidth = this.pdfiumCore.getPageWidth(pdfDocument, i);
        this.pageHeight = this.pdfiumCore.getPageHeight(pdfDocument, i);
        calculateOptimalWidthAndHeight();
        this.pagesLoader = new PagesLoader(this);
        RenderingAsyncTask renderingAsyncTask = new RenderingAsyncTask(this, this.pdfiumCore, pdfDocument);
        this.renderingAsyncTask = renderingAsyncTask;
        renderingAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        ScrollHandle scrollHandle = this.scrollHandle;
        if (scrollHandle != null) {
            scrollHandle.setupLayout(this);
            this.isScrollHandleInit = true;
        }
        jumpTo(this.defaultPage, false);
        OnLoadCompleteListener onLoadCompleteListener = this.onLoadCompleteListener;
        if (onLoadCompleteListener != null) {
            onLoadCompleteListener.loadComplete(this.documentPageCount);
        }
    }

    public void loadError(Throwable th) {
        this.state = State.ERROR;
        recycle();
        invalidate();
        OnErrorListener onErrorListener = this.onErrorListener;
        if (onErrorListener != null) {
            onErrorListener.onError(th);
        } else {
            Log.e(TAG, "load pdf error", th);
        }
    }

    void redraw() {
        invalidate();
    }

    public void onBitmapRendered(PagePart pagePart) {
        if (pagePart.isThumbnail()) {
            this.cacheManager.cacheThumbnail(pagePart);
        } else {
            this.cacheManager.cachePart(pagePart);
        }
        redraw();
    }

    private int determineValidPageNumberFrom(int i) {
        if (i <= 0) {
            return 0;
        }
        int[] iArr = this.originalUserPages;
        if (iArr != null) {
            if (i >= iArr.length) {
                return iArr.length - 1;
            }
        } else {
            int i2 = this.documentPageCount;
            if (i >= i2) {
                return i2 - 1;
            }
        }
        return i;
    }

    private float calculateCenterOffsetForPage(int i) {
        float f2;
        float width;
        float f3;
        if (this.swipeVertical) {
            f2 = -(i * this.optimalPageHeight);
            width = getHeight() / 2;
            f3 = this.optimalPageHeight;
        } else {
            f2 = -(i * this.optimalPageWidth);
            width = getWidth() / 2;
            f3 = this.optimalPageWidth;
        }
        return f2 + (width - (f3 / 2.0f));
    }

    private void calculateOptimalWidthAndHeight() {
        if (this.state == State.DEFAULT || getWidth() == 0) {
            return;
        }
        float width = getWidth();
        float height = getHeight();
        float f2 = this.pageWidth / this.pageHeight;
        float floor = (float) Math.floor(width / f2);
        if (floor > height) {
            width = (float) Math.floor(f2 * height);
        } else {
            height = floor;
        }
        this.optimalPageWidth = width;
        this.optimalPageHeight = height;
    }

    public void moveTo(float f2, float f3) {
        moveTo(f2, f3, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void moveTo(float r5, float r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.barteksc.pdfviewer.PDFView.moveTo(float, float, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScrollDir getScrollDir() {
        return this.scrollDir;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadPageByOffset() {
        float f2;
        float f3;
        if (this.swipeVertical) {
            f2 = this.currentYOffset;
            f3 = this.optimalPageHeight;
        } else {
            f2 = this.currentXOffset;
            f3 = this.optimalPageWidth;
        }
        int floor = (int) Math.floor((Math.abs(f2) + (getHeight() / 5)) / toCurrentScale(f3));
        if (floor >= 0 && floor <= getPageCount() - 1 && floor != getCurrentPage()) {
            showPage(floor);
        } else {
            loadPages();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getFilteredUserPages() {
        return this.filteredUserPages;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDocumentPageCount() {
        return this.documentPageCount;
    }

    public void moveRelativeTo(float f2, float f3) {
        moveTo(this.currentXOffset + f2, this.currentYOffset + f3);
    }

    public void zoomTo(float f2) {
        this.zoom = f2;
    }

    public void zoomCenteredTo(float f2, PointF pointF) {
        float f3 = f2 / this.zoom;
        zoomTo(f2);
        moveTo((this.currentXOffset * f3) + (pointF.x - (pointF.x * f3)), (this.currentYOffset * f3) + (pointF.y - (pointF.y * f3)));
    }

    public void zoomCenteredRelativeTo(float f2, PointF pointF) {
        zoomCenteredTo(this.zoom * f2, pointF);
    }

    public boolean documentFitsView() {
        return this.swipeVertical ? ((float) getPageCount()) * this.optimalPageHeight < ((float) getHeight()) : ((float) getPageCount()) * this.optimalPageWidth < ((float) getWidth());
    }

    public int getCurrentPage() {
        return this.currentPage;
    }

    public float getCurrentXOffset() {
        return this.currentXOffset;
    }

    public float getCurrentYOffset() {
        return this.currentYOffset;
    }

    public float toRealScale(float f2) {
        return f2 / this.zoom;
    }

    public float toCurrentScale(float f2) {
        return f2 * this.zoom;
    }

    public float getZoom() {
        return this.zoom;
    }

    public boolean isZooming() {
        return this.zoom != this.minZoom;
    }

    public float getOptimalPageWidth() {
        return this.optimalPageWidth;
    }

    public float getOptimalPageHeight() {
        return this.optimalPageHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultPage(int i) {
        this.defaultPage = i;
    }

    public void resetZoom() {
        zoomTo(this.minZoom);
    }

    public void resetZoomWithAnimation() {
        zoomWithAnimation(this.minZoom);
    }

    public void zoomWithAnimation(float f2, float f3, float f4) {
        this.animationManager.startZoomAnimation(f2, f3, this.zoom, f4);
    }

    public void zoomWithAnimation(float f2) {
        this.animationManager.startZoomAnimation(getWidth() / 2, getHeight() / 2, this.zoom, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollHandle(ScrollHandle scrollHandle) {
        this.scrollHandle = scrollHandle;
    }

    public int getPageAtPositionOffset(float f2) {
        float currentScale;
        int width;
        int i = this.scrollDir == ScrollDir.END ? 1 : -1;
        if (this.swipeVertical) {
            currentScale = toCurrentScale(this.optimalPageHeight);
            width = getHeight();
        } else {
            currentScale = toCurrentScale(this.optimalPageWidth);
            width = getWidth();
        }
        return (int) Math.floor((getPageCount() * f2) + (((width * i) / 5.0f) / currentScale));
    }

    public float getMinZoom() {
        return this.minZoom;
    }

    public void setMinZoom(float f2) {
        this.minZoom = f2;
    }

    public float getMidZoom() {
        return this.midZoom;
    }

    public void setMidZoom(float f2) {
        this.midZoom = f2;
    }

    public float getMaxZoom() {
        return this.maxZoom;
    }

    public void setMaxZoom(float f2) {
        this.maxZoom = f2;
    }

    public void useBestQuality(boolean z) {
        this.bestQuality = z;
    }

    public boolean isBestQuality() {
        return this.bestQuality;
    }

    public boolean isSwipeVertical() {
        return this.swipeVertical;
    }

    public void setSwipeVertical(boolean z) {
        this.swipeVertical = z;
    }

    public void enableAnnotationRendering(boolean z) {
        this.annotationRendering = z;
    }

    public boolean isAnnotationRendering() {
        return this.annotationRendering;
    }

    public PdfDocument.Meta getDocumentMeta() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null) {
            return null;
        }
        return this.pdfiumCore.getDocumentMeta(pdfDocument);
    }

    public List<PdfDocument.Bookmark> getTableOfContents() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null) {
            return new ArrayList();
        }
        return this.pdfiumCore.getTableOfContents(pdfDocument);
    }

    public Configurator fromAsset(String str) {
        return new Configurator(new AssetSource(str));
    }

    public Configurator fromFile(File file) {
        return new Configurator(new FileSource(file));
    }

    public Configurator fromUri(Uri uri) {
        return new Configurator(new UriSource(uri));
    }

    public Configurator fromBytes(byte[] bArr) {
        return new Configurator(new ByteArraySource(bArr));
    }

    public Configurator fromStream(InputStream inputStream) {
        return new Configurator(new InputStreamSource(inputStream));
    }

    public Configurator fromSource(DocumentSource documentSource) {
        return new Configurator(documentSource);
    }

    /* loaded from: classes3.dex */
    public class Configurator {
        private boolean annotationRendering;
        private int defaultPage;
        private final DocumentSource documentSource;
        private boolean enableDoubletap;
        private boolean enableSwipe;
        private OnDrawListener onDrawListener;
        private OnErrorListener onErrorListener;
        private OnLoadCompleteListener onLoadCompleteListener;
        private OnPageChangeListener onPageChangeListener;
        private OnPageScrollListener onPageScrollListener;
        private int[] pageNumbers;
        private String password;
        private ScrollHandle scrollHandle;
        private boolean swipeHorizontal;

        private Configurator(DocumentSource documentSource) {
            this.pageNumbers = null;
            this.enableSwipe = true;
            this.enableDoubletap = true;
            this.defaultPage = 0;
            this.swipeHorizontal = false;
            this.annotationRendering = false;
            this.password = null;
            this.scrollHandle = null;
            this.documentSource = documentSource;
        }

        public Configurator pages(int... iArr) {
            this.pageNumbers = iArr;
            return this;
        }

        public Configurator enableSwipe(boolean z) {
            this.enableSwipe = z;
            return this;
        }

        public Configurator enableDoubletap(boolean z) {
            this.enableDoubletap = z;
            return this;
        }

        public Configurator enableAnnotationRendering(boolean z) {
            this.annotationRendering = z;
            return this;
        }

        public Configurator onDraw(OnDrawListener onDrawListener) {
            this.onDrawListener = onDrawListener;
            return this;
        }

        public Configurator onLoad(OnLoadCompleteListener onLoadCompleteListener) {
            this.onLoadCompleteListener = onLoadCompleteListener;
            return this;
        }

        public Configurator onPageScroll(OnPageScrollListener onPageScrollListener) {
            this.onPageScrollListener = onPageScrollListener;
            return this;
        }

        public Configurator onError(OnErrorListener onErrorListener) {
            this.onErrorListener = onErrorListener;
            return this;
        }

        public Configurator onPageChange(OnPageChangeListener onPageChangeListener) {
            this.onPageChangeListener = onPageChangeListener;
            return this;
        }

        public Configurator defaultPage(int i) {
            this.defaultPage = i;
            return this;
        }

        public Configurator swipeHorizontal(boolean z) {
            this.swipeHorizontal = z;
            return this;
        }

        public Configurator password(String str) {
            this.password = str;
            return this;
        }

        public Configurator scrollHandle(ScrollHandle scrollHandle) {
            this.scrollHandle = scrollHandle;
            return this;
        }

        public void load() {
            PDFView.this.recycle();
            PDFView.this.setOnDrawListener(this.onDrawListener);
            PDFView.this.setOnPageChangeListener(this.onPageChangeListener);
            PDFView.this.setOnPageScrollListener(this.onPageScrollListener);
            PDFView.this.enableSwipe(this.enableSwipe);
            PDFView.this.enableDoubletap(this.enableDoubletap);
            PDFView.this.setDefaultPage(this.defaultPage);
            PDFView.this.setSwipeVertical(!this.swipeHorizontal);
            PDFView.this.enableAnnotationRendering(this.annotationRendering);
            PDFView.this.setScrollHandle(this.scrollHandle);
            PDFView.this.dragPinchManager.setSwipeVertical(PDFView.this.swipeVertical);
            int[] iArr = this.pageNumbers;
            if (iArr != null) {
                PDFView.this.load(this.documentSource, this.password, this.onLoadCompleteListener, this.onErrorListener, iArr);
            } else {
                PDFView.this.load(this.documentSource, this.password, this.onLoadCompleteListener, this.onErrorListener);
            }
        }
    }
}
