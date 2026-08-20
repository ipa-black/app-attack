package org.altbeacon.beacon;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.AdvertiseCallback;
import android.bluetooth.le.AdvertiseData;
import android.bluetooth.le.AdvertiseSettings;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.content.Context;
import android.os.ParcelUuid;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class BeaconTransmitter {
    public static final int NOT_SUPPORTED_BLE = 2;
    public static final int NOT_SUPPORTED_CANNOT_GET_ADVERTISER = 4;
    public static final int NOT_SUPPORTED_CANNOT_GET_ADVERTISER_MULTIPLE_ADVERTISEMENTS = 5;
    public static final int NOT_SUPPORTED_MIN_SDK = 1;
    @Deprecated
    public static final int NOT_SUPPORTED_MULTIPLE_ADVERTISEMENTS = 3;
    public static final int SUPPORTED = 0;
    private static final String TAG = "BeaconTransmitter";
    private AdvertiseCallback mAdvertiseCallback;
    private int mAdvertiseMode = 0;
    private int mAdvertiseTxPowerLevel = 3;
    private AdvertiseCallback mAdvertisingClientCallback;
    private Beacon mBeacon;
    private BeaconParser mBeaconParser;
    private BluetoothAdapter mBluetoothAdapter;
    private BluetoothLeAdvertiser mBluetoothLeAdvertiser;
    private boolean mStarted;

    public BeaconTransmitter(Context context, BeaconParser beaconParser) {
        this.mBeaconParser = beaconParser;
        BluetoothManager bluetoothManager = (BluetoothManager) context.getSystemService("bluetooth");
        if (bluetoothManager == null) {
            LogManager.e(TAG, "Failed to get BluetoothManager", new Object[0]);
            return;
        }
        BluetoothAdapter adapter = bluetoothManager.getAdapter();
        this.mBluetoothAdapter = adapter;
        BluetoothLeAdvertiser bluetoothLeAdvertiser = adapter.getBluetoothLeAdvertiser();
        this.mBluetoothLeAdvertiser = bluetoothLeAdvertiser;
        LogManager.d(TAG, "new BeaconTransmitter constructed.  mbluetoothLeAdvertiser is %s", bluetoothLeAdvertiser);
    }

    public boolean isStarted() {
        return this.mStarted;
    }

    public void setBeacon(Beacon beacon) {
        this.mBeacon = beacon;
    }

    public void setBeaconParser(BeaconParser beaconParser) {
        this.mBeaconParser = beaconParser;
    }

    public int getAdvertiseMode() {
        return this.mAdvertiseMode;
    }

    public void setAdvertiseMode(int i) {
        this.mAdvertiseMode = i;
    }

    public int getAdvertiseTxPowerLevel() {
        return this.mAdvertiseTxPowerLevel;
    }

    public void setAdvertiseTxPowerLevel(int i) {
        this.mAdvertiseTxPowerLevel = i;
    }

    public void startAdvertising(Beacon beacon) {
        startAdvertising(beacon, null);
    }

    public void startAdvertising(Beacon beacon, AdvertiseCallback advertiseCallback) {
        this.mBeacon = beacon;
        this.mAdvertisingClientCallback = advertiseCallback;
        startAdvertising();
    }

    public void startAdvertising() {
        Beacon beacon = this.mBeacon;
        if (beacon == null) {
            throw new NullPointerException("Beacon cannot be null.  Set beacon before starting advertising");
        }
        int manufacturer = beacon.getManufacturer();
        int intValue = this.mBeaconParser.getServiceUuid() != null ? this.mBeaconParser.getServiceUuid().intValue() : -1;
        BeaconParser beaconParser = this.mBeaconParser;
        if (beaconParser == null) {
            throw new NullPointerException("You must supply a BeaconParser instance to BeaconTransmitter.");
        }
        byte[] beaconAdvertisementData = beaconParser.getBeaconAdvertisementData(this.mBeacon);
        String str = "";
        for (int i = 0; i < beaconAdvertisementData.length; i++) {
            str = (str + String.format("%02X", Byte.valueOf(beaconAdvertisementData[i]))) + " ";
        }
        LogManager.d(TAG, "Starting advertising with ID1: %s ID2: %s ID3: %s and data: %s of size %s", this.mBeacon.getId1(), this.mBeacon.getIdentifiers().size() > 1 ? this.mBeacon.getId2() : "", this.mBeacon.getIdentifiers().size() > 2 ? this.mBeacon.getId3() : "", str, Integer.valueOf(beaconAdvertisementData.length));
        try {
            AdvertiseData.Builder builder = new AdvertiseData.Builder();
            if (intValue > 0) {
                ParcelUuid parseUuidFrom = parseUuidFrom(new byte[]{(byte) (intValue & 255), (byte) ((intValue >> 8) & 255)});
                builder.addServiceData(parseUuidFrom, beaconAdvertisementData);
                builder.addServiceUuid(parseUuidFrom);
                builder.setIncludeTxPowerLevel(false);
                builder.setIncludeDeviceName(false);
            } else {
                builder.addManufacturerData(manufacturer, beaconAdvertisementData);
            }
            AdvertiseSettings.Builder builder2 = new AdvertiseSettings.Builder();
            builder2.setAdvertiseMode(this.mAdvertiseMode);
            builder2.setTxPowerLevel(this.mAdvertiseTxPowerLevel);
            builder2.setConnectable(false);
            this.mBluetoothLeAdvertiser.startAdvertising(builder2.build(), builder.build(), getAdvertiseCallback());
            LogManager.d(TAG, "Started advertisement with callback: %s", getAdvertiseCallback());
        } catch (Exception e2) {
            LogManager.e(e2, TAG, "Cannot start advertising due to exception", new Object[0]);
        }
    }

    public void stopAdvertising() {
        if (!this.mStarted) {
            LogManager.d(TAG, "Skipping stop advertising -- not started", new Object[0]);
            return;
        }
        LogManager.d(TAG, "Stopping advertising with object %s", this.mBluetoothLeAdvertiser);
        this.mAdvertisingClientCallback = null;
        try {
            this.mBluetoothLeAdvertiser.stopAdvertising(getAdvertiseCallback());
        } catch (IllegalStateException unused) {
            LogManager.w(TAG, "Bluetooth is turned off. Transmitter stop call failed.", new Object[0]);
        }
        this.mStarted = false;
    }

    public static int checkTransmissionSupported(Context context) {
        if (context.getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            if (((BluetoothManager) context.getSystemService("bluetooth")).getAdapter().getBluetoothLeAdvertiser() == null) {
                if (!((BluetoothManager) context.getSystemService("bluetooth")).getAdapter().isMultipleAdvertisementSupported()) {
                    return 5;
                }
                return 4;
            }
            return 0;
        }
        return 2;
    }

    private AdvertiseCallback getAdvertiseCallback() {
        if (this.mAdvertiseCallback == null) {
            this.mAdvertiseCallback = new AdvertiseCallback() { // from class: org.altbeacon.beacon.BeaconTransmitter.1
                @Override // android.bluetooth.le.AdvertiseCallback
                public void onStartFailure(int i) {
                    LogManager.e(BeaconTransmitter.TAG, "Advertisement start failed, code: %s", Integer.valueOf(i));
                    if (BeaconTransmitter.this.mAdvertisingClientCallback != null) {
                        BeaconTransmitter.this.mAdvertisingClientCallback.onStartFailure(i);
                    }
                }

                @Override // android.bluetooth.le.AdvertiseCallback
                public void onStartSuccess(AdvertiseSettings advertiseSettings) {
                    LogManager.i(BeaconTransmitter.TAG, "Advertisement start succeeded.", new Object[0]);
                    BeaconTransmitter.this.mStarted = true;
                    if (BeaconTransmitter.this.mAdvertisingClientCallback != null) {
                        BeaconTransmitter.this.mAdvertisingClientCallback.onStartSuccess(advertiseSettings);
                    }
                }
            };
        }
        return this.mAdvertiseCallback;
    }

    private static ParcelUuid parseUuidFrom(byte[] bArr) {
        long j;
        ParcelUuid fromString = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");
        if (bArr == null) {
            throw new IllegalArgumentException("uuidBytes cannot be null");
        }
        int length = bArr.length;
        if (length == 2 || length == 4 || length == 16) {
            if (length == 16) {
                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                return new ParcelUuid(new UUID(order.getLong(8), order.getLong(0)));
            }
            if (length == 2) {
                j = (bArr[0] & 255) + ((bArr[1] & 255) << 8);
            } else {
                j = ((bArr[3] & 255) << 24) + (bArr[0] & 255) + ((bArr[1] & 255) << 8) + ((bArr[2] & 255) << 16);
            }
            return new ParcelUuid(new UUID(fromString.getUuid().getMostSignificantBits() + (j << 32), fromString.getUuid().getLeastSignificantBits()));
        }
        throw new IllegalArgumentException("uuidBytes length invalid - " + length);
    }
}
