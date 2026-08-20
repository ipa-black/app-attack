package com.applovin.exoplayer2.d;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import com.applovin.exoplayer2.d.c;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.PlaybackException;
/* loaded from: classes.dex */
public final class j {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        public static boolean a(Throwable th) {
            return th instanceof NotProvisionedException;
        }

        public static boolean b(Throwable th) {
            return th instanceof DeniedByServerException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {
        public static boolean a(Throwable th) {
            return th instanceof MediaDrm.MediaDrmStateException;
        }

        public static int b(Throwable th) {
            return com.applovin.exoplayer2.h.b(ai.d(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {
        public static boolean a(Throwable th) {
            return th instanceof MediaDrmResetException;
        }
    }

    public static int a(Exception exc, int i) {
        if (ai.f3781a < 21 || !b.a(exc)) {
            if (ai.f3781a < 23 || !c.a(exc)) {
                if (ai.f3781a < 18 || !a.a(exc)) {
                    if (ai.f3781a < 18 || !a.b(exc)) {
                        if (exc instanceof t) {
                            return 6001;
                        }
                        if (exc instanceof c.d) {
                            return 6003;
                        }
                        if (exc instanceof q) {
                            return PlaybackException.ERROR_CODE_DRM_LICENSE_EXPIRED;
                        }
                        if (i == 1) {
                            return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
                        }
                        if (i == 2) {
                            return PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
                        }
                        if (i == 3) {
                            return 6002;
                        }
                        throw new IllegalArgumentException();
                    }
                    return PlaybackException.ERROR_CODE_DRM_DEVICE_REVOKED;
                }
                return 6002;
            }
            return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
        }
        return b.b(exc);
    }
}
