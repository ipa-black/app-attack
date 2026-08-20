package com.appsgeyser.multiTabApp.deviceidparser;

import android.app.Activity;
import android.os.AsyncTask;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes2.dex */
public class DeviceIdParser {
    private static DeviceIdParser instance;
    private DeviceIdParameters _deviceIdParameters = new DeviceIdParameters();

    public static DeviceIdParser getInstance() {
        if (instance == null) {
            instance = new DeviceIdParser();
        }
        return instance;
    }

    private DeviceIdParser() {
    }

    public boolean isEmty() {
        return this._deviceIdParameters.isEmpty();
    }

    public void rescan(Activity activity, IDeviceIdParserListener iDeviceIdParserListener) {
        new ParserThread(iDeviceIdParserListener).execute(activity);
    }

    public String getDeviceId(Activity activity) {
        try {
            if (activity.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0) {
                return ((TelephonyManager) activity.getSystemService("phone")).getDeviceId();
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdvertisingIdClient.Info getAdvertisingIdInfo(Activity activity) {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(activity);
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

    public String getAndroidId(Activity activity) {
        try {
            return Settings.Secure.getString(activity.getContentResolver(), "android_id");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* loaded from: classes2.dex */
    private class ParserThread extends AsyncTask<Activity, Void, DeviceIdParameters> {
        private IDeviceIdParserListener _listener;

        public ParserThread(IDeviceIdParserListener iDeviceIdParserListener) {
            this._listener = iDeviceIdParserListener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public DeviceIdParameters doInBackground(Activity... activityArr) {
            DeviceIdParser.this._deviceIdParameters.clear();
            AdvertisingIdClient.Info advertisingIdInfo = DeviceIdParser.this.getAdvertisingIdInfo(activityArr[0]);
            if (advertisingIdInfo != null) {
                DeviceIdParser.this._deviceIdParameters.setLimitAdTrackingEnabled(advertisingIdInfo.isLimitAdTrackingEnabled() ? LimitAdTrackingEnabledStates.TRUE : LimitAdTrackingEnabledStates.FALSE);
                DeviceIdParser.this._deviceIdParameters.setAdvid(advertisingIdInfo.getId());
            } else {
                DeviceIdParser.this._deviceIdParameters.setLimitAdTrackingEnabled(LimitAdTrackingEnabledStates.UNKNOWN);
                DeviceIdParser.this._deviceIdParameters.setAdvid(null);
                DeviceIdParser.this._deviceIdParameters.setAid(DeviceIdParser.this.getAndroidId(activityArr[0]));
            }
            return DeviceIdParser.this._deviceIdParameters;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(DeviceIdParameters deviceIdParameters) {
            _notifyListener(deviceIdParameters);
        }

        private void _notifyListener(DeviceIdParameters deviceIdParameters) {
            IDeviceIdParserListener iDeviceIdParserListener = this._listener;
            if (iDeviceIdParserListener != null) {
                iDeviceIdParserListener.onDeviceIdParametersObtained(deviceIdParameters);
            }
        }
    }
}
