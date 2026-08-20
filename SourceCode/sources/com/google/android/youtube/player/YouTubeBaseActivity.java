package com.google.android.youtube.player;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerView;
/* loaded from: classes4.dex */
public class YouTubeBaseActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private a f9685a;

    /* renamed from: b  reason: collision with root package name */
    private YouTubePlayerView f9686b;

    /* renamed from: c  reason: collision with root package name */
    private int f9687c;

    /* renamed from: d  reason: collision with root package name */
    private Bundle f9688d;

    /* loaded from: classes4.dex */
    private final class a implements YouTubePlayerView.b {
        private a() {
        }

        /* synthetic */ a(YouTubeBaseActivity youTubeBaseActivity, byte b2) {
            this();
        }

        @Override // com.google.android.youtube.player.YouTubePlayerView.b
        public final void a(YouTubePlayerView youTubePlayerView) {
            if (YouTubeBaseActivity.this.f9686b != null && YouTubeBaseActivity.this.f9686b != youTubePlayerView) {
                YouTubeBaseActivity.this.f9686b.c(true);
            }
            YouTubeBaseActivity.this.f9686b = youTubePlayerView;
            if (YouTubeBaseActivity.this.f9687c > 0) {
                youTubePlayerView.a();
            }
            if (YouTubeBaseActivity.this.f9687c >= 2) {
                youTubePlayerView.b();
            }
        }

        @Override // com.google.android.youtube.player.YouTubePlayerView.b
        public final void a(YouTubePlayerView youTubePlayerView, String str, YouTubePlayer.OnInitializedListener onInitializedListener) {
            YouTubeBaseActivity youTubeBaseActivity = YouTubeBaseActivity.this;
            youTubePlayerView.a(youTubeBaseActivity, youTubePlayerView, str, onInitializedListener, youTubeBaseActivity.f9688d);
            YouTubeBaseActivity.b(YouTubeBaseActivity.this);
        }
    }

    static /* synthetic */ Bundle b(YouTubeBaseActivity youTubeBaseActivity) {
        youTubeBaseActivity.f9688d = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final YouTubePlayerView.b a() {
        return this.f9685a;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f9685a = new a(this, (byte) 0);
        this.f9688d = bundle != null ? bundle.getBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE") : null;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        YouTubePlayerView youTubePlayerView = this.f9686b;
        if (youTubePlayerView != null) {
            youTubePlayerView.b(isFinishing());
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.f9687c = 1;
        YouTubePlayerView youTubePlayerView = this.f9686b;
        if (youTubePlayerView != null) {
            youTubePlayerView.c();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f9687c = 2;
        YouTubePlayerView youTubePlayerView = this.f9686b;
        if (youTubePlayerView != null) {
            youTubePlayerView.b();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        YouTubePlayerView youTubePlayerView = this.f9686b;
        bundle.putBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE", youTubePlayerView != null ? youTubePlayerView.e() : this.f9688d);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.f9687c = 1;
        YouTubePlayerView youTubePlayerView = this.f9686b;
        if (youTubePlayerView != null) {
            youTubePlayerView.a();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.f9687c = 0;
        YouTubePlayerView youTubePlayerView = this.f9686b;
        if (youTubePlayerView != null) {
            youTubePlayerView.d();
        }
        super.onStop();
    }
}
