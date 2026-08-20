package com.appsgeyser.sdk.deviceidparser;

import android.content.Context;
import android.os.AsyncTask;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes2.dex */
public class DeviceIdParser {
    private static DeviceIdParser instance;
    private final DeviceIdParameters deviceIdParameters = new DeviceIdParameters();

    public DeviceIdParameters getDeviceIdParameters() {
        return this.deviceIdParameters;
    }

    public static DeviceIdParser getInstance() {
        if (instance == null) {
            instance = new DeviceIdParser();
        }
        return instance;
    }

    private DeviceIdParser() {
    }

    public boolean isEmpty() {
        return this.deviceIdParameters.isEmpty();
    }

    public void rescan(Context context, IDeviceIdParserListener iDeviceIdParserListener) {
        new ParserThread(context, iDeviceIdParserListener).execute(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdvertisingIdClient.Info getAdvertisingIdInfo(Context context) {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (GooglePlayServicesNotAvailableException e2) {
            e2.printStackTrace();
            return null;
        } catch (GooglePlayServicesRepairableException e3) {
            e3.printStackTrace();
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAndroidId(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class ParserThread extends AsyncTask<Context, Void, DeviceIdParameters> {
        private final Context context;
        private final IDeviceIdParserListener listener;

        ParserThread(Context context, IDeviceIdParserListener iDeviceIdParserListener) {
            this.listener = iDeviceIdParserListener;
            this.context = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public DeviceIdParameters doInBackground(Context... contextArr) {
            DeviceIdParser.this.deviceIdParameters.clear();
            AdvertisingIdClient.Info advertisingIdInfo = DeviceIdParser.this.getAdvertisingIdInfo(contextArr[0]);
            if (advertisingIdInfo != null) {
                DeviceIdParser.this.deviceIdParameters.setLimitAdTrackingEnabled(advertisingIdInfo.isLimitAdTrackingEnabled() ? LimitAdTrackingEnabledStates.TRUE : LimitAdTrackingEnabledStates.FALSE);
                DeviceIdParser.this.deviceIdParameters.setAdvId(advertisingIdInfo.getId());
            } else {
                DeviceIdParser.this.deviceIdParameters.setLimitAdTrackingEnabled(LimitAdTrackingEnabledStates.UNKNOWN);
                DeviceIdParser.this.deviceIdParameters.setAdvId(null);
                DeviceIdParser.this.deviceIdParameters.setaId(DeviceIdParser.this.getAndroidId(contextArr[0]));
            }
            return DeviceIdParser.this.generateParametersCopy();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(DeviceIdParameters deviceIdParameters) {
            IDeviceIdParserListener iDeviceIdParserListener = this.listener;
            if (iDeviceIdParserListener != null) {
                iDeviceIdParserListener.onDeviceIdParametersObtained(this.context, deviceIdParameters);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DeviceIdParameters generateParametersCopy() {
        try {
            return (DeviceIdParameters) this.deviceIdParameters.clone();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
