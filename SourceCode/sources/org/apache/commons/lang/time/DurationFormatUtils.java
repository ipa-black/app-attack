package org.apache.commons.lang.time;

import com.appodeal.ads.modules.common.internal.Constants;
/* loaded from: classes5.dex */
class DurationFormatUtils {
    public static final String ISO_EXTENDED_FORMAT_PATTERN = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'";
    public static final FastDateFormat ISO_EXTENDED_FORMAT = FastDateFormat.getInstance(ISO_EXTENDED_FORMAT_PATTERN);

    public static String formatISO(long j) {
        int i = (int) (j / 3600000);
        long j2 = j - (DateUtils.MILLIS_IN_HOUR * i);
        int i2 = (int) (j2 / 60000);
        long j3 = j2 - (60000 * i2);
        int i3 = (int) (j3 / 1000);
        int i4 = (int) (j3 - (i3 * 1000));
        StringBuffer stringBuffer = new StringBuffer(32);
        stringBuffer.append(i);
        stringBuffer.append(':');
        stringBuffer.append((char) ((i2 / 10) + 48));
        stringBuffer.append((char) ((i2 % 10) + 48));
        stringBuffer.append(':');
        stringBuffer.append((char) ((i3 / 10) + 48));
        stringBuffer.append((char) ((i3 % 10) + 48));
        stringBuffer.append('.');
        if (i4 < 10) {
            stringBuffer.append("00");
        } else if (i4 < 100) {
            stringBuffer.append('0');
        }
        stringBuffer.append(i4);
        return stringBuffer.toString();
    }

    public static String formatWords(long j, boolean z, boolean z2) {
        long[] jArr = {j / Constants.MILLIS_IN_DAY, (j / 3600000) % 24, (j / 60000) % 60, (j / 1000) % 60};
        String[] strArr = {" day ", " hour ", " minute ", " second"};
        String[] strArr2 = {" days ", " hours ", " minutes ", " seconds"};
        StringBuffer stringBuffer = new StringBuffer(64);
        boolean z3 = false;
        for (int i = 0; i < 4; i++) {
            long j2 = jArr[i];
            if (j2 != 0) {
                if (j2 == 1) {
                    stringBuffer.append('1').append(strArr[i]);
                } else {
                    stringBuffer.append(j2).append(strArr2[i]);
                }
                z3 = true;
            } else if (z3) {
                if (!z2) {
                    stringBuffer.append('0').append(strArr2[i]);
                }
            } else if (!z) {
                stringBuffer.append('0').append(strArr2[i]);
            }
        }
        return stringBuffer.toString().trim();
    }
}
