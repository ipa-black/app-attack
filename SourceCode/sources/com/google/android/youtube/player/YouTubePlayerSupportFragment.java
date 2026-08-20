package com.google.android.youtube.player;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerView;
import com.google.android.youtube.player.internal.ab;
/* loaded from: classes4.dex */
public class YouTubePlayerSupportFragment extends Fragment implements YouTubePlayer.Provider {

    /* renamed from: a  reason: collision with root package name */
    private final a f9704a = new a(this, (byte) 0);

    /* renamed from: b  reason: collision with root package name */
    private Bundle f9705b;

    /* renamed from: c  reason: collision with root package name */
    private YouTubePlayerView f9706c;

    /* renamed from: d  reason: collision with root package name */
    private String f9707d;

    /* renamed from: e  reason: collision with root package name */
    private YouTubePlayer.OnInitializedListener f9708e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9709f;

    /* loaded from: classes4.dex */
    private final class a implements YouTubePlayerView.b {
        private a() {
        }

        /* synthetic */ a(YouTubePlayerSupportFragment youTubePlayerSupportFragment, byte b2) {
            this();
        }

        @Override // com.google.android.youtube.player.YouTubePlayerView.b
        public final void a(YouTubePlayerView youTubePlayerView) {
        }

        @Override // com.google.android.youtube.player.YouTubePlayerView.b
        public final void a(YouTubePlayerView youTubePlayerView, String str, YouTubePlayer.OnInitializedListener onInitializedListener) {
            YouTubePlayerSupportFragment youTubePlayerSupportFragment = YouTubePlayerSupportFragment.this;
            youTubePlayerSupportFragment.initialize(str, youTubePlayerSupportFragment.f9708e);
        }
    }

    private void a() {
        YouTubePlayerView youTubePlayerView = this.f9706c;
        if (youTubePlayerView == null || this.f9708e == null) {
            return;
        }
        youTubePlayerView.a(this.f9709f);
        this.f9706c.a(getActivity(), this, this.f9707d, this.f9708e, this.f9705b);
        this.f9705b = null;
        this.f9708e = null;
    }

    public static YouTubePlayerSupportFragment newInstance() {
        return new YouTubePlayerSupportFragment();
    }

    @Override // com.google.android.youtube.player.YouTubePlayer.Provider
    public void initialize(String str, YouTubePlayer.OnInitializedListener onInitializedListener) {
        this.f9707d = ab.a(str, (Object) "Developer key cannot be null or empty");
        this.f9708e = onInitializedListener;
        a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f9705b = bundle != null ? bundle.getBundle("YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE") : null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f9706c = new YouTubePlayerView(getActivity(), null, 0, this.f9704a);
        a();
        return this.f9706c;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        if (this.f9706c != null) {
            FragmentActivity activity = getActivity();
            this.f9706c.b(activity == null || activity.isFinishing());
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f9706c.c(getActivity().isFinishing());
        this.f9706c = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f9706c.c();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f9706c.b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        YouTubePlayerView youTubePlayerView = this.f9706c;
        bundle.putBundle("YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE", youTubePlayerView != null ? youTubePlayerView.e() : this.f9705b);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f9706c.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        this.f9706c.d();
        super.onStop();
    }
}
