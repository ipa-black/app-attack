package org.apache.commons.lang.time;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.TimeZone;
/* loaded from: classes5.dex */
public class DateUtils {
    public static final int MILLIS_IN_DAY = 86400000;
    public static final int MILLIS_IN_HOUR = 3600000;
    public static final int MILLIS_IN_MINUTE = 60000;
    public static final int MILLIS_IN_SECOND = 1000;
    public static final int RANGE_MONTH_MONDAY = 6;
    public static final int RANGE_MONTH_SUNDAY = 5;
    public static final int RANGE_WEEK_CENTER = 4;
    public static final int RANGE_WEEK_MONDAY = 2;
    public static final int RANGE_WEEK_RELATIVE = 3;
    public static final int RANGE_WEEK_SUNDAY = 1;
    public static final int SEMI_MONTH = 1001;
    public static final TimeZone UTC_TIME_ZONE = TimeZone.getTimeZone("GMT");
    private static final int[][] fields = {new int[]{14}, new int[]{13}, new int[]{12}, new int[]{11, 10}, new int[]{5, 5, 9}, new int[]{2, 1001}, new int[]{1}, new int[]{0}};

    public static Date round(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        modify(gregorianCalendar, i, true);
        return gregorianCalendar.getTime();
    }

    public static Calendar round(Calendar calendar, int i) {
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar2 = (Calendar) calendar.clone();
        modify(calendar2, i, true);
        return calendar2;
    }

    public static Date round(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return round((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return round((Calendar) obj, i).getTime();
        }
        throw new ClassCastException(new StringBuffer("Could not round ").append(obj).toString());
    }

    public static Date truncate(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        modify(gregorianCalendar, i, false);
        return gregorianCalendar.getTime();
    }

    public static Calendar truncate(Calendar calendar, int i) {
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar2 = (Calendar) calendar.clone();
        modify(calendar2, i, false);
        return calendar2;
    }

    public static Date truncate(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return truncate((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return truncate((Calendar) obj, i).getTime();
        }
        throw new ClassCastException(new StringBuffer("Could not truncate ").append(obj).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
        if (r13 == 9) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
        if (r13 == 1001) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0046, code lost:
        if (r5[0] != 5) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0048, code lost:
        r2 = r12.get(5);
        r3 = r2 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004e, code lost:
        if (r3 < 15) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0050, code lost:
        r3 = r2 - 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0053, code lost:
        if (r3 <= 7) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005a, code lost:
        if (r5[0] != 10) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005c, code lost:
        r2 = r12.get(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0062, code lost:
        if (r2 < 12) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0064, code lost:
        r2 = r2 - 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0066, code lost:
        r3 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0068, code lost:
        if (r3 <= 6) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006a, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006c, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x006d, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006f, code lost:
        r3 = 0;
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0071, code lost:
        if (r5 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0073, code lost:
        r2 = r12.getActualMinimum(r4[r1][0]);
        r3 = r12.getActualMaximum(r4[r1][0]);
        r5 = r12.get(r4[r1][0]) - r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008e, code lost:
        if (r5 <= ((r3 - r2) / 2)) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0091, code lost:
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0092, code lost:
        r3 = r5;
        r2 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0094, code lost:
        r12.add(r4[r1][0], -r3);
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void modify(java.util.Calendar r12, int r13, boolean r14) {
        /*
            r0 = 0
            r1 = r0
            r2 = r1
        L3:
            int[][] r3 = org.apache.commons.lang.time.DateUtils.fields
            int r3 = r3.length
            if (r1 >= r3) goto La0
            r3 = r0
        L9:
            int[][] r4 = org.apache.commons.lang.time.DateUtils.fields
            r5 = r4[r1]
            int r6 = r5.length
            r7 = 15
            r8 = 2
            r9 = 1001(0x3e9, float:1.403E-42)
            r10 = 5
            r11 = 1
            if (r3 >= r6) goto L3d
            r4 = r5[r3]
            if (r4 != r13) goto L3a
            if (r14 == 0) goto L39
            if (r2 == 0) goto L39
            if (r13 != r9) goto L34
            int r13 = r12.get(r10)
            if (r13 != r11) goto L2b
            r12.add(r10, r7)
            goto L39
        L2b:
            r13 = -15
            r12.add(r10, r13)
            r12.add(r8, r11)
            goto L39
        L34:
            r13 = r5[r0]
            r12.add(r13, r11)
        L39:
            return
        L3a:
            int r3 = r3 + 1
            goto L9
        L3d:
            r3 = 9
            if (r13 == r3) goto L56
            if (r13 == r9) goto L44
            goto L6f
        L44:
            r3 = r5[r0]
            if (r3 != r10) goto L6f
            int r2 = r12.get(r10)
            int r3 = r2 + (-1)
            if (r3 < r7) goto L52
            int r3 = r2 + (-16)
        L52:
            r2 = 7
            if (r3 <= r2) goto L6c
            goto L6a
        L56:
            r3 = r5[r0]
            r5 = 10
            if (r3 != r5) goto L6f
            int r2 = r12.get(r5)
            r3 = 12
            if (r2 < r3) goto L66
            int r2 = r2 + (-12)
        L66:
            r3 = r2
            r2 = 6
            if (r3 <= r2) goto L6c
        L6a:
            r2 = r11
            goto L6d
        L6c:
            r2 = r0
        L6d:
            r5 = r11
            goto L71
        L6f:
            r3 = r0
            r5 = r3
        L71:
            if (r5 != 0) goto L94
            r2 = r4[r1]
            r2 = r2[r0]
            int r2 = r12.getActualMinimum(r2)
            r3 = r4[r1]
            r3 = r3[r0]
            int r3 = r12.getActualMaximum(r3)
            r5 = r4[r1]
            r5 = r5[r0]
            int r5 = r12.get(r5)
            int r5 = r5 - r2
            int r3 = r3 - r2
            int r3 = r3 / r8
            if (r5 <= r3) goto L91
            goto L92
        L91:
            r11 = r0
        L92:
            r3 = r5
            r2 = r11
        L94:
            r4 = r4[r1]
            r4 = r4[r0]
            int r3 = -r3
            r12.add(r4, r3)
            int r1 = r1 + 1
            goto L3
        La0:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.StringBuffer r14 = new java.lang.StringBuffer
            java.lang.String r0 = "The field "
            r14.<init>(r0)
            java.lang.StringBuffer r13 = r14.append(r13)
            java.lang.String r14 = " is not supported"
            java.lang.StringBuffer r13 = r13.append(r14)
            java.lang.String r13 = r13.toString()
            r12.<init>(r13)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang.time.DateUtils.modify(java.util.Calendar, int, boolean):void");
    }

    public static Iterator iterator(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        return iterator((Calendar) gregorianCalendar, i);
    }

    public static Iterator iterator(Calendar calendar, int i) {
        Calendar truncate;
        Calendar truncate2;
        int i2;
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        int i3 = 2;
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                truncate = truncate(calendar, 5);
                truncate2 = truncate(calendar, 5);
                if (i != 2) {
                    if (i == 3) {
                        i3 = calendar.get(7);
                        i2 = i3 - 1;
                        break;
                    } else if (i == 4) {
                        i2 = calendar.get(7) + 3;
                        i3 = calendar.get(7) - 3;
                        break;
                    } else {
                        i3 = 1;
                        i2 = 7;
                        break;
                    }
                }
                i2 = 1;
                break;
            case 5:
            case 6:
                Calendar truncate3 = truncate(calendar, 2);
                Calendar calendar2 = (Calendar) truncate3.clone();
                calendar2.add(2, 1);
                calendar2.add(5, -1);
                if (i != 6) {
                    i3 = 1;
                    truncate2 = calendar2;
                    truncate = truncate3;
                    i2 = 7;
                    break;
                } else {
                    truncate2 = calendar2;
                    truncate = truncate3;
                    i2 = 1;
                    break;
                }
            default:
                throw new IllegalArgumentException(new StringBuffer("The range style ").append(i).append(" is not valid.").toString());
        }
        if (i3 < 1) {
            i3 += 7;
        }
        if (i3 > 7) {
            i3 -= 7;
        }
        if (i2 < 1) {
            i2 += 7;
        }
        if (i2 > 7) {
            i2 -= 7;
        }
        while (truncate.get(7) != i3) {
            truncate.add(5, -1);
        }
        while (truncate2.get(7) != i2) {
            truncate2.add(5, 1);
        }
        return new DateIterator(truncate, truncate2);
    }

    public static Iterator iterator(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return iterator((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return iterator((Calendar) obj, i);
        }
        throw new ClassCastException(new StringBuffer("Could not iterate based on ").append(obj).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class DateIterator implements Iterator {
        private final Calendar endFinal;
        private final Calendar spot;

        DateIterator(Calendar calendar, Calendar calendar2) {
            this.endFinal = calendar2;
            this.spot = calendar;
            calendar.add(5, -1);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.spot.before(this.endFinal);
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.spot.equals(this.endFinal)) {
                throw new NoSuchElementException();
            }
            this.spot.add(5, 1);
            return this.spot.clone();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
