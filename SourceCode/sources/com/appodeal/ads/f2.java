package com.appodeal.ads;

import android.media.MediaPlayer;
import com.appodeal.ads.utils.Log;
import com.explorestack.iab.vast.TrackingEvent;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public final class f2 extends TimerTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g2 f6662a;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            g2 g2Var = f2.this.f6662a;
            String str = g2.x;
            g2Var.a();
        }
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            g2 g2Var;
            Timer timer;
            g2 g2Var2 = f2.this.f6662a;
            String str = g2.x;
            g2Var2.d();
            if ((!Native.f6385e || f2.this.f6662a.s) && (timer = (g2Var = f2.this.f6662a).i) != null) {
                timer.cancel();
                g2Var.i = null;
            }
        }
    }

    /* loaded from: classes.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            g2 g2Var = f2.this.f6662a;
            String str = g2.x;
            g2Var.f();
        }
    }

    /* loaded from: classes.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            g2 g2Var = f2.this.f6662a;
            String str = g2.x;
            g2Var.a();
        }
    }

    public f2(g2 g2Var) {
        this.f6662a = g2Var;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        boolean z;
        boolean c2;
        Runnable cVar;
        MediaPlayer mediaPlayer;
        int i;
        int i2;
        MediaPlayer mediaPlayer2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        g2 g2Var;
        TrackingEvent trackingEvent;
        MediaPlayer mediaPlayer3;
        try {
            z = this.f6662a.r;
            if (z) {
                h5.a(new a());
                return;
            }
            if (g2.b(this.f6662a)) {
                c2 = this.f6662a.c();
                if (c2) {
                    mediaPlayer = this.f6662a.f6683g;
                    if (mediaPlayer.isPlaying()) {
                        i = this.f6662a.u;
                        if (i == 0) {
                            g2 g2Var2 = this.f6662a;
                            mediaPlayer3 = g2Var2.f6683g;
                            g2Var2.u = mediaPlayer3.getDuration();
                        }
                        i2 = this.f6662a.u;
                        if (i2 != 0) {
                            mediaPlayer2 = this.f6662a.f6683g;
                            i3 = this.f6662a.u;
                            int currentPosition = (mediaPlayer2.getCurrentPosition() * 100) / i3;
                            i4 = this.f6662a.v;
                            if (currentPosition >= i4 * 25) {
                                i5 = this.f6662a.v;
                                if (i5 == 0) {
                                    Log.log(g2.x, "Video", String.format("started: %s%%", Integer.valueOf(currentPosition)));
                                    g2Var = this.f6662a;
                                    trackingEvent = TrackingEvent.start;
                                } else {
                                    i6 = this.f6662a.v;
                                    if (i6 == 1) {
                                        Log.log(g2.x, "Video", String.format("at first quartile: %s%%", Integer.valueOf(currentPosition)));
                                        g2Var = this.f6662a;
                                        trackingEvent = TrackingEvent.firstQuartile;
                                    } else {
                                        i7 = this.f6662a.v;
                                        if (i7 == 2) {
                                            Log.log(g2.x, "Video", String.format("at midpoint: %s%%", Integer.valueOf(currentPosition)));
                                            g2Var = this.f6662a;
                                            trackingEvent = TrackingEvent.midpoint;
                                        } else {
                                            i8 = this.f6662a.v;
                                            if (i8 == 3) {
                                                Log.log(g2.x, "Video", String.format("at third quartile: %s%%", Integer.valueOf(currentPosition)));
                                                g2Var = this.f6662a;
                                                trackingEvent = TrackingEvent.thirdQuartile;
                                            }
                                            g2.e(this.f6662a);
                                        }
                                    }
                                }
                                g2.a(g2Var, trackingEvent);
                                g2.e(this.f6662a);
                            }
                        }
                    }
                }
                cVar = new c();
            } else {
                cVar = new b();
            }
            h5.a(cVar);
        } catch (Throwable th) {
            Log.log(th);
            h5.a(new d());
        }
    }
}
