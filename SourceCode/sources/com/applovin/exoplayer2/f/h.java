package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
public class h extends com.applovin.exoplayer2.c.f {

    /* renamed from: a  reason: collision with root package name */
    public final i f2798a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2799b;

    public h(Throwable th, i iVar) {
        super("Decoder failed: " + (iVar == null ? null : iVar.f2800a), th);
        this.f2798a = iVar;
        this.f2799b = ai.f3781a >= 21 ? a(th) : null;
    }

    private static String a(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
