package com.applovin.exoplayer2.l;

import android.net.Uri;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class l {
    public static int a(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
            return 0;
        }
        if (lastPathSegment.endsWith(".ac4")) {
            return 1;
        }
        if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
            return 2;
        }
        if (lastPathSegment.endsWith(".amr")) {
            return 3;
        }
        if (lastPathSegment.endsWith(".flac")) {
            return 4;
        }
        if (lastPathSegment.endsWith(".flv")) {
            return 5;
        }
        if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".webm")) {
            return 6;
        }
        if (lastPathSegment.endsWith(".mp3")) {
            return 7;
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
            return 8;
        }
        if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
            return 9;
        }
        if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
            return 10;
        }
        if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            return 11;
        }
        if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
            return 12;
        }
        if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
            return 13;
        }
        return (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) ? 14 : -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str) {
        char c2;
        if (str == null) {
            return -1;
        }
        String f2 = u.f(str);
        f2.hashCode();
        switch (f2.hashCode()) {
            case -2123537834:
                if (f2.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1662384011:
                if (f2.equals(MimeTypes.VIDEO_PS)) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1662384007:
                if (f2.equals(MimeTypes.VIDEO_MP2T)) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1662095187:
                if (f2.equals("video/webm")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1606874997:
                if (f2.equals(MimeTypes.AUDIO_AMR_WB)) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1487394660:
                if (f2.equals(MimeTypes.IMAGE_JPEG)) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -1248337486:
                if (f2.equals(MimeTypes.APPLICATION_MP4)) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -1004728940:
                if (f2.equals(MimeTypes.TEXT_VTT)) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -387023398:
                if (f2.equals(MimeTypes.AUDIO_MATROSKA)) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -43467528:
                if (f2.equals(MimeTypes.APPLICATION_WEBM)) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 13915911:
                if (f2.equals(MimeTypes.VIDEO_FLV)) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 187078296:
                if (f2.equals(MimeTypes.AUDIO_AC3)) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 187078297:
                if (f2.equals(MimeTypes.AUDIO_AC4)) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 187078669:
                if (f2.equals(MimeTypes.AUDIO_AMR)) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 187090232:
                if (f2.equals(MimeTypes.AUDIO_MP4)) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 187091926:
                if (f2.equals(MimeTypes.AUDIO_OGG)) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 187099443:
                if (f2.equals(MimeTypes.AUDIO_WAV)) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 1331848029:
                if (f2.equals(MimeTypes.VIDEO_MP4)) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case 1503095341:
                if (f2.equals(MimeTypes.AUDIO_AMR_NB)) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case 1504578661:
                if (f2.equals(MimeTypes.AUDIO_E_AC3)) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case 1504619009:
                if (f2.equals(MimeTypes.AUDIO_FLAC)) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 1504831518:
                if (f2.equals(MimeTypes.AUDIO_MPEG)) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case 1505118770:
                if (f2.equals(MimeTypes.AUDIO_WEBM)) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case 2039520277:
                if (f2.equals(MimeTypes.VIDEO_MATROSKA)) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 11:
            case 19:
                return 0;
            case 1:
                return 10;
            case 2:
                return 11;
            case 3:
            case '\b':
            case '\t':
            case 22:
            case 23:
                return 6;
            case 4:
            case '\r':
            case 18:
                return 3;
            case 5:
                return 14;
            case 6:
            case 14:
            case 17:
                return 8;
            case 7:
                return 13;
            case '\n':
                return 5;
            case '\f':
                return 1;
            case 15:
                return 9;
            case 16:
                return 12;
            case 20:
                return 4;
            case 21:
                return 7;
            default:
                return -1;
        }
    }

    public static int a(Map<String, List<String>> map) {
        List<String> list = map.get("Content-Type");
        return a((list == null || list.isEmpty()) ? null : list.get(0));
    }
}
