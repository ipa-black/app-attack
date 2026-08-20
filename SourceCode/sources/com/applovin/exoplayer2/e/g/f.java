package com.applovin.exoplayer2.e.g;

import com.applovin.exoplayer2.e.r;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.net.HttpHeaders;
/* loaded from: classes.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    static final String[] f2294a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", HttpHeaders.TRAILER, "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    public static a.InterfaceC0042a a(y yVar) {
        int c2 = yVar.c() + yVar.q();
        int q = yVar.q();
        int i = (q >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & q;
                if (i2 == 6516084) {
                    return a(q, yVar);
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    return a(q, "TIT2", yVar);
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    return a(q, "TCOM", yVar);
                }
                if (i2 == 6578553) {
                    return a(q, "TDRC", yVar);
                }
                if (i2 == 4280916) {
                    return a(q, "TPE1", yVar);
                }
                if (i2 == 7630703) {
                    return a(q, "TSSE", yVar);
                }
                if (i2 == 6384738) {
                    return a(q, "TALB", yVar);
                }
                if (i2 == 7108978) {
                    return a(q, "USLT", yVar);
                }
                if (i2 == 6776174) {
                    return a(q, "TCON", yVar);
                }
                if (i2 == 6779504) {
                    return a(q, "TIT1", yVar);
                }
            } else if (q == 1735291493) {
                return b(yVar);
            } else {
                if (q == 1684632427) {
                    return b(q, "TPOS", yVar);
                }
                if (q == 1953655662) {
                    return b(q, "TRCK", yVar);
                }
                if (q == 1953329263) {
                    return a(q, "TBPM", yVar, true, false);
                }
                if (q == 1668311404) {
                    return a(q, "TCMP", yVar, true, true);
                }
                if (q == 1668249202) {
                    return c(yVar);
                }
                if (q == 1631670868) {
                    return a(q, "TPE2", yVar);
                }
                if (q == 1936682605) {
                    return a(q, "TSOT", yVar);
                }
                if (q == 1936679276) {
                    return a(q, "TSO2", yVar);
                }
                if (q == 1936679282) {
                    return a(q, "TSOA", yVar);
                }
                if (q == 1936679265) {
                    return a(q, "TSOP", yVar);
                }
                if (q == 1936679791) {
                    return a(q, "TSOC", yVar);
                }
                if (q == 1920233063) {
                    return a(q, "ITUNESADVISORY", yVar, false, false);
                }
                if (q == 1885823344) {
                    return a(q, "ITUNESGAPLESS", yVar, false, true);
                }
                if (q == 1936683886) {
                    return a(q, "TVSHOWSORT", yVar);
                }
                if (q == 1953919848) {
                    return a(q, "TVSHOW", yVar);
                }
                if (q == 757935405) {
                    return a(yVar, c2);
                }
            }
            q.a("MetadataUtil", "Skipped unknown metadata entry: " + a.c(q));
            yVar.d(c2);
            return null;
        } finally {
            yVar.d(c2);
        }
    }

    private static com.applovin.exoplayer2.g.e.e a(int i, y yVar) {
        int q = yVar.q();
        if (yVar.q() != 1684108385) {
            q.c("MetadataUtil", "Failed to parse comment attribute: " + a.c(i));
            return null;
        }
        yVar.e(8);
        String g2 = yVar.g(q - 16);
        return new com.applovin.exoplayer2.g.e.e(C.LANGUAGE_UNDETERMINED, g2, g2);
    }

    private static com.applovin.exoplayer2.g.e.h a(int i, String str, y yVar, boolean z, boolean z2) {
        int d2 = d(yVar);
        if (z2) {
            d2 = Math.min(1, d2);
        }
        if (d2 >= 0) {
            return z ? new com.applovin.exoplayer2.g.e.l(str, null, Integer.toString(d2)) : new com.applovin.exoplayer2.g.e.e(C.LANGUAGE_UNDETERMINED, str, Integer.toString(d2));
        }
        q.c("MetadataUtil", "Failed to parse uint8 attribute: " + a.c(i));
        return null;
    }

    private static com.applovin.exoplayer2.g.e.h a(y yVar, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (yVar.c() < i) {
            int c2 = yVar.c();
            int q = yVar.q();
            int q2 = yVar.q();
            yVar.e(4);
            if (q2 == 1835360622) {
                str = yVar.g(q - 12);
            } else if (q2 == 1851878757) {
                str2 = yVar.g(q - 12);
            } else {
                if (q2 == 1684108385) {
                    i2 = c2;
                    i3 = q;
                }
                yVar.e(q - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        yVar.d(i2);
        yVar.e(16);
        return new com.applovin.exoplayer2.g.e.i(str, str2, yVar.g(i3 - 16));
    }

    private static com.applovin.exoplayer2.g.e.l a(int i, String str, y yVar) {
        int q = yVar.q();
        if (yVar.q() == 1684108385) {
            yVar.e(8);
            return new com.applovin.exoplayer2.g.e.l(str, null, yVar.g(q - 16));
        }
        q.c("MetadataUtil", "Failed to parse text attribute: " + a.c(i));
        return null;
    }

    public static com.applovin.exoplayer2.g.f.a a(y yVar, int i, String str) {
        while (true) {
            int c2 = yVar.c();
            if (c2 >= i) {
                return null;
            }
            int q = yVar.q();
            if (yVar.q() == 1684108385) {
                int q2 = yVar.q();
                int q3 = yVar.q();
                int i2 = q - 16;
                byte[] bArr = new byte[i2];
                yVar.a(bArr, 0, i2);
                return new com.applovin.exoplayer2.g.f.a(str, bArr, q3, q2);
            }
            yVar.d(c2 + q);
        }
    }

    public static void a(int i, r rVar, v.a aVar) {
        if (i == 1 && rVar.a()) {
            aVar.n(rVar.f2700a).o(rVar.f2701b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
        if (r6 != null) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(int r5, com.applovin.exoplayer2.g.a r6, com.applovin.exoplayer2.g.a r7, com.applovin.exoplayer2.v.a r8, com.applovin.exoplayer2.g.a... r9) {
        /*
            com.applovin.exoplayer2.g.a r0 = new com.applovin.exoplayer2.g.a
            r1 = 0
            com.applovin.exoplayer2.g.a$a[] r2 = new com.applovin.exoplayer2.g.a.InterfaceC0042a[r1]
            r0.<init>(r2)
            r2 = 1
            if (r5 != r2) goto Le
            if (r6 == 0) goto L3c
            goto L3d
        Le:
            r6 = 2
            if (r5 != r6) goto L3c
            if (r7 == 0) goto L3c
            r5 = r1
        L14:
            int r6 = r7.a()
            if (r5 >= r6) goto L3c
            com.applovin.exoplayer2.g.a$a r6 = r7.a(r5)
            boolean r3 = r6 instanceof com.applovin.exoplayer2.g.f.a
            if (r3 == 0) goto L39
            com.applovin.exoplayer2.g.f.a r6 = (com.applovin.exoplayer2.g.f.a) r6
            java.lang.String r3 = "com.android.capture.fps"
            java.lang.String r4 = r6.f2922a
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L39
            com.applovin.exoplayer2.g.a r5 = new com.applovin.exoplayer2.g.a
            com.applovin.exoplayer2.g.a$a[] r7 = new com.applovin.exoplayer2.g.a.InterfaceC0042a[r2]
            r7[r1] = r6
            r5.<init>(r7)
            r6 = r5
            goto L3d
        L39:
            int r5 = r5 + 1
            goto L14
        L3c:
            r6 = r0
        L3d:
            int r5 = r9.length
        L3e:
            if (r1 >= r5) goto L49
            r7 = r9[r1]
            com.applovin.exoplayer2.g.a r6 = r6.a(r7)
            int r1 = r1 + 1
            goto L3e
        L49:
            int r5 = r6.a()
            if (r5 <= 0) goto L52
            r8.a(r6)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.f.a(int, com.applovin.exoplayer2.g.a, com.applovin.exoplayer2.g.a, com.applovin.exoplayer2.v$a, com.applovin.exoplayer2.g.a[]):void");
    }

    private static com.applovin.exoplayer2.g.e.l b(int i, String str, y yVar) {
        int q = yVar.q();
        if (yVar.q() == 1684108385 && q >= 22) {
            yVar.e(10);
            int i2 = yVar.i();
            if (i2 > 0) {
                String str2 = "" + i2;
                int i3 = yVar.i();
                if (i3 > 0) {
                    str2 = str2 + "/" + i3;
                }
                return new com.applovin.exoplayer2.g.e.l(str, null, str2);
            }
        }
        q.c("MetadataUtil", "Failed to parse index/count attribute: " + a.c(i));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.applovin.exoplayer2.g.e.l b(com.applovin.exoplayer2.l.y r3) {
        /*
            int r3 = d(r3)
            r0 = 0
            if (r3 <= 0) goto L11
            java.lang.String[] r1 = com.applovin.exoplayer2.e.g.f.f2294a
            int r2 = r1.length
            if (r3 > r2) goto L11
            int r3 = r3 + (-1)
            r3 = r1[r3]
            goto L12
        L11:
            r3 = r0
        L12:
            if (r3 == 0) goto L1c
            com.applovin.exoplayer2.g.e.l r1 = new com.applovin.exoplayer2.g.e.l
            java.lang.String r2 = "TCON"
            r1.<init>(r2, r0, r3)
            return r1
        L1c:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            com.applovin.exoplayer2.l.q.c(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.f.b(com.applovin.exoplayer2.l.y):com.applovin.exoplayer2.g.e.l");
    }

    private static com.applovin.exoplayer2.g.e.a c(y yVar) {
        String str;
        int q = yVar.q();
        if (yVar.q() == 1684108385) {
            int b2 = a.b(yVar.q());
            String str2 = b2 == 13 ? MimeTypes.IMAGE_JPEG : b2 == 14 ? "image/png" : null;
            if (str2 != null) {
                yVar.e(4);
                int i = q - 16;
                byte[] bArr = new byte[i];
                yVar.a(bArr, 0, i);
                return new com.applovin.exoplayer2.g.e.a(str2, null, 3, bArr);
            }
            str = "Unrecognized cover art flags: " + b2;
        } else {
            str = "Failed to parse cover art attribute";
        }
        q.c("MetadataUtil", str);
        return null;
    }

    private static int d(y yVar) {
        yVar.e(4);
        if (yVar.q() == 1684108385) {
            yVar.e(8);
            return yVar.h();
        }
        q.c("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
