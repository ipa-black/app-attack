package com.google.android.youtube.player;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerView;
import com.google.android.youtube.player.internal.ab;
/* loaded from: classes4.dex */
public class YouTubePlayerFragment extends Fragment implements YouTubePlayer.Provider {

    /* renamed from: a  reason: collision with root package name */
    private final a f9697a = new a(this, (byte) 0);

    /* renamed from: b  reason: collision with root package name */
    private Bundle f9698b;

    /* renamed from: c  reason: collision with root package name */
    private YouTubePlayerView f9699c;

    /* renamed from: d  reason: collision with root package name */
    private String f9700d;

    /* renamed from: e  reason: collision with root package name */
    private YouTubePlayer.OnInitializedListener f9701e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9702f;

    /* loaded from: classes4.dex */
    private final class a implements YouTubePlayerView.b {
        private a() {
        }

        /* synthetic */ a(YouTubePlayerFragment youTubePlayerFragment, byte b2) {
            this();
        }

        @Override // com.google.android.youtube.player.YouTubePlayerView.b
        public final void a(YouTubePlayerView youTubePlayerView) {
        }

        @Override // com.google.android.youtube.player.YouTubePlayerView.b
        public final void a(YouTubePlayerView youTubePlayerView, String str, YouTubePlayer.OnInitializedListener onInitializedListener) {
            YouTubePlayerFragment youTubePlayerFragment = YouTubePlayerFragment.this;
            youTubePlayerFragment.initialize(str, youTubePlayerFragment.f9701e);
        }
    }

    private void a() {
        YouTubePlayerView youTubePlayerView = this.f9699c;
        if (youTubePlayerView == null || this.f9701e == null) {
            return;
        }
        youTubePlayerView.a(this.f9702f);
        this.f9699c.a(getActivity(), this, this.f9700d, this.f9701e, this.f9698b);
        this.f9698b = null;
        this.f9701e = null;
    }

    public static YouTubePlayerFragment newInstance() {
        return new YouTubePlayerFragment();
    }

    @Override // com.google.android.youtube.player.YouTubePlayer.Provider
    public void initialize(String str, YouTubePlayer.OnInitializedListener onInitializedListener) {
        this.f9700d = ab.a(str, (Object) "Developer key cannot be null or empty");
        this.f9701e = onInitializedListener;
        a();
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f9698b = bundle != null ? bundle.getBundle("YouTubePlayerFragment.KEY_PLAYER_VIEW_STATE") : null;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f9699c = new YouTubePlayerView(getActivity(), null, 0, this.f9697a);
        a();
        return this.f9699c;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        if (this.f9699c != null) {
            Activity activity = getActivity();
            this.f9699c.b(activity == null || activity.isFinishing());
        }
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.f9699c.c(getActivity().isFinishing());
        this.f9699c = null;
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public void onPause() {
        this.f9699c.c();
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.f9699c.b();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        YouTubePlayerView youTubePlayerView = this.f9699c;
        bundle.putBundle("YouTubePlayerFragment.KEY_PLAYER_VIEW_STATE", youTubePlayerView != null ? youTubePlayerView.e() : this.f9698b);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f9699c.a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        this.f9699c.d();
        super.onStop();
    }
}
