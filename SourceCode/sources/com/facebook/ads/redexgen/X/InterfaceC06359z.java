package com.facebook.ads.redexgen.X;

import android.view.Surface;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.9z  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public interface InterfaceC06359z {
    void onAudioSessionId(C06349y c06349y, int i);

    void onAudioUnderrun(C06349y c06349y, int i, long j, long j2);

    void onDecoderDisabled(C06349y c06349y, int i, C0651Ap c0651Ap);

    void onDecoderEnabled(C06349y c06349y, int i, C0651Ap c0651Ap);

    void onDecoderInitialized(C06349y c06349y, int i, String str, long j);

    void onDecoderInputFormatChanged(C06349y c06349y, int i, Format format);

    void onDownstreamFormatChanged(C06349y c06349y, C0729Eg c0729Eg);

    void onDrmKeysLoaded(C06349y c06349y);

    void onDrmKeysRemoved(C06349y c06349y);

    void onDrmKeysRestored(C06349y c06349y);

    void onDrmSessionManagerError(C06349y c06349y, Exception exc);

    void onDroppedVideoFrames(C06349y c06349y, int i, long j);

    void onLoadError(C06349y c06349y, C0728Ef c0728Ef, C0729Eg c0729Eg, IOException iOException, boolean z);

    void onLoadingChanged(C06349y c06349y, boolean z);

    void onMediaPeriodCreated(C06349y c06349y);

    void onMediaPeriodReleased(C06349y c06349y);

    void onMetadata(C06349y c06349y, Metadata metadata);

    void onPlaybackParametersChanged(C06349y c06349y, C06119a c06119a);

    void onPlayerError(C06349y c06349y, C9F c9f);

    void onPlayerStateChanged(C06349y c06349y, boolean z, int i);

    void onPositionDiscontinuity(C06349y c06349y, int i);

    void onReadingStarted(C06349y c06349y);

    void onRenderedFirstFrame(C06349y c06349y, Surface surface);

    void onSeekProcessed(C06349y c06349y);

    void onSeekStarted(C06349y c06349y);

    void onTimelineChanged(C06349y c06349y, int i);

    void onTracksChanged(C06349y c06349y, TrackGroupArray trackGroupArray, GK gk);

    void onVideoSizeChanged(C06349y c06349y, int i, int i2, int i3, float f2);
}
