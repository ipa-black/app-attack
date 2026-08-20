package com.applovin.exoplayer2.e.g;

import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.mp4.Sniffer;
import java.io.IOException;
/* loaded from: classes.dex */
final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f2318a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Atom.TYPE_avc1, Atom.TYPE_hvc1, Atom.TYPE_hev1, Atom.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, Sniffer.BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};

    private static boolean a(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 : f2318a) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        return a(iVar, true, false);
    }

    public static boolean a(com.applovin.exoplayer2.e.i iVar, boolean z) throws IOException {
        return a(iVar, false, z);
    }

    private static boolean a(com.applovin.exoplayer2.e.i iVar, boolean z, boolean z2) throws IOException {
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        boolean z7;
        long d2 = iVar.d();
        long j = -1;
        int i2 = (d2 > (-1L) ? 1 : (d2 == (-1L) ? 0 : -1));
        long j2 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (i2 != 0 && d2 <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j2 = d2;
        }
        int i3 = (int) j2;
        y yVar = new y(64);
        boolean z8 = false;
        int i4 = 0;
        boolean z9 = false;
        while (i4 < i3) {
            yVar.a(8);
            if (!iVar.b(yVar.d(), z8 ? 1 : 0, 8, true)) {
                break;
            }
            long o = yVar.o();
            int q = yVar.q();
            if (o == 1) {
                iVar.d(yVar.d(), 8, 8);
                yVar.c(16);
                i = 16;
                o = yVar.s();
            } else {
                if (o == 0) {
                    long d3 = iVar.d();
                    if (d3 != j) {
                        o = (d3 - iVar.b()) + 8;
                    }
                }
                i = 8;
            }
            long j3 = i;
            if (o < j3) {
                return z8;
            }
            i4 += i;
            if (q == 1836019574) {
                i3 += (int) o;
                if (i2 != 0 && i3 > d2) {
                    i3 = (int) d2;
                }
            } else if (q == 1836019558 || q == 1836475768) {
                z3 = z8 ? 1 : 0;
                z4 = true;
                z5 = true;
                break;
            } else {
                int i5 = i2;
                if ((i4 + o) - j3 >= i3) {
                    z3 = false;
                    z4 = true;
                    break;
                }
                int i6 = (int) (o - j3);
                i4 += i6;
                if (q != 1718909296) {
                    z6 = false;
                    z9 = z9;
                    if (i6 != 0) {
                        iVar.c(i6);
                        z9 = z9;
                    }
                } else if (i6 < 8) {
                    return false;
                } else {
                    yVar.a(i6);
                    iVar.d(yVar.d(), 0, i6);
                    int i7 = i6 / 4;
                    int i8 = 0;
                    while (true) {
                        if (i8 >= i7) {
                            z7 = z9;
                            break;
                        }
                        if (i8 == 1) {
                            yVar.e(4);
                        } else if (a(yVar.q(), z2)) {
                            z7 = true;
                            break;
                        }
                        i8++;
                    }
                    z6 = false;
                    z9 = z7;
                    if (!z7) {
                        return false;
                    }
                }
                z8 = z6;
                i2 = i5;
            }
            j = -1;
            z9 = z9;
        }
        z3 = z8 ? 1 : 0;
        z4 = true;
        z5 = z3;
        return (z9 && z == z5) ? z4 : z3;
    }
}
