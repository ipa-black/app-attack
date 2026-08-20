package org.altbeacon.beacon;

import android.bluetooth.BluetoothDevice;
import android.util.Log;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class BeaconParser implements Serializable {
    public static final String ALTBEACON_LAYOUT = "m:2-3=beac,i:4-19,i:20-21,i:22-23,p:24-24,d:25-25";
    public static final String EDDYSTONE_TLM_LAYOUT = "x,s:0-1=feaa,m:2-2=20,d:3-3,d:4-5,d:6-7,d:8-11,d:12-15";
    public static final String EDDYSTONE_UID_LAYOUT = "s:0-1=feaa,m:2-2=00,p:3-3:-41,i:4-13,i:14-19";
    public static final String EDDYSTONE_URL_LAYOUT = "s:0-1=feaa,m:2-2=10,p:3-3:-41,i:4-21v";
    private static final String LITTLE_ENDIAN_SUFFIX = "l";
    private static final String TAG = "BeaconParser";
    public static final String URI_BEACON_LAYOUT = "s:0-1=fed8,m:2-2=00,p:3-3:-41,i:4-21v";
    private static final String VARIABLE_LENGTH_SUFFIX = "v";
    protected String mBeaconLayout;
    protected Integer mDBmCorrection;
    protected Boolean mExtraFrame;
    protected String mIdentifier;
    protected Integer mLayoutSize;
    private Long mMatchingBeaconTypeCode;
    protected Integer mMatchingBeaconTypeCodeEndOffset;
    protected Integer mMatchingBeaconTypeCodeStartOffset;
    protected Integer mPowerEndOffset;
    protected Integer mPowerStartOffset;
    protected Long mServiceUuid;
    protected Integer mServiceUuidEndOffset;
    protected Integer mServiceUuidStartOffset;
    private static final Pattern I_PATTERN = Pattern.compile("i\\:(\\d+)\\-(\\d+)([blv]*)?");
    private static final Pattern M_PATTERN = Pattern.compile("m\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)");
    private static final Pattern S_PATTERN = Pattern.compile("s\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)");
    private static final Pattern D_PATTERN = Pattern.compile("d\\:(\\d+)\\-(\\d+)([bl]*)?");
    private static final Pattern P_PATTERN = Pattern.compile("p\\:(\\d+)\\-(\\d+)\\:?([\\-\\d]+)?");
    private static final Pattern X_PATTERN = Pattern.compile("x");
    private static final char[] HEX_ARRAY = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    protected final List<Integer> mIdentifierStartOffsets = new ArrayList();
    protected final List<Integer> mIdentifierEndOffsets = new ArrayList();
    protected final List<Boolean> mIdentifierLittleEndianFlags = new ArrayList();
    protected final List<Integer> mDataStartOffsets = new ArrayList();
    protected final List<Integer> mDataEndOffsets = new ArrayList();
    protected final List<Boolean> mDataLittleEndianFlags = new ArrayList();
    protected final List<Boolean> mIdentifierVariableLengthFlags = new ArrayList();
    protected Boolean mAllowPduOverflow = true;
    protected int[] mHardwareAssistManufacturers = {76};
    protected List<BeaconParser> extraParsers = new ArrayList();

    public BeaconParser() {
    }

    public BeaconParser(String str) {
        this.mIdentifier = str;
    }

    public BeaconParser setBeaconLayout(String str) {
        this.mBeaconLayout = str;
        Log.d(TAG, "Parsing beacon layout: " + str);
        String[] split = str.split(",");
        boolean z = false;
        this.mExtraFrame = false;
        int length = split.length;
        int i = 0;
        while (i < length) {
            String str2 = split[i];
            Matcher matcher = I_PATTERN.matcher(str2);
            boolean z2 = z;
            while (matcher.find()) {
                try {
                    int parseInt = Integer.parseInt(matcher.group(1));
                    int parseInt2 = Integer.parseInt(matcher.group(2));
                    this.mIdentifierLittleEndianFlags.add(Boolean.valueOf(matcher.group(3).contains(LITTLE_ENDIAN_SUFFIX)));
                    this.mIdentifierVariableLengthFlags.add(Boolean.valueOf(matcher.group(3).contains(VARIABLE_LENGTH_SUFFIX)));
                    this.mIdentifierStartOffsets.add(Integer.valueOf(parseInt));
                    this.mIdentifierEndOffsets.add(Integer.valueOf(parseInt2));
                    z2 = true;
                } catch (NumberFormatException unused) {
                    throw new BeaconLayoutException("Cannot parse integer byte offset in term: " + str2);
                }
            }
            Matcher matcher2 = D_PATTERN.matcher(str2);
            while (matcher2.find()) {
                try {
                    int parseInt3 = Integer.parseInt(matcher2.group(1));
                    int parseInt4 = Integer.parseInt(matcher2.group(2));
                    this.mDataLittleEndianFlags.add(Boolean.valueOf(matcher2.group(3).contains(LITTLE_ENDIAN_SUFFIX)));
                    this.mDataStartOffsets.add(Integer.valueOf(parseInt3));
                    this.mDataEndOffsets.add(Integer.valueOf(parseInt4));
                    z2 = true;
                } catch (NumberFormatException unused2) {
                    throw new BeaconLayoutException("Cannot parse integer byte offset in term: " + str2);
                }
            }
            Matcher matcher3 = P_PATTERN.matcher(str2);
            while (matcher3.find()) {
                try {
                    int parseInt5 = Integer.parseInt(matcher3.group(1));
                    int parseInt6 = Integer.parseInt(matcher3.group(2));
                    this.mDBmCorrection = Integer.valueOf(matcher3.group(3) != null ? Integer.parseInt(matcher3.group(3)) : 0);
                    this.mPowerStartOffset = Integer.valueOf(parseInt5);
                    this.mPowerEndOffset = Integer.valueOf(parseInt6);
                    z2 = true;
                } catch (NumberFormatException unused3) {
                    throw new BeaconLayoutException("Cannot parse integer power byte offset in term: " + str2);
                }
            }
            Matcher matcher4 = M_PATTERN.matcher(str2);
            while (matcher4.find()) {
                try {
                    int parseInt7 = Integer.parseInt(matcher4.group(1));
                    int parseInt8 = Integer.parseInt(matcher4.group(2));
                    this.mMatchingBeaconTypeCodeStartOffset = Integer.valueOf(parseInt7);
                    this.mMatchingBeaconTypeCodeEndOffset = Integer.valueOf(parseInt8);
                    String group = matcher4.group(3);
                    try {
                        this.mMatchingBeaconTypeCode = Long.decode("0x" + group);
                        z2 = true;
                    } catch (NumberFormatException unused4) {
                        throw new BeaconLayoutException("Cannot parse beacon type code: " + group + " in term: " + str2);
                    }
                } catch (NumberFormatException unused5) {
                    throw new BeaconLayoutException("Cannot parse integer byte offset in term: " + str2);
                }
            }
            Matcher matcher5 = S_PATTERN.matcher(str2);
            while (matcher5.find()) {
                try {
                    int parseInt9 = Integer.parseInt(matcher5.group(1));
                    int parseInt10 = Integer.parseInt(matcher5.group(2));
                    this.mServiceUuidStartOffset = Integer.valueOf(parseInt9);
                    this.mServiceUuidEndOffset = Integer.valueOf(parseInt10);
                    String group2 = matcher5.group(3);
                    try {
                        this.mServiceUuid = Long.decode("0x" + group2);
                        z2 = true;
                    } catch (NumberFormatException unused6) {
                        throw new BeaconLayoutException("Cannot parse serviceUuid: " + group2 + " in term: " + str2);
                    }
                } catch (NumberFormatException unused7) {
                    throw new BeaconLayoutException("Cannot parse integer byte offset in term: " + str2);
                }
            }
            Matcher matcher6 = X_PATTERN.matcher(str2);
            while (matcher6.find()) {
                this.mExtraFrame = true;
                z2 = true;
            }
            if (!z2) {
                LogManager.d(TAG, "cannot parse term %s", str2);
                throw new BeaconLayoutException("Cannot parse beacon layout term: " + str2);
            }
            i++;
            z = false;
        }
        if (!this.mExtraFrame.booleanValue()) {
            if (this.mIdentifierStartOffsets.size() == 0 || this.mIdentifierEndOffsets.size() == 0) {
                throw new BeaconLayoutException("You must supply at least one identifier offset with a prefix of 'i'");
            }
            if (this.mPowerStartOffset == null || this.mPowerEndOffset == null) {
                throw new BeaconLayoutException("You must supply a power byte offset with a prefix of 'p'");
            }
        }
        if (this.mMatchingBeaconTypeCodeStartOffset == null || this.mMatchingBeaconTypeCodeEndOffset == null) {
            throw new BeaconLayoutException("You must supply a matching beacon type expression with a prefix of 'm'");
        }
        this.mLayoutSize = Integer.valueOf(calculateLayoutSize());
        return this;
    }

    public boolean addExtraDataParser(BeaconParser beaconParser) {
        return beaconParser != null && beaconParser.mExtraFrame.booleanValue() && this.extraParsers.add(beaconParser);
    }

    public List<BeaconParser> getExtraDataParsers() {
        return new ArrayList(this.extraParsers);
    }

    public String getIdentifier() {
        return this.mIdentifier;
    }

    public int[] getHardwareAssistManufacturers() {
        return this.mHardwareAssistManufacturers;
    }

    public void setHardwareAssistManufacturerCodes(int[] iArr) {
        this.mHardwareAssistManufacturers = iArr;
    }

    public void setAllowPduOverflow(Boolean bool) {
        this.mAllowPduOverflow = bool;
    }

    public Long getMatchingBeaconTypeCode() {
        return this.mMatchingBeaconTypeCode;
    }

    public int getMatchingBeaconTypeCodeStartOffset() {
        return this.mMatchingBeaconTypeCodeStartOffset.intValue();
    }

    public int getMatchingBeaconTypeCodeEndOffset() {
        return this.mMatchingBeaconTypeCodeEndOffset.intValue();
    }

    public Long getServiceUuid() {
        return this.mServiceUuid;
    }

    public int getMServiceUuidStartOffset() {
        return this.mServiceUuidStartOffset.intValue();
    }

    public int getServiceUuidEndOffset() {
        return this.mServiceUuidEndOffset.intValue();
    }

    public Beacon fromScanData(byte[] bArr, int i, BluetoothDevice bluetoothDevice) {
        return fromScanData(bArr, i, bluetoothDevice, new Beacon());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:112:0x03a5 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.altbeacon.beacon.Beacon fromScanData(byte[] r17, int r18, android.bluetooth.BluetoothDevice r19, org.altbeacon.beacon.Beacon r20) {
        /*
            Method dump skipped, instructions count: 1040
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.BeaconParser.fromScanData(byte[], int, android.bluetooth.BluetoothDevice, org.altbeacon.beacon.Beacon):org.altbeacon.beacon.Beacon");
    }

    public byte[] getBeaconAdvertisementData(Beacon beacon) {
        if (beacon.getIdentifiers().size() != getIdentifierCount()) {
            throw new IllegalArgumentException("Beacon has " + beacon.getIdentifiers().size() + " identifiers but format requires " + getIdentifierCount());
        }
        Integer num = this.mMatchingBeaconTypeCodeEndOffset;
        int intValue = (num == null || num.intValue() <= -1) ? -1 : this.mMatchingBeaconTypeCodeEndOffset.intValue();
        Integer num2 = this.mPowerEndOffset;
        if (num2 != null && num2.intValue() > intValue) {
            intValue = this.mPowerEndOffset.intValue();
        }
        for (int i = 0; i < this.mIdentifierEndOffsets.size(); i++) {
            if (this.mIdentifierEndOffsets.get(i) != null && this.mIdentifierEndOffsets.get(i).intValue() > intValue) {
                intValue = this.mIdentifierEndOffsets.get(i).intValue();
            }
        }
        for (int i2 = 0; i2 < this.mDataEndOffsets.size(); i2++) {
            if (this.mDataEndOffsets.get(i2) != null && this.mDataEndOffsets.get(i2).intValue() > intValue) {
                intValue = this.mDataEndOffsets.get(i2).intValue();
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.mIdentifierStartOffsets.size(); i4++) {
            if (this.mIdentifierVariableLengthFlags.get(i4).booleanValue()) {
                i3 = (i3 + beacon.getIdentifier(i4).getByteCount()) - ((this.mIdentifierEndOffsets.get(i4).intValue() - this.mIdentifierStartOffsets.get(i4).intValue()) + 1);
            }
        }
        byte[] bArr = new byte[(intValue + i3) - 1];
        getMatchingBeaconTypeCode().longValue();
        for (int intValue2 = this.mMatchingBeaconTypeCodeStartOffset.intValue(); intValue2 <= this.mMatchingBeaconTypeCodeEndOffset.intValue(); intValue2++) {
            bArr[intValue2 - 2] = (byte) ((getMatchingBeaconTypeCode().longValue() >> ((this.mMatchingBeaconTypeCodeEndOffset.intValue() - intValue2) * 8)) & 255);
        }
        for (int i5 = 0; i5 < this.mIdentifierStartOffsets.size(); i5++) {
            byte[] byteArrayOfSpecifiedEndianness = beacon.getIdentifier(i5).toByteArrayOfSpecifiedEndianness(!this.mIdentifierLittleEndianFlags.get(i5).booleanValue());
            if (byteArrayOfSpecifiedEndianness.length < getIdentifierByteCount(i5)) {
                if (!this.mIdentifierVariableLengthFlags.get(i5).booleanValue()) {
                    if (this.mIdentifierLittleEndianFlags.get(i5).booleanValue()) {
                        byteArrayOfSpecifiedEndianness = Arrays.copyOf(byteArrayOfSpecifiedEndianness, getIdentifierByteCount(i5));
                    } else {
                        byte[] bArr2 = new byte[getIdentifierByteCount(i5)];
                        System.arraycopy(byteArrayOfSpecifiedEndianness, 0, bArr2, getIdentifierByteCount(i5) - byteArrayOfSpecifiedEndianness.length, byteArrayOfSpecifiedEndianness.length);
                        byteArrayOfSpecifiedEndianness = bArr2;
                    }
                }
                LogManager.d(TAG, "Expanded identifier because it is too short.  It is now: " + byteArrayToString(byteArrayOfSpecifiedEndianness), new Object[0]);
            } else if (byteArrayOfSpecifiedEndianness.length > getIdentifierByteCount(i5)) {
                if (this.mIdentifierLittleEndianFlags.get(i5).booleanValue()) {
                    byteArrayOfSpecifiedEndianness = Arrays.copyOfRange(byteArrayOfSpecifiedEndianness, getIdentifierByteCount(i5) - byteArrayOfSpecifiedEndianness.length, getIdentifierByteCount(i5));
                } else {
                    byteArrayOfSpecifiedEndianness = Arrays.copyOf(byteArrayOfSpecifiedEndianness, getIdentifierByteCount(i5));
                }
                LogManager.d(TAG, "Truncated identifier because it is too long.  It is now: " + byteArrayToString(byteArrayOfSpecifiedEndianness), new Object[0]);
            } else {
                LogManager.d(TAG, "Identifier size is just right: " + byteArrayToString(byteArrayOfSpecifiedEndianness), new Object[0]);
            }
            for (int intValue3 = this.mIdentifierStartOffsets.get(i5).intValue(); intValue3 <= (this.mIdentifierStartOffsets.get(i5).intValue() + byteArrayOfSpecifiedEndianness.length) - 1; intValue3++) {
                bArr[intValue3 - 2] = byteArrayOfSpecifiedEndianness[intValue3 - this.mIdentifierStartOffsets.get(i5).intValue()];
            }
        }
        Integer num3 = this.mPowerStartOffset;
        if (num3 != null && this.mPowerEndOffset != null) {
            for (int intValue4 = num3.intValue(); intValue4 <= this.mPowerEndOffset.intValue(); intValue4++) {
                bArr[intValue4 - 2] = (byte) ((beacon.getTxPower() >> ((intValue4 - this.mPowerStartOffset.intValue()) * 8)) & 255);
            }
        }
        for (int i6 = 0; i6 < this.mDataStartOffsets.size(); i6++) {
            long longValue = beacon.getDataFields().get(i6).longValue();
            int intValue5 = this.mDataEndOffsets.get(i6).intValue() - this.mDataStartOffsets.get(i6).intValue();
            for (int i7 = 0; i7 <= intValue5; i7++) {
                bArr[(this.mDataStartOffsets.get(i6).intValue() - 2) + (!this.mDataLittleEndianFlags.get(i6).booleanValue() ? intValue5 - i7 : i7)] = (byte) ((longValue >> (i7 * 8)) & 255);
            }
        }
        return bArr;
    }

    public BeaconParser setMatchingBeaconTypeCode(Long l) {
        this.mMatchingBeaconTypeCode = l;
        return this;
    }

    public int getIdentifierByteCount(int i) {
        return (this.mIdentifierEndOffsets.get(i).intValue() - this.mIdentifierStartOffsets.get(i).intValue()) + 1;
    }

    public int getIdentifierCount() {
        return this.mIdentifierStartOffsets.size();
    }

    public int getDataFieldCount() {
        return this.mDataStartOffsets.size();
    }

    public String getLayout() {
        return this.mBeaconLayout;
    }

    public int getPowerCorrection() {
        return this.mDBmCorrection.intValue();
    }

    protected static String bytesToHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = HEX_ARRAY;
            cArr[i2] = cArr2[(b2 & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    /* loaded from: classes5.dex */
    public static class BeaconLayoutException extends RuntimeException {
        public BeaconLayoutException(String str) {
            super(str);
        }
    }

    public static byte[] longToByteArray(long j, int i) {
        return longToByteArray(j, i, true);
    }

    public static byte[] longToByteArray(long j, int i, boolean z) {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = ((i - (z ? i2 : (i - i2) - 1)) - 1) * 8;
            bArr[i2] = (byte) ((j & (255 << i3)) >> i3);
        }
        return bArr;
    }

    private int calculateLayoutSize() {
        List<Integer> list = this.mIdentifierEndOffsets;
        int i = 0;
        if (list != null) {
            for (Integer num : list) {
                int intValue = num.intValue();
                if (intValue > i) {
                    i = intValue;
                }
            }
        }
        List<Integer> list2 = this.mDataEndOffsets;
        if (list2 != null) {
            for (Integer num2 : list2) {
                int intValue2 = num2.intValue();
                if (intValue2 > i) {
                    i = intValue2;
                }
            }
        }
        Integer num3 = this.mPowerEndOffset;
        if (num3 != null && num3.intValue() > i) {
            i = this.mPowerEndOffset.intValue();
        }
        Integer num4 = this.mServiceUuidEndOffset;
        if (num4 != null && num4.intValue() > i) {
            i = this.mServiceUuidEndOffset.intValue();
        }
        return i + 1;
    }

    private boolean byteArraysMatch(byte[] bArr, int i, byte[] bArr2) {
        int length = bArr2.length;
        if (bArr.length - i < length) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (bArr[i + i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private String byteArrayToString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b2)));
            sb.append(" ");
        }
        return sb.toString().trim();
    }

    private String byteArrayToFormattedString(byte[] bArr, int i, int i2, boolean z) {
        int i3 = i2 - i;
        int i4 = i3 + 1;
        byte[] bArr2 = new byte[i4];
        if (z) {
            for (int i5 = 0; i5 <= i3; i5++) {
                bArr2[i5] = bArr[((i + i4) - 1) - i5];
            }
        } else {
            for (int i6 = 0; i6 <= i3; i6++) {
                bArr2[i6] = bArr[i + i6];
            }
        }
        if (i4 < 5) {
            long j = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                j += (bArr2[(i4 - i7) - 1] & 255) * ((long) Math.pow(256.0d, i7 * 1.0d));
            }
            return Long.toString(j);
        }
        String bytesToHex = bytesToHex(bArr2);
        if (i4 == 16) {
            return bytesToHex.substring(0, 8) + "-" + bytesToHex.substring(8, 12) + "-" + bytesToHex.substring(12, 16) + "-" + bytesToHex.substring(16, 20) + "-" + bytesToHex.substring(20, 32);
        }
        return "0x" + bytesToHex;
    }

    private byte[] ensureMaxSize(byte[] bArr, int i) {
        return bArr.length >= i ? bArr : Arrays.copyOf(bArr, i);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mMatchingBeaconTypeCode, this.mIdentifierStartOffsets, this.mIdentifierEndOffsets, this.mIdentifierLittleEndianFlags, this.mDataStartOffsets, this.mDataEndOffsets, this.mDataLittleEndianFlags, this.mIdentifierVariableLengthFlags, this.mMatchingBeaconTypeCodeStartOffset, this.mMatchingBeaconTypeCodeEndOffset, this.mServiceUuidStartOffset, this.mServiceUuidEndOffset, this.mServiceUuid, this.mExtraFrame, this.mPowerStartOffset, this.mPowerEndOffset, this.mDBmCorrection, this.mLayoutSize, this.mAllowPduOverflow, this.mIdentifier, this.mHardwareAssistManufacturers, this.extraParsers});
    }

    public boolean equals(Object obj) {
        String str;
        try {
            BeaconParser beaconParser = (BeaconParser) obj;
            String str2 = beaconParser.mBeaconLayout;
            if (str2 == null || !str2.equals(this.mBeaconLayout) || (str = beaconParser.mIdentifier) == null) {
                return false;
            }
            return str.equals(this.mIdentifier);
        } catch (ClassCastException unused) {
            return false;
        }
    }
}
