package com.applovin.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import com.applovin.exoplayer2.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final AudioManager f1645a;

    /* renamed from: b  reason: collision with root package name */
    private final a f1646b;

    /* renamed from: c  reason: collision with root package name */
    private b f1647c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.exoplayer2.b.d f1648d;

    /* renamed from: f  reason: collision with root package name */
    private int f1650f;

    /* renamed from: h  reason: collision with root package name */
    private AudioFocusRequest f1652h;
    private boolean i;

    /* renamed from: g  reason: collision with root package name */
    private float f1651g = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private int f1649e = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private final Handler f1654b;

        public a(Handler handler) {
            this.f1654b = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i) {
            c.this.c(i);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            this.f1654b.post(new Runnable() { // from class: com.applovin.exoplayer2.c$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    c.a.this.a(i);
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(float f2);

        void a(int i);
    }

    public c(Context context, Handler handler, b bVar) {
        this.f1645a = (AudioManager) com.applovin.exoplayer2.l.a.b((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.f1647c = bVar;
        this.f1646b = new a(handler);
    }

    private boolean a(int i) {
        return i == 1 || this.f1650f != 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int b(com.applovin.exoplayer2.b.d dVar) {
        if (dVar == null) {
            return 0;
        }
        switch (dVar.f1471d) {
            case 0:
                com.applovin.exoplayer2.l.q.c("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                break;
            case 11:
                if (dVar.f1469b == 1) {
                    return 2;
                }
                break;
            case 15:
            default:
                com.applovin.exoplayer2.l.q.c("AudioFocusManager", "Unidentified audio usage: " + dVar.f1471d);
                return 0;
            case 16:
                return com.applovin.exoplayer2.l.ai.f3781a >= 19 ? 4 : 2;
        }
        return 3;
    }

    private void b(int i) {
        if (this.f1649e == i) {
            return;
        }
        this.f1649e = i;
        float f2 = i == 3 ? 0.2f : 1.0f;
        if (this.f1651g == f2) {
            return;
        }
        this.f1651g = f2;
        b bVar = this.f1647c;
        if (bVar != null) {
            bVar.a(f2);
        }
    }

    private int c() {
        if (this.f1649e == 1) {
            return 1;
        }
        if ((com.applovin.exoplayer2.l.ai.f3781a >= 26 ? f() : e()) == 1) {
            b(1);
            return 1;
        }
        b(0);
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        int i2;
        if (i == -3 || i == -2) {
            if (i == -2 || i()) {
                d(0);
                i2 = 2;
            } else {
                i2 = 3;
            }
            b(i2);
        } else if (i == -1) {
            d(-1);
            d();
        } else if (i != 1) {
            com.applovin.exoplayer2.l.q.c("AudioFocusManager", "Unknown focus change type: " + i);
        } else {
            b(1);
            d(1);
        }
    }

    private void d() {
        if (this.f1649e == 0) {
            return;
        }
        if (com.applovin.exoplayer2.l.ai.f3781a >= 26) {
            h();
        } else {
            g();
        }
        b(0);
    }

    private void d(int i) {
        b bVar = this.f1647c;
        if (bVar != null) {
            bVar.a(i);
        }
    }

    private int e() {
        return this.f1645a.requestAudioFocus(this.f1646b, com.applovin.exoplayer2.l.ai.g(((com.applovin.exoplayer2.b.d) com.applovin.exoplayer2.l.a.b(this.f1648d)).f1471d), this.f1650f);
    }

    private int f() {
        AudioFocusRequest audioFocusRequest = this.f1652h;
        if (audioFocusRequest == null || this.i) {
            this.f1652h = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f1650f) : new AudioFocusRequest.Builder(this.f1652h)).setAudioAttributes(((com.applovin.exoplayer2.b.d) com.applovin.exoplayer2.l.a.b(this.f1648d)).a()).setWillPauseWhenDucked(i()).setOnAudioFocusChangeListener(this.f1646b).build();
            this.i = false;
        }
        return this.f1645a.requestAudioFocus(this.f1652h);
    }

    private void g() {
        this.f1645a.abandonAudioFocus(this.f1646b);
    }

    private void h() {
        AudioFocusRequest audioFocusRequest = this.f1652h;
        if (audioFocusRequest != null) {
            this.f1645a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    private boolean i() {
        com.applovin.exoplayer2.b.d dVar = this.f1648d;
        return dVar != null && dVar.f1469b == 1;
    }

    public float a() {
        return this.f1651g;
    }

    public int a(boolean z, int i) {
        if (a(i)) {
            d();
            return z ? 1 : -1;
        } else if (z) {
            return c();
        } else {
            return -1;
        }
    }

    public void a(com.applovin.exoplayer2.b.d dVar) {
        if (com.applovin.exoplayer2.l.ai.a(this.f1648d, dVar)) {
            return;
        }
        this.f1648d = dVar;
        int b2 = b(dVar);
        this.f1650f = b2;
        boolean z = true;
        if (b2 != 1 && b2 != 0) {
            z = false;
        }
        com.applovin.exoplayer2.l.a.a(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public void b() {
        this.f1647c = null;
        d();
    }
}
