package org.altbeacon.beacon.utils;

import android.util.Base64;
import android.util.Log;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconParser;
/* loaded from: classes5.dex */
public class EddystoneTelemetryAccessor {
    private static final String TAG = "EddystoneTLMAccessor";

    public byte[] getTelemetryBytes(Beacon beacon) {
        if (beacon.getExtraDataFields().size() >= 5) {
            byte[] beaconAdvertisementData = new BeaconParser().setBeaconLayout(BeaconParser.EDDYSTONE_TLM_LAYOUT).getBeaconAdvertisementData(new Beacon.Builder().setDataFields(beacon.getExtraDataFields()).build());
            Log.d(TAG, "Rehydrated telemetry bytes are :" + byteArrayToString(beaconAdvertisementData));
            return beaconAdvertisementData;
        }
        return null;
    }

    public String getBase64EncodedTelemetry(Beacon beacon) {
        byte[] telemetryBytes = getTelemetryBytes(beacon);
        if (telemetryBytes != null) {
            String encodeToString = Base64.encodeToString(telemetryBytes, 0);
            Log.d(TAG, "Base64 telemetry bytes are :" + encodeToString);
            return encodeToString;
        }
        return null;
    }

    private String byteArrayToString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b2)));
            sb.append(" ");
        }
        return sb.toString().trim();
    }
}
