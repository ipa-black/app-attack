package com.google.android.youtube.player.internal;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.View;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.internal.e;
import com.google.android.youtube.player.internal.f;
import com.google.android.youtube.player.internal.g;
import com.google.android.youtube.player.internal.h;
import java.util.List;
/* loaded from: classes4.dex */
public final class s implements YouTubePlayer {

    /* renamed from: a  reason: collision with root package name */
    private b f9789a;

    /* renamed from: b  reason: collision with root package name */
    private d f9790b;

    public s(b bVar, d dVar) {
        this.f9789a = (b) ab.a(bVar, "connectionClient cannot be null");
        this.f9790b = (d) ab.a(dVar, "embeddedPlayer cannot be null");
    }

    public final View a() {
        try {
            return (View) v.a(this.f9790b.s());
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final void a(Configuration configuration) {
        try {
            this.f9790b.a(configuration);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final void a(boolean z) {
        try {
            this.f9790b.a(z);
            this.f9789a.a(z);
            this.f9789a.d();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final boolean a(int i, KeyEvent keyEvent) {
        try {
            return this.f9790b.a(i, keyEvent);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final boolean a(Bundle bundle) {
        try {
            return this.f9790b.a(bundle);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void addFullscreenControlFlag(int i) {
        try {
            this.f9790b.d(i);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final void b() {
        try {
            this.f9790b.m();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final void b(boolean z) {
        try {
            this.f9790b.e(z);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final boolean b(int i, KeyEvent keyEvent) {
        try {
            return this.f9790b.b(i, keyEvent);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final void c() {
        try {
            this.f9790b.n();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void cuePlaylist(String str) {
        cuePlaylist(str, 0, 0);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void cuePlaylist(String str, int i, int i2) {
        try {
            this.f9790b.a(str, i, i2);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void cueVideo(String str) {
        cueVideo(str, 0);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void cueVideo(String str, int i) {
        try {
            this.f9790b.a(str, i);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void cueVideos(List<String> list) {
        cueVideos(list, 0, 0);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void cueVideos(List<String> list, int i, int i2) {
        try {
            this.f9790b.a(list, i, i2);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final void d() {
        try {
            this.f9790b.o();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final void e() {
        try {
            this.f9790b.p();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final void f() {
        try {
            this.f9790b.q();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final void g() {
        try {
            this.f9790b.l();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final int getCurrentTimeMillis() {
        try {
            return this.f9790b.h();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final int getDurationMillis() {
        try {
            return this.f9790b.i();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final int getFullscreenControlFlags() {
        try {
            return this.f9790b.j();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    public final Bundle h() {
        try {
            return this.f9790b.r();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final boolean hasNext() {
        try {
            return this.f9790b.d();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final boolean hasPrevious() {
        try {
            return this.f9790b.e();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final boolean isPlaying() {
        try {
            return this.f9790b.c();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void loadPlaylist(String str) {
        loadPlaylist(str, 0, 0);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void loadPlaylist(String str, int i, int i2) {
        try {
            this.f9790b.b(str, i, i2);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void loadVideo(String str) {
        loadVideo(str, 0);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void loadVideo(String str, int i) {
        try {
            this.f9790b.b(str, i);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void loadVideos(List<String> list) {
        loadVideos(list, 0, 0);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void loadVideos(List<String> list, int i, int i2) {
        try {
            this.f9790b.b(list, i, i2);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void next() {
        try {
            this.f9790b.f();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void pause() {
        try {
            this.f9790b.b();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void play() {
        try {
            this.f9790b.a();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void previous() {
        try {
            this.f9790b.g();
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void release() {
        a(true);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void seekRelativeMillis(int i) {
        try {
            this.f9790b.b(i);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void seekToMillis(int i) {
        try {
            this.f9790b.a(i);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setFullscreen(boolean z) {
        try {
            this.f9790b.b(z);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setFullscreenControlFlags(int i) {
        try {
            this.f9790b.c(i);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setManageAudioFocus(boolean z) {
        try {
            this.f9790b.d(z);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setOnFullscreenListener(final YouTubePlayer.OnFullscreenListener onFullscreenListener) {
        try {
            this.f9790b.a(new e.a() { // from class: com.google.android.youtube.player.internal.s.1
                @Override // com.google.android.youtube.player.internal.e
                public final void a(boolean z) {
                    onFullscreenListener.onFullscreen(z);
                }
            });
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setPlaybackEventListener(final YouTubePlayer.PlaybackEventListener playbackEventListener) {
        try {
            this.f9790b.a(new f.a() { // from class: com.google.android.youtube.player.internal.s.4
                @Override // com.google.android.youtube.player.internal.f
                public final void a() {
                    playbackEventListener.onPlaying();
                }

                @Override // com.google.android.youtube.player.internal.f
                public final void a(int i) {
                    playbackEventListener.onSeekTo(i);
                }

                @Override // com.google.android.youtube.player.internal.f
                public final void a(boolean z) {
                    playbackEventListener.onBuffering(z);
                }

                @Override // com.google.android.youtube.player.internal.f
                public final void b() {
                    playbackEventListener.onPaused();
                }

                @Override // com.google.android.youtube.player.internal.f
                public final void c() {
                    playbackEventListener.onStopped();
                }
            });
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setPlayerStateChangeListener(final YouTubePlayer.PlayerStateChangeListener playerStateChangeListener) {
        try {
            this.f9790b.a(new g.a() { // from class: com.google.android.youtube.player.internal.s.3
                @Override // com.google.android.youtube.player.internal.g
                public final void a() {
                    playerStateChangeListener.onLoading();
                }

                @Override // com.google.android.youtube.player.internal.g
                public final void a(String str) {
                    playerStateChangeListener.onLoaded(str);
                }

                @Override // com.google.android.youtube.player.internal.g
                public final void b() {
                    playerStateChangeListener.onAdStarted();
                }

                @Override // com.google.android.youtube.player.internal.g
                public final void b(String str) {
                    YouTubePlayer.ErrorReason errorReason;
                    try {
                        errorReason = YouTubePlayer.ErrorReason.valueOf(str);
                    } catch (IllegalArgumentException | NullPointerException unused) {
                        errorReason = YouTubePlayer.ErrorReason.UNKNOWN;
                    }
                    playerStateChangeListener.onError(errorReason);
                }

                @Override // com.google.android.youtube.player.internal.g
                public final void c() {
                    playerStateChangeListener.onVideoStarted();
                }

                @Override // com.google.android.youtube.player.internal.g
                public final void d() {
                    playerStateChangeListener.onVideoEnded();
                }
            });
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setPlayerStyle(YouTubePlayer.PlayerStyle playerStyle) {
        try {
            this.f9790b.a(playerStyle.name());
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setPlaylistEventListener(final YouTubePlayer.PlaylistEventListener playlistEventListener) {
        try {
            this.f9790b.a(new h.a() { // from class: com.google.android.youtube.player.internal.s.2
                @Override // com.google.android.youtube.player.internal.h
                public final void a() {
                    playlistEventListener.onPrevious();
                }

                @Override // com.google.android.youtube.player.internal.h
                public final void b() {
                    playlistEventListener.onNext();
                }

                @Override // com.google.android.youtube.player.internal.h
                public final void c() {
                    playlistEventListener.onPlaylistEnded();
                }
            });
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setShowFullscreenButton(boolean z) {
        try {
            this.f9790b.c(z);
        } catch (RemoteException e2) {
            throw new q(e2);
        }
    }
}
