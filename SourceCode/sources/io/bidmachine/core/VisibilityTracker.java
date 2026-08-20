package io.bidmachine.core;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes5.dex */
public class VisibilityTracker {
    private static final int NO_TRACK = -1;
    private static final ArrayList<TrackingHolder> holders = new ArrayList<>();

    /* loaded from: classes5.dex */
    public interface VisibilityChangeCallback {
        boolean onViewShown();

        void onViewTrackingFinished();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class TrackingHolder {
        private static final int AFD_MAX_COUNT_OVERLAPPED_VIEWS = 3;
        private static final int CHECK_DELAY = 100;
        private final VisibilityChangeCallback callback;
        private final Runnable checkRunnable = new Runnable() { // from class: io.bidmachine.core.VisibilityTracker.TrackingHolder.2
            @Override // java.lang.Runnable
            public void run() {
                if (TrackingHolder.this.check()) {
                    return;
                }
                TrackingHolder.this.isCheckerScheduled = false;
                TrackingHolder.this.scheduleChecker();
            }
        };
        private final Runnable finishRunnable = new Runnable() { // from class: io.bidmachine.core.VisibilityTracker.TrackingHolder.3
            @Override // java.lang.Runnable
            public void run() {
                TrackingHolder.this.release();
            }
        };
        private final boolean ignoreCheckWindowFocus;
        private boolean isCheckerScheduled;
        private boolean isFinishedRequested;
        private boolean isFinishedTracked;
        private boolean isShownTracked;
        private long lastShownTimeMs;
        private ViewTreeObserver.OnPreDrawListener preDrawListener;
        private final long requiredOnScreenTime;
        private final WeakReference<View> viewReference;
        private final float visibilityPercent;

        TrackingHolder(View view, long j, float f2, boolean z, VisibilityChangeCallback visibilityChangeCallback) {
            this.viewReference = new WeakReference<>(view);
            this.requiredOnScreenTime = j;
            this.visibilityPercent = f2;
            this.ignoreCheckWindowFocus = z;
            this.callback = visibilityChangeCallback;
        }

        public void start() {
            View view = this.viewReference.get();
            if (view == null) {
                release();
                return;
            }
            Logger.log(String.format("Start tracking - %s", view));
            if (this.preDrawListener == null) {
                this.preDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: io.bidmachine.core.VisibilityTracker.TrackingHolder.1
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        TrackingHolder.this.scheduleChecker();
                        return true;
                    }
                };
            }
            view.getViewTreeObserver().addOnPreDrawListener(this.preDrawListener);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void scheduleChecker() {
            if (this.isCheckerScheduled) {
                return;
            }
            this.isCheckerScheduled = true;
            Utils.onUiThread(this.checkRunnable, 100L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean check() {
            View view = this.viewReference.get();
            if (view == null) {
                release();
                return true;
            } else if (this.isShownTracked && this.isFinishedTracked) {
                release();
                return true;
            } else {
                if (isOnTop(view, this.visibilityPercent, this.ignoreCheckWindowFocus) && this.callback.onViewShown()) {
                    if (!this.isShownTracked) {
                        this.isShownTracked = true;
                    }
                    if (!this.isFinishedRequested && !this.isFinishedTracked) {
                        Utils.onUiThread(this.finishRunnable, this.requiredOnScreenTime);
                        this.lastShownTimeMs = System.currentTimeMillis();
                        this.isFinishedRequested = true;
                    }
                } else if (!this.isFinishedTracked) {
                    Utils.cancelUiThreadTask(this.finishRunnable);
                    this.isFinishedRequested = false;
                    this.lastShownTimeMs = 0L;
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            View view = this.viewReference.get();
            if (view != null) {
                Logger.log(String.format("Stop tracking - %s", view));
                if (this.isShownTracked && !this.isFinishedTracked && this.requiredOnScreenTime > -1 && this.lastShownTimeMs > 0 && System.currentTimeMillis() - this.lastShownTimeMs >= this.requiredOnScreenTime) {
                    this.isFinishedTracked = true;
                    this.callback.onViewTrackingFinished();
                }
                view.getViewTreeObserver().removeOnPreDrawListener(this.preDrawListener);
            }
            Utils.cancelUiThreadTask(this.checkRunnable);
            Utils.cancelUiThreadTask(this.finishRunnable);
            synchronized (VisibilityTracker.holders) {
                VisibilityTracker.holders.remove(this);
            }
        }

        public boolean isOnTop(View view, float f2, boolean z) {
            Rect rect;
            try {
                rect = new Rect();
            } catch (Exception e2) {
                Logger.log(e2);
            }
            if (!view.getGlobalVisibleRect(rect)) {
                Logger.log(String.format("Show wasn't tracked: global visibility verification failed - %s", view));
                return false;
            } else if (!view.isShown()) {
                Logger.log(String.format("Show wasn't tracked: view visibility verification failed - %s", view));
                return false;
            } else if (Utils.isViewTransparent(view)) {
                Logger.log(String.format("Show wasn't tracked: view transparent verification failed - %s", view));
                return false;
            } else if (!z && !view.hasWindowFocus()) {
                Logger.log(String.format("Show wasn't tracked: window focus verification failed - %s", view));
                return false;
            } else {
                float width = view.getWidth() * view.getHeight();
                if (width == 0.0f) {
                    Logger.log(String.format("Show wasn't tracked: view size verification failed - %s", view));
                    return false;
                }
                float width2 = (rect.width() * rect.height()) / width;
                if (width2 < f2) {
                    Logger.log(String.format("Show wasn't tracked: ad view not completely visible (%s / %s) - %s", Float.valueOf(width2), Float.valueOf(f2), view));
                    return false;
                }
                View view2 = (View) view.getParent();
                while (view2 != null && view2.getId() != 16908290) {
                    view2 = (View) view2.getParent();
                }
                if (view2 == null) {
                    Logger.log(String.format("Show wasn't tracked: activity content layout not found - %s", view));
                    return false;
                }
                Rect rect2 = new Rect();
                view2.getGlobalVisibleRect(rect2);
                if (!Rect.intersects(rect, rect2)) {
                    Logger.log(String.format("Show wasn't tracked: ad view is out of current window - %s", view));
                    return false;
                }
                ViewGroup viewGroup = (ViewGroup) view.getRootView();
                ViewGroup viewGroup2 = (ViewGroup) view.getParent();
                int i = 0;
                while (viewGroup2 != null) {
                    for (int indexOfChild = viewGroup2.indexOfChild(view) + 1; indexOfChild < viewGroup2.getChildCount(); indexOfChild++) {
                        View childAt = viewGroup2.getChildAt(indexOfChild);
                        if (childAt.getVisibility() == 0) {
                            childAt.getLocationInWindow(new int[2]);
                            Rect viewRectangle = Utils.getViewRectangle(childAt);
                            if (Rect.intersects(rect, viewRectangle)) {
                                float viewNotOverlappedAreaPercent = viewNotOverlappedAreaPercent(rect, viewRectangle);
                                Logger.log(String.format("Show wasn't tracked: ad view is overlapped by another visible view (%s), visible percent: %s / %s", childAt, Float.valueOf(viewNotOverlappedAreaPercent), Float.valueOf(f2)));
                                if (viewNotOverlappedAreaPercent < f2) {
                                    Logger.log(String.format("Show wasn't tracked: ad view is covered by another view - %s", view));
                                    return false;
                                }
                                i++;
                                if (i >= 3) {
                                    Logger.log(String.format("Show wasn't tracked: ad view is covered by too many views - %s", view));
                                    return false;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    if (viewGroup2 != viewGroup) {
                        ViewGroup viewGroup3 = viewGroup2;
                        viewGroup2 = (ViewGroup) viewGroup2.getParent();
                        view = viewGroup3;
                    } else {
                        viewGroup2 = null;
                    }
                }
                return true;
            }
        }

        private static float viewNotOverlappedAreaPercent(Rect rect, Rect rect2) {
            int width = rect.width() * rect.height();
            if (width == 0) {
                return 0.0f;
            }
            return (width - (Math.max(0, Math.min(rect.right, rect2.right) - Math.max(rect.left, rect2.left)) * Math.max(0, Math.min(rect.bottom, rect2.bottom) - Math.max(rect.top, rect2.top)))) / width;
        }
    }

    public static void startTracking(View view, long j, float f2, boolean z, VisibilityChangeCallback visibilityChangeCallback) {
        ArrayList<TrackingHolder> arrayList = holders;
        synchronized (arrayList) {
            stopTracking(view);
            TrackingHolder trackingHolder = new TrackingHolder(view, j, f2, z, visibilityChangeCallback);
            arrayList.add(trackingHolder);
            trackingHolder.start();
        }
    }

    public static void stopTracking(View view) {
        ArrayList<TrackingHolder> arrayList = holders;
        synchronized (arrayList) {
            Iterator<TrackingHolder> it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TrackingHolder next = it.next();
                if (next.viewReference.get() == view) {
                    next.release();
                    break;
                }
            }
        }
    }
}
