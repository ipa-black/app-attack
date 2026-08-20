package com.google.android.youtube.player;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.android.youtube.player.internal.aa;
import com.google.android.youtube.player.internal.ab;
import com.google.android.youtube.player.internal.b;
import com.google.android.youtube.player.internal.t;
/* loaded from: classes4.dex */
public final class YouTubeThumbnailView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private b f9724a;

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.youtube.player.internal.a f9725b;

    /* loaded from: classes4.dex */
    public interface OnInitializedListener {
        void onInitializationFailure(YouTubeThumbnailView youTubeThumbnailView, YouTubeInitializationResult youTubeInitializationResult);

        void onInitializationSuccess(YouTubeThumbnailView youTubeThumbnailView, YouTubeThumbnailLoader youTubeThumbnailLoader);
    }

    /* loaded from: classes4.dex */
    private static final class a implements t.a, t.b {

        /* renamed from: a  reason: collision with root package name */
        private YouTubeThumbnailView f9726a;

        /* renamed from: b  reason: collision with root package name */
        private OnInitializedListener f9727b;

        public a(YouTubeThumbnailView youTubeThumbnailView, OnInitializedListener onInitializedListener) {
            this.f9726a = (YouTubeThumbnailView) ab.a(youTubeThumbnailView, "thumbnailView cannot be null");
            this.f9727b = (OnInitializedListener) ab.a(onInitializedListener, "onInitializedlistener cannot be null");
        }

        private void c() {
            YouTubeThumbnailView youTubeThumbnailView = this.f9726a;
            if (youTubeThumbnailView != null) {
                YouTubeThumbnailView.c(youTubeThumbnailView);
                this.f9726a = null;
                this.f9727b = null;
            }
        }

        @Override // com.google.android.youtube.player.internal.t.a
        public final void a() {
            YouTubeThumbnailView youTubeThumbnailView = this.f9726a;
            if (youTubeThumbnailView == null || youTubeThumbnailView.f9724a == null) {
                return;
            }
            this.f9726a.f9725b = aa.a().a(this.f9726a.f9724a, this.f9726a);
            OnInitializedListener onInitializedListener = this.f9727b;
            YouTubeThumbnailView youTubeThumbnailView2 = this.f9726a;
            onInitializedListener.onInitializationSuccess(youTubeThumbnailView2, youTubeThumbnailView2.f9725b);
            c();
        }

        @Override // com.google.android.youtube.player.internal.t.b
        public final void a(YouTubeInitializationResult youTubeInitializationResult) {
            this.f9727b.onInitializationFailure(this.f9726a, youTubeInitializationResult);
            c();
        }

        @Override // com.google.android.youtube.player.internal.t.a
        public final void b() {
            c();
        }
    }

    public YouTubeThumbnailView(Context context) {
        this(context, null);
    }

    public YouTubeThumbnailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public YouTubeThumbnailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    static /* synthetic */ b c(YouTubeThumbnailView youTubeThumbnailView) {
        youTubeThumbnailView.f9724a = null;
        return null;
    }

    protected final void finalize() throws Throwable {
        com.google.android.youtube.player.internal.a aVar = this.f9725b;
        if (aVar != null) {
            aVar.b();
            this.f9725b = null;
        }
        super.finalize();
    }

    public final void initialize(String str, OnInitializedListener onInitializedListener) {
        a aVar = new a(this, onInitializedListener);
        b a2 = aa.a().a(getContext(), str, aVar, aVar);
        this.f9724a = a2;
        a2.e();
    }
}
